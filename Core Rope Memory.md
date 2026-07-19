# Core Rope Memory — RDG / SID–PED Model

## Legend

```
O   = ferrite core (S_core)
|   = sense wire segment (I_thread)
*   = wire passes THROUGH core   -> bit = 1
)   = wire BYPASSES core         -> bit = 0
=== SELECT LINE ===              -> activates row (I_select)
>>> induced voltage              -> D_induce -> D_read
```

---

## 1. RDG Objects and Roles

**Structure (S)**
- `S_core` — ferrite core (torus)
- `S_word` — fixed memory word (bundle of bits)
- `S_plane` — physical plane/module of cores
- `S_harness` — woven wire harness (global topology)

**Interaction (I)**
- `I_thread(sense)` — sense wire passing through/around cores
- `I_select` — select line pulsing a group of cores
- `I_inhibit` — inhibit line suppressing coupling
- `I_couple` — magnetic coupling between core and sense wire

**Dynamics (D)**
- `D_pulse` — current pulse on select line
- `D_flip` — core magnetization change
- `D_induce` — induced voltage on sense wire
- `D_read` — bit read event (sample induced voltage)

---

## 2. Physical Grid (S_plane)

```
          BIT0   BIT1   BIT2   BIT3
        +------+------+------+------+
WORD0   | O*   | O)   | O*   | O)   |
        +------+------+------+------+
WORD1   | O)   | O*   | O)   | O*   |
        +------+------+------+------+
WORD2   | O*   | O*   | O)   | O)   |
        +------+------+------+------+
WORD3   | O)   | O)   | O*   | O*   |
        +------+------+------+------+
```
`O*` = sense wire passes THROUGH core → magnetic coupling → bit = 1
`O)` = sense wire bypasses core → no coupling → bit = 0

---

## 3. Select / Inhibit Lines (I_select / I_inhibit)

```
Address decode:

      A0 A1 A2 A3
       |  |  |  |
       v  v  v  v
   +------------------+
   |  SELECT MATRIX   |
   +------------------+
       |  |  |  |
       |  |  |  +---- activates WORD3 row
       |  |  +------- activates WORD2 row
       |  +---------- activates WORD1 row
       +------------- activates WORD0 row
```

---

## 4. Readout Path (D_pulse → D_flip → D_induce → D_read)

```
When WORD2 is selected:

   SELECT LINE pulses row 2
           |
           v
   +------------------+
   |  S_plane row 2   |
   +------------------+
      O*  O*  O)  O)
      |   |        |
      |   |        +------ no induced voltage (bit = 0)
      |   +--------------- induced voltage (bit = 1)
      +------------------- induced voltage (bit = 1)

Sense wire bundle:

   BIT0 ---->>> (voltage) → 1
   BIT1 ---->>> (voltage) → 1
   BIT2 ---->>> (none)    → 0
   BIT3 ---->>> (none)    → 0

Output word: [1 1 0 0]
```

---

## 5. Topological View (RDG-style)

```
Sense wire w_i path:

   w0:  core00 → core20 → ...
   w1:  core11 → core21 → ...
   w2:  core02 → core32 → ...
   w3:  core13 → core33 → ...

Coupling operator:

   bit_i(A) = 1  iff  SELECT(A) intersects path(w_i)
```

---

## 6. Full System Block (compressed)

```
                 +---------------------------+
Address -------> |  I_select / I_inhibit     |
                 +------------+--------------+
                              |
                              v
                 +---------------------------+
                 |       S_plane (cores)     |
                 |   woven harness topology  |
                 +------------+--------------+
                              |
                              v
                 +---------------------------+
                 |   D_induce / D_read       |
                 +------------+--------------+
                              |
                              v
                      Bit Vector Output
```

---

## 7. High-Level RDG Operator View

$$
\mathcal{R} : \text{Address} \rightarrow \text{BitVector}
$$

