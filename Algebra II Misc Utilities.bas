REM ===================================================================
REM Algebra II Misc Utilities
REM Menu-driven BASIC program (classic line-numbered style, similar to
REM GW-BASIC or QBASIC) providing simple calculators for powers of the
REM imaginary unit i and for basic linear geometry from two points.
REM ===================================================================

REM ---------------------------------------------------------------------
REM Main Menu (lines 10-140)
REM ---------------------------------------------------------------------
REM Clears the screen and displays five options:
REM   1. COMPLEX
REM   2. I^=...
REM   3. M/D/S
REM   4. INSL
REM   5. EXIT
REM
REM Reads a choice into variable C and branches with GOTO statements.
REM Invalid choices return to the menu. Choosing 5 ends the program.

10 CLS
20 PRINT "1: COMPLEX"
30 PRINT "2: I^=..."
40 PRINT "3: M/D/S"
50 PRINT "4: INSL"
60 PRINT "5: EXIT"
70 PRINT
80 INPUT "SELECT OPTION"; C

90 IF C = 1 THEN GOTO 1000
100 IF C = 2 THEN GOTO 2000
110 IF C = 3 THEN GOTO 3000
120 IF C = 4 THEN GOTO 4000
130 IF C = 5 THEN END
140 GOTO 10

REM ---------------------------------------------------------------------
REM Option 1: COMPLEX - Powers of i (lines 1000-1230)
REM ---------------------------------------------------------------------
REM Prompts for an exponent E (I^).
REM Rejects negative exponents with a "DOMAIN ERROR" message
REM (supports non-negative exponents only).
REM For E >= 0, reduces the exponent modulo 4 and prints the result
REM from the cycle of powers of i:
REM   remainder 1 -> i
REM   remainder 2 -> -1
REM   remainder 3 -> -i
REM   remainder 0 -> 1
REM Pauses for Enter, then returns to the main menu.

1000 CLS
1010 PRINT "COMPLEX - POWERS OF i"
1020 INPUT "I^"; E
1030 IF E < 0 THEN GOTO 1100
1040 R = E MOD 4
1050 IF R = 1 THEN PRINT "i"
1060 IF R = 2 THEN PRINT "-1"
1070 IF R = 3 THEN PRINT "-i"
1080 IF R = 0 THEN PRINT "1"
1090 GOTO 1200

1100 PRINT "DOMAIN ERROR - NEGATIVE EXPONENT"
1110 PRINT "PRESS ENTER"
1120 LINE INPUT A$

1200 PRINT
1210 PRINT "PRESS ENTER"
1220 LINE INPUT A$
1230 GOTO 10

REM ---------------------------------------------------------------------
REM Option 2: Reference Table (lines 2000-2100)
REM ---------------------------------------------------------------------
REM Prints a short fixed table of the first four powers of i:
REM   i   = i
REM   i^2 = -1
REM   i^3 = -i
REM   i^4 = 1
REM Then pauses and returns to the menu. Purely informational;
REM performs no calculation.

2000 CLS
2010 PRINT "REFERENCE TABLE"
2020 PRINT
2030 PRINT "i   = i"
2040 PRINT "i^2 = -1"
2050 PRINT "i^3 = -i"
2060 PRINT "i^4 = 1"
2070 PRINT
2080 PRINT "PRESS ENTER"
2090 LINE INPUT A$
2100 GOTO 10

REM ---------------------------------------------------------------------
REM Option 3: M/D/S - Midpoint / Distance / Slope (lines 3000-3210)
REM ---------------------------------------------------------------------
REM Asks for two points (X1, Y1) and (X2, Y2).
REM Computes:
REM   Distance D = SQR((X2-X1)^2 + (Y2-Y1)^2)
REM   Midpoint   = ((X1+X2)/2, (Y1+Y2)/2)
REM   Slope S    = (Y2-Y1)/(X2-X1)
REM              (or "UNDEF" if the line is vertical, i.e. X1 = X2)
REM Prints the three results, pauses, and returns to the menu.

3000 CLS
3010 PRINT "MIDPOINT / DISTANCE / SLOPE"
3020 INPUT "X1"; X1
3030 INPUT "Y1"; Y1
3040 INPUT "X2"; X2
3050 INPUT "Y2"; Y2

3060 DX = X2 - X1
3070 DY = Y2 - Y1

3080 D = SQR(DX * DX + DY * DY)
3090 MX = (X1 + X2) / 2
3100 MY = (Y1 + Y2) / 2

3110 PRINT
3120 PRINT "DISTANCE = "; D
3130 PRINT "MIDPOINT = ("; MX; ","; MY; ")"

3140 IF DX = 0 THEN GOTO 3170
3150 S = DY / DX
3160 PRINT "SLOPE = "; S
3165 GOTO 3180

3170 PRINT "SLOPE = UNDEF"

3180 PRINT
3190 PRINT "PRESS ENTER"
3200 LINE INPUT A$
3210 GOTO 10

REM ---------------------------------------------------------------------
REM Option 4: INSL - Intercepts + Slope (lines 4000-4330)
REM ---------------------------------------------------------------------
REM Takes two points (X1, Y1) and (X2, Y2).
REM Handles the vertical-line case separately:
REM   Slope       = UNDEF
REM   Y-intercept = N/A
REM   X-intercept = X1
REM For non-vertical lines it calculates:
REM   Slope M     = DY/DX
REM   Y-intercept B = Y1 - X1 * M
REM   X-intercept   = -B/M
REM              (or "NONE" if the slope is zero, i.e. a horizontal line)
REM Prints the results, pauses, and returns to the menu.

4000 CLS
4010 PRINT "INTERCEPTS + SLOPE"
4020 INPUT "X1"; X1
4030 INPUT "Y1"; Y1
4040 INPUT "X2"; X2
4050 INPUT "Y2"; Y2

4060 DX = X2 - X1
4070 DY = Y2 - Y1

4080 IF DX = 0 THEN GOTO 4200

4090 M = DY / DX
4100 B = Y1 - X1 * M
4110 XINT = -B / M

4120 PRINT
4130 PRINT "SLOPE = "; M
4140 PRINT "Y-INTERCEPT = "; B

4150 IF M = 0 THEN GOTO 4180
4160 PRINT "X-INTERCEPT = "; XINT
4170 GOTO 4300

4180 PRINT "X-INTERCEPT = NONE"
4190 GOTO 4300

4200 PRINT
4210 PRINT "SLOPE = UNDEF"
4220 PRINT "Y-INTERCEPT = N/A"
4230 PRINT "X-INTERCEPT = "; X1

4300 PRINT
4310 PRINT "PRESS ENTER"
4320 LINE INPUT A$
4330 GOTO 10

REM ---------------------------------------------------------------------
REM Overall Character
REM ---------------------------------------------------------------------
REM Compact educational utility for algebra or pre-calculus topics.
REM Relies on simple arithmetic, the MOD operator for the powers-of-i
REM cycle, the square-root function SQR, and basic conditional branching.
REM Uses no arrays, functions, or structured control beyond GOTO and
REM IF...THEN, typical of many early BASIC teaching programs.
REM ===================================================================
