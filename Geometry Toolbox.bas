' Geometry Toolbox - FreeBASIC
' Basic geometry calculations

CONST PI AS DOUBLE = 3.141592653589793

DECLARE SUB DistanceMidpointSlope()
DECLARE SUB CircleSolver()
DECLARE SUB TriangleArea()
DECLARE SUB RightTriangle()
DECLARE SUB ShapeFormulas()
DECLARE FUNCTION DegToRad(deg AS DOUBLE) AS DOUBLE
DECLARE FUNCTION RadToDeg(rad AS DOUBLE) AS DOUBLE

DIM AS INTEGER choice

DO
    CLS
    PRINT "========================================"
    PRINT "         GEOMETRY TOOLBOX"
    PRINT "========================================"
    PRINT "1. Distance, Midpoint, Slope"
    PRINT "2. Circle Solver"
    PRINT "3. Triangle Area"
    PRINT "4. Right Triangle Solver"
    PRINT "5. Shape Formulas (Area/Volume/Surface)"
    PRINT "0. Exit"
    PRINT "========================================"
    INPUT "Choose an option: ", choice

    SELECT CASE choice
        CASE 1: DistanceMidpointSlope()
        CASE 2: CircleSolver()
        CASE 3: TriangleArea()
        CASE 4: RightTriangle()
        CASE 5: ShapeFormulas()
        CASE 0: EXIT DO
        CASE ELSE
            PRINT "Invalid choice."
            SLEEP 1000
    END SELECT
LOOP

END

'--------------------------------------------------
SUB DistanceMidpointSlope()
    DIM AS DOUBLE x1, y1, x2, y2
    DIM AS DOUBLE dist, mx, my, slope

    CLS
    PRINT "=== Distance, Midpoint, Slope ==="
    INPUT "Point 1 (x1, y1): ", x1, y1
    INPUT "Point 2 (x2, y2): ", x2, y2

    dist = SQR((x2 - x1)^2 + (y2 - y1)^2)
    mx = (x1 + x2) / 2
    my = (y1 + y2) / 2

    PRINT
    PRINT "Distance: "; dist
    PRINT "Midpoint: ("; mx; ", "; my; ")"

    IF x2 <> x1 THEN
        slope = (y2 - y1) / (x2 - x1)
        PRINT "Slope: "; slope
    ELSE
        PRINT "Slope: undefined (vertical line)"
    END IF

    PRINT
    PRINT "Press any key to continue..."
    SLEEP
END SUB

'--------------------------------------------------
SUB CircleSolver()
    DIM AS DOUBLE value
    DIM AS INTEGER choice
    DIM AS DOUBLE r, d, c, a

    CLS
    PRINT "=== Circle Solver ==="
    PRINT "What do you know?"
    PRINT "1. Radius"
    PRINT "2. Diameter"
    PRINT "3. Circumference"
    PRINT "4. Area"
    INPUT "Choice: ", choice
    INPUT "Enter the value: ", value

    SELECT CASE choice
        CASE 1
            r = value
        CASE 2
            r = value / 2
        CASE 3
            r = value / (2 * PI)
        CASE 4
            r = SQR(value / PI)
        CASE ELSE
            PRINT "Invalid choice."
            SLEEP 1500
            EXIT SUB
    END SELECT

    d = 2 * r
    c = 2 * PI * r
    a = PI * r * r

    PRINT
    PRINT "Radius       = "; r
    PRINT "Diameter     = "; d
    PRINT "Circumference= "; c
    PRINT "Area         = "; a

    PRINT
    PRINT "Press any key to continue..."
    SLEEP
END SUB

'--------------------------------------------------
SUB TriangleArea()
    DIM AS INTEGER method
    DIM AS DOUBLE base, height, a, b, c, s, area

    CLS
    PRINT "=== Triangle Area ==="
    PRINT "1. Base and Height"
    PRINT "2. Three sides (Heron's formula)"
    INPUT "Method: ", method

    IF method = 1 THEN
        INPUT "Base: ", base
        INPUT "Height: ", height
        area = 0.5 * base * height
    ELSEIF method = 2 THEN
        INPUT "Side a: ", a
        INPUT "Side b: ", b
        INPUT "Side c: ", c
        s = (a + b + c) / 2
        area = SQR(s * (s - a) * (s - b) * (s - c))
    ELSE
        PRINT "Invalid method."
        SLEEP 1500
        EXIT SUB
    END IF

    PRINT
    PRINT "Area = "; area

    PRINT
    PRINT "Press any key to continue..."
    SLEEP