- **Address** is implemented by `I_select` + `I_inhibit` wiring.
- **BitVector** is implemented by the pattern of `I_thread(sense)` through `S_core`.

$\mathcal{R}$ is *entirely determined* by the topology of `S_harness`.

### Expanded block view

```
          +------------------- S_plane -------------------+
          |                                               |
          |   S_core(j,k)   = core at row j, column k     |
          |   I_thread(w_i) = sense wire for bit i        |
          |                                               |
          +-----------------------------------------------+

   Address lines (A)                 Sense outputs (Q)

        A0 A1 A2 ...                        Q0 Q1 Q2 ...
         |  |  |                             |  |  |
         v  v  v                             v  v  v
   +-----------------+                 +-----------------+
   |   I_select      |                 |   D_read        |
   +-----------------+                 +-----------------+
         |                                   ^
         | D_pulse                           |
         v                                   |
   +-----------------+                       |
   |   S_plane       |<-- I_thread(w_i) -----+
   |  (grid cores)   |
   +-----------------+
```

**Inside S_plane (zoom):**

```
          k=0      k=1      k=2      ...      k=N-1
        +-------+-------+-------+---------+---------+
 j=0    |core00 |core01 |core02 |  ...    |core0N-1 |
        +---+---+---+---+---+---+---------+---------+
            ^   ^   ^
            |   |   |
            |   |   +-- I_thread(w_2) passes THROUGH core02 => bit2 = 1
            |   +------ I_thread(w_1) bypasses core01       => bit1 = 0
            +---------- I_thread(w_0) passes THROUGH core00 => bit0 = 1

 j=1    |core10 |core11 |core12 |  ...    |core1N-1 |
        +-------+-------+-------+---------+---------+
            ^       ^
            |       |
            |       +-- I_thread(w_1) THROUGH core11 => bit1 = 1 for word1
            +---------- I_thread(w_0) bypasses core10 => bit0 = 0 for word1
```

---

## 8. SID View (Structure–Interaction–Dynamics)

### Structure layer

- `S_plane` — physical grid of ferrite cores
- `S_core(j,k)` — core at word-row j, bit-column k
- `S_harness` — global wire harness (all sense/select/inhibit wires)
- `S_word(j)` — conceptual word j (row j of cores + wires)

```
          BIT0    BIT1    BIT2    BIT3
        +-------+-------+-------+-------+
WORD0   |core00 |core01 |core02 |core03 |
        +-------+-------+-------+-------+
WORD1   |core10 |core11 |core12 |core13 |
        +-------+-------+-------+-------+
WORD2   |core20 |core21 |core22 |core23 |
        +-------+-------+-------+-------+
WORD3   |core30 |core31 |core32 |core33 |
        +-------+-------+-------+-------+
```

### Interaction layer

- `I_thread(w_i)` — path of sense wire w_i through/bypassing cores
- `I_select(A)` — mapping from address A to selected row(s) of cores
- `I_inhibit` — optional suppression of coupling for some cores
- `I_couple` — magnetic coupling relation, core ↔ sense wire

```
   w0:  ----*core00----)core10----*core20----)core30----
   w1:  ----)core01----*core11----*core21----)core31----
   w2:  ----*core02----)core12----)core22----*core32----
   w3:  ----)core03----*core13----)core23----*core33----

   * = THROUGH (coupling possible)
   ) = AROUND  (no coupling)
```

### Dynamics layer

- `D_pulse(A)` — current pulse on select line for address A
- `D_flip(j,k)` — magnetization change in `S_core(j,k)`
- `D_induce(w_i)` — induced voltage on sense wire w_i
- `D_read(w_i)` — sampling of voltage → bit value

```
   D_pulse(WORD2)
        |
        v
   [S_plane row 2]  cores: core20 core21 core22 core23
        |
        +-- D_flip(2,0), D_flip(2,1), D_flip(2,2), D_flip(2,3)
        |
        +-- D_induce(w0) if w0 THROUGH core20
        +-- D_induce(w1) if w1 THROUGH core21
        +-- D_induce(w2) if w2 THROUGH core22
        +-- D_induce(w3) if w3 THROUGH core23
        |
        v
   D_read(w0), D_read(w1), D_read(w2), D_read(w3)
        |
        v
   Bit vector output for WORD2
```

