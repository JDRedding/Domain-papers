' QUAD.BAS - Quadratic Analyzer
' Compatible with QBASIC / QB64 / FreeBASIC (-lang qb)

DECLARE SUB Compute ()
DECLARE SUB EnterABC ()
DECLARE SUB Factor ()
DECLARE SUB Analy ()
DECLARE SUB ShowFormula ()
DECLARE SUB Derive ()
DECLARE SUB Graph ()

DIM SHARED A AS SINGLE, B AS SINGLE, C AS SINGLE
DIM SHARED D AS SINGLE, PLUS AS SINGLE, MINX AS SINGLE, AVG AS SINGLE
DIM SHARED VERT AS SINGLE
DIM SHARED HASDATA AS INTEGER

HASDATA = 0

DO
    CLS
    PRINT "=== Quadratic Analyzer (ax^2 + bx + c) ==="
    PRINT
    PRINT "1. Enter A, B, C"
    PRINT "2. Factor"
    PRINT "3. Analysis (vertex, intercepts, inc/dec)"
    PRINT "4. Show quadratic formula"
    PRINT "5. Derive formula (completing the square)"
    PRINT "6. Graph (ASCII)"
    PRINT "7. Exit"
    PRINT
    INPUT "Choice: ", CH$

    SELECT CASE CH$
        CASE "1": EnterABC
        CASE "2": Factor
        CASE "3": Analy
        CASE "4": ShowFormula
        CASE "5": Derive
        CASE "6": Graph
        CASE "7": EXIT DO
        CASE ELSE: PRINT "Invalid choice."
    END SELECT

    IF CH$ <> "7" THEN
        PRINT
        PRINT "Press any key to continue..."
        SLEEP
    END IF
LOOP

END

SUB Compute
    IF A = 0 THEN EXIT SUB
    D = B * B - 4 * A * C
    AVG = -B / (2 * A)
    VERT = A * AVG * AVG + B * AVG + C
    IF D >= 0 THEN
        SD = SQR(D)
        PLUS = (-B + SD) / (2 * A)
        MINX = (-B - SD) / (2 * A)
        IF MINX > PLUS THEN SWAP MINX, PLUS
    ELSE
        PLUS = 0: MINX = 0
    END IF
    HASDATA = 1
END SUB

SUB EnterABC
    CLS
    PRINT "ax^2 + bx + c"
    INPUT "A = ", A
    IF A = 0 THEN
        PRINT "A cannot be 0 (not quadratic)."
        EXIT SUB
    END IF
    INPUT "B = ", B
    INPUT "C = ", C
    Compute
    PRINT "Coefficients stored."
END SUB

SUB Factor
    IF HASDATA = 0 THEN
        PRINT "Enter A, B, C first."
        EXIT SUB
    END IF
    IF D < 0 THEN
        PRINT "No real factors (discriminant < 0)."
        EXIT SUB
    END IF
    PRINT USING "A(x - #.###)(x - #.###)"; A; MINX; PLUS
    PRINT USING "or  (x + #.###)(x + #.###)  [scaled by A]"; -MINX; -PLUS
END SUB

SUB Analy
    IF HASDATA = 0 THEN
        PRINT "Enter A, B, C first."
        EXIT SUB
    END IF
    PRINT "Concave ";
    IF A > 0 THEN PRINT "up" ELSE PRINT "down"
    PRINT USING "Vertex: (#.###, #.###)"; AVG; VERT
    PRINT USING "Axis: x = #.###"; AVG
    IF D >= 0 THEN
        PRINT USING "X-Int: #.###, #.###"; MINX; PLUS
    ELSE
        PRINT "X-Int: none (complex)"
    END IF
    PRINT USING "Y-Int: #.###"; C
    IF A > 0 THEN
        PRINT USING "Inc: (#.###, inf)"; AVG
        PRINT USING "Dec: (-inf, #.###)"; AVG
    ELSE
        PRINT USING "Inc: (-inf, #.###)"; AVG
        PRINT USING "Dec: (#.###, inf)"; AVG
    END IF
END SUB

SUB ShowFormula
    PRINT "x = [-b +/- SQR(b^2 - 4ac)] / (2a)"
    IF HASDATA = 0 THEN EXIT SUB
    PRINT USING "x = [#.### +/- SQR(#.###)] / #.###"; -B; D; 2 * A
END SUB

SUB Derive
    PRINT "Derivation (completing the square):"
    PRINT "ax^2 + bx + c = 0"
    PRINT "x^2 + (b/a)x + (c/a) = 0"
    PRINT "x^2 + (b/a)x = -(c/a)"
    PRINT "x^2 + (b/a)x + (b/(2a))^2 = -(c/a) + (b/(2a))^2"
    PRINT "(x + b/(2a))^2 = (b^2 - 4ac)/(4a^2)"
    PRINT "x + b/(2a) = +/- SQR[(b^2 - 4ac)/(4a^2)]"
    PRINT "x = -b/(2a) +/- SQR(b^2 - 4ac)/(2a)"
    PRINT "x = [-b +/- SQR(b^2 - 4ac)] / (2a)"
END SUB

SUB Graph
    IF HASDATA = 0 THEN
        PRINT "Enter A, B, C first."
        EXIT SUB
    END IF
    CLS
    PRINT "Simple ASCII graph (vertex centered)"
    PRINT
    SPAN = 6
    IF D >= 0 THEN
        IF ABS(PLUS - MINX) > SPAN THEN SPAN = ABS(PLUS - MINX) + 1
    END IF
    FOR Y = 10 TO -10 STEP -1
        LINE$ = ""
        FOR X = -SPAN TO SPAN STEP SPAN
