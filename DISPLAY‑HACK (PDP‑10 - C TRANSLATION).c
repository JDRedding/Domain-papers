/*
    DISPLAY‑HACK (PDP‑10 - C TRANSLATION)

    This program reproduces the behavior of a classic PDP‑10 MACRO display hack.
    The original code used AC1 as a 36‑bit accumulator whose low 9 bits drove the
    Y output of a vector display and the next 9 bits drove the X output. Each loop
    applied a nonlinear bit‑masking instruction (TLEA/TLC variants) and then
    rotated the accumulator left by 9 bits (ROT 1,9). The continuous evolution of
    these bitfields produced spirograph‑like attractors and audio tones when fed
    into a stereo amplifier.

    This C version simulates the same 36‑bit accumulator using a uint64_t masked
    to 36 bits. It implements a 36‑bit rotate‑left operation, applies a left‑half
    mask similar to the PDP‑10 TLEA instruction, and extracts X and Y fields from
    the accumulator each iteration. The (x,y) values can be plotted, sent to a
    DAC, or used for visualization.

    Key behaviors preserved:
      - 36‑bit accumulator (AC)
      - Left‑half masking (TLEA‑like)
      - ROT 1,9 bit rotation
      - X = bits 9–17, Y = bits 0–8
      - Infinite feedback loop producing evolving attractor patterns

    To adapt this for graphics:
      - Replace the printf(x,y) with drawing calls (SDL/OpenGL/etc.)
      - Adjust initial AC seed values to explore different attractors
*/

#include <stdint.h>
#include <stdio.h>

#define MASK36  ((uint64_t)0xFFFFFFFFF)   /* 36-bit mask */
#define YMASK   ((uint64_t)0x1FF)         /* low 9 bits */
#define XMASK   ((uint64_t)0x1FF)         /* next 9 bits */

/* rotate left on 36-bit word */
static uint64_t rotl36(uint64_t v, int r) {
    r %= 36;
    return ((v << r) | (v >> (36 - r))) & MASK36;
}

int main(void) {
    /* good initial contents of AC1: 377767,,377767 (octal) */
    uint64_t ac = 0;

    /* left half = 18 bits, right half = 18 bits */
    uint64_t left  = 0777767ULL;  /* example seed, adjust as desired */
    uint64_t right = 0777767ULL;

    ac = ((left & 0777777ULL) << 18) | (right & 0777777ULL);

    for (;;) {
        /* --- TLEA-like mask on left half (simplified) --- */
        uint64_t lh = (ac >> 18) & 0777777ULL;
        uint64_t rh = ac & 0777777ULL;

        /* example: AND left half with constant (like TLEA 1,1(1)) */
        lh &= 0777767ULL;

        ac = ((lh & 0777777ULL) << 18) | (rh & 0777777ULL);

        /* --- ROT 1,9 --- */
        ac = rotl36(ac, 9);

        /* --- extract Y (low 9 bits) and X (next 9 bits) --- */
        uint64_t y = ac & YMASK;
        uint64_t x = (ac >> 9) & XMASK;

        /* here you’d send x,y to a display or DAC; for now, just print */
        printf("%3llu %3llu\n", (unsigned long long)x, (unsigned long long)y);
    }

    return 0;
}