---

## 9. PED View (Program–Execution–Data)

### Program layer

Program is the *topology* of `I_thread(w_i)` — a static mapping:

$$
P : (A, i) \mapsto b_i \in \{0,1\}
$$

encoded physically as the set of cores each wire passes through:

$$
T(w_i) = \{(j,k) \mid w_i \text{ THROUGH } S\_core(j,k)\}
$$

Example:
```
T(w0) = { (0,0), (2,0) }
T(w1) = { (1,1), (2,1) }
T(w2) = { (0,2), (3,2) }
T(w3) = { (1,3), (3,3) }
```
This static set family `T(w_i)` is the hardwired program.

### Execution layer

Execution applies the fixed mapping $R : \text{Address } A \rightarrow \text{BitVector } b(A)$:

1. Decode A → select row j = f(A)
2. Pulse select line for row j (`D_pulse`)
3. Cores in row j flip/respond (`D_flip`)
4. Any `w_i` with `(j,k) ∈ T(w_i)` gets `D_induce(w_i)`
5. `D_read(w_i)` → `b_i(A) ∈ {0,1}`

Formally, with `C(A)` = set of cores activated by address A (usually row j):

$$
b_i(A) = 1 \iff C(A) \cap T(w_i) \neq \emptyset
$$

$R$ is fixed by $P$ (the weave); execution is just "run the hardware."

### Data layer

$$
b(A) = [b_0(A), b_1(A), \ldots, b_{N-1}(A)]
$$

Non-volatile: `b(A)` depends only on `P` and `A`, not on power history.

**Worked example** — A = WORD2 (row 2):

```
C(A) = { (2,0), (2,1), (2,2), (2,3) }

b_0(WORD2) = 1   (since (2,0) ∈ T(w0))
b_1(WORD2) = 1   (since (2,1) ∈ T(w1))
b_2(WORD2) = 0   (no (2,k) in T(w2))
b_3(WORD2) = 0   (no (2,k) in T(w3))

Data word: b(WORD2) = [1, 1, 0, 0]
```

---

## 10. SID ↔ PED Correspondence

| SID | ↔ | PED |
|---|---|---|
| Structure (`S_harness` + `S_plane` topology) | ↔ | Program — the weave *is* the program |
| Interaction (`I_select`, `I_thread`, `I_inhibit`) | ↔ | Execution — how $R$ is applied for each address A |
| Dynamics (`D_pulse`, `D_induce`, `D_read`) | ↔ | Data production — deterministically produces $b(A)$ |

For a given address A:
- $\mathcal{C}(A)$: set of cores activated by `I_select(A)`
- $\mathcal{T}(w_i)$: set of cores that sense wire $w_i$ passes through

$$
b_i(A) =
\begin{cases}
1 & \text{if } \mathcal{C}(A) \cap \mathcal{T}(w_i) \neq \emptyset \\
0 & \text{otherwise}
\end{cases}
$$

The "program" is exactly the family $\{\mathcal{T}(w_i)\}_i$ — the topological pattern of wire–core intersections.

---

## 11. Extension: The Select/Inhibit/Sense Triple

The single sense-wire model above captures the read topology, but physical core rope memory uses **three** wires per core, not one:

```
SELECT WIRE   — through cores for the addressed row
INHIBIT WIRE  — through cores that should read 0
SENSE WIRE    — through cores that should read 1
```

**Dual-wire encoding:**
- Bit = 1: sense wire THROUGH core, inhibit wire BYPASSES
- Bit = 0: sense wire BYPASSES core, inhibit wire THROUGH