END SUB

'--------------------------------------------------
SUB RightTriangle()
    DIM AS DOUBLE a, b, c
    DIM AS INTEGER known

    CLS
    PRINT "=== Right Triangle Solver ==="
    PRINT "Enter known sides (use 0 for unknown)"
    PRINT "a and b = legs, c = hypotenuse"
    INPUT "a = ", a
    INPUT "b = ", b
    INPUT "c = ", c

    IF a > 0 AND b > 0 AND c = 0 THEN
        c = SQR(a^2 + b^2)
    ELSEIF a > 0 AND c > 0 AND b = 0 THEN
        b = SQR(c^2 - a^2)
    ELSEIF b > 0 AND c > 0 AND a = 0 THEN
        a = SQR(c^2 - b^2)
    ELSE
        PRINT "Need exactly two sides (one must be a leg or hypotenuse appropriately)."
        SLEEP 2000
        EXIT SUB
    END IF

    PRINT
    PRINT "a (leg) = "; a
    PRINT "b (leg) = "; b
    PRINT "c (hyp) = "; c
    PRINT
    PRINT "Angle A = "; RadToDeg(ATN(a / b)); " degrees"
    PRINT "Angle B = "; RadToDeg(ATN(b / a)); " degrees"

    PRINT
    PRINT "Press any key to continue..."
    SLEEP
END SUB

'--------------------------------------------------
SUB ShapeFormulas()
    DIM AS INTEGER choice
    DIM AS DOUBLE r, h, s, l, w, base, height, side

    CLS
    PRINT "=== Shape Formulas ==="
    PRINT "1. Rectangle (area & perimeter)"
    PRINT "2. Square (area & perimeter)"
    PRINT "3. Parallelogram (area)"
    PRINT "4. Trapezoid (area)"
    PRINT "5. Sphere (volume & surface)"
    PRINT "6. Cylinder (volume & surface)"
    PRINT "7. Cone (volume)"
    PRINT "8. Rectangular Prism (volume & surface)"
    INPUT "Choice: ", choice

    SELECT CASE choice
        CASE 1
            INPUT "Length: ", l
            INPUT "Width: ", w
            PRINT "Area = "; l * w
            PRINT "Perimeter = "; 2 * (l + w)
        CASE 2
            INPUT "Side: ", side
            PRINT "Area = "; side * side
            PRINT "Perimeter = "; 4 * side
        CASE 3
            INPUT "Base: ", base
            INPUT "Height: ", height
            PRINT "Area = "; base * height
        CASE 4
            DIM AS DOUBLE a, b
            INPUT "Base 1: ", a
            INPUT "Base 2: ", b
            INPUT "Height: ", height
            PRINT "Area = "; ((a + b) / 2) * height
        CASE 5
            INPUT "Radius: ", r
            PRINT "Volume = "; (4/3) * PI * r^3
            PRINT "Surface Area = "; 4 * PI * r^2
        CASE 6
            INPUT "Radius: ", r
            INPUT "Height: ", h
            PRINT "Volume = "; PI * r^2 * h
            PRINT "Surface Area = "; 2 * PI * r * (r + h)
        CASE 7
            INPUT "Radius: ", r
            INPUT "Height: ", h
            PRINT "Volume = "; (1/3) * PI * r^2 * h
        CASE 8
            INPUT "Length: ", l
            INPUT "Width: ", w
            INPUT "Height: ", h
            PRINT "Volume = "; l * w * h
            PRINT "Surface Area = "; 2 * (l*w + l*h + w*h)
        CASE ELSE
            PRINT "Invalid choice."
    END SELECT

    PRINT
    PRINT "Press any key to continue..."
    SLEEP
END SUB

'--------------------------------------------------
FUNCTION DegToRad(deg AS DOUBLE) AS DOUBLE
    RETURN deg * PI / 180
END FUNCTION

FUNCTION RadToDeg(rad AS DOUBLE) AS DOUBLE
    RETURN rad * 180 / PI
END FUNCTION