**Read sequence:**
1. Select line pulses the entire row (magnetizes all cores in that row)
2. Inhibit line immediately applies an opposing pulse to cores that should read 0
3. Only cores with a **net** magnetization change induce voltage on the sense wire

This refines the coupling operator to:

$$
b_i(A) = 1 \iff \mathcal{C}(A) \cap \mathcal{T}_{sense}(w_i) \neq \emptyset \;\land\; \mathcal{C}(A) \cap \mathcal{T}_{inhibit}(w_i) = \emptyset
$$

**Extended weave pattern:**

```
BIT0           BIT1           BIT2           BIT3
+-------------+-------------+-------------+-------------+
| S: O*       | S: O)       | S: O*       | S: O)       |
| I: O)       | I: O*       | I: O)       | I: O*       |
+-------------+-------------+-------------+-------------+
| S: O)       | S: O*       | S: O)       | S: O*       |
| I: O*       | I: O)       | I: O*       | I: O)       |
+-------------+-------------+-------------+-------------+
| S: O*       | S: O*       | S: O)       | S: O)       |
| I: O)       | I: O)       | I: O*       | I: O*       |
+-------------+-------------+-------------+-------------+
| S: O)       | S: O)       | S: O*       | S: O*       |
| I: O*       | I: O*       | I: O)       | I: O)       |
+-------------+-------------+-------------+-------------+

S = Sense wire   (THROUGH = 1, BYPASS = 0)
I = Inhibit wire (THROUGH = 0, BYPASS = 1)
```

**Read-cycle phases:**

```
Phase 1: Select row      → D_flip all cores toward 1
Phase 2: Inhibit zeros    → D_flip zero-cores back to 0
Phase 3: Sense            → D_induce only on cores that net-flipped
Phase 4: Rewrite          → not needed (core rope is non-destructive read)
```

Note the contrast with core *memory* (as opposed to core *rope* memory): ordinary magnetic core memory is a destructive-read technology requiring a rewrite phase. Core rope memory's read is non-destructive because the weave, not the core's magnetic state, carries the bit value.

---

## 12. Program Layer as a Weave Matrix

The program can be expressed as a binary weave matrix:

```
WEAVE MATRIX W:
           Word0  Word1  Word2  Word3
Bit0:      [1     0      1      0]
Bit1:      [0     1      1      0]
Bit2:      [1     0      0      1]
Bit3:      [0     1      0      1]

W[j][i] = 1  iff sense wire i passes THROUGH core (j,i)
```

Construction rule:
```
for each bit i:
  for each word j:
    if W[j][i] == 1:
      thread sense wire i THROUGH core(j,i)
    else:
      thread sense wire i AROUND core(j,i)
```

In matrix form:

$$
\mathcal{R} = \mathbf{I}_{select} \cdot \mathbf{M}_{weave}
$$

$$
\mathbf{I}_{select} : N_{words} \times N_{cores}
$$

$$
\mathbf{M}_{weave} : N_{cores} \times N_{bits}
$$

$$
\mathbf{b}(A)
= \mathbf{e}_A^{T}
\cdot \mathbf{I}_{select}
\cdot \mathbf{M}_{weave}
\cdot \mathbf{v}_{sense}
$$

where $\mathbf{v}_{sense}$ is the sense-amplifier vector.

---

## 13. Summary Properties

1. **No stored charge** — bit value is geometric, not electrical
2. **No power required to retain state** — pure topology
3. **Parallel readout** — all bits of a word read simultaneously
4. **Program/data unity** — the weave *is* both the program and the data; the distinction between them dissolves at the physical layer

This framing generalizes to other "program-by-physical-configuration" systems worth comparing against, if useful for future work: Jacquard looms (program by punch card), FPGAs (program by configuration bitstream), and DNA computing (program by base-pair sequence).

---

*Editorial note: the attributed of the nickname "Lovelace memory" to Apollo-era core rope memory doesn't hold up — the documented nickname from the Apollo program is "LOL memory" ("Little Old Lady" memory, after the women who wove it), not "Lovelace."*
