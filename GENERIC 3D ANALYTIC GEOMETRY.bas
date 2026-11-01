'=========================================================
' GENERIC 3D ANALYTIC GEOMETRY
' Distance & Plane Operations in R^3
'=========================================================

OPTION BASE 1

TYPE Vector3D
    X AS DOUBLE
    Y AS DOUBLE
    Z AS DOUBLE
END TYPE

'---------------------------------------------------------
' VECTOR OPERATIONS
'---------------------------------------------------------

FUNCTION DotProduct# (A AS Vector3D, B AS Vector3D)

    DotProduct# = A.X * B.X + _
                  A.Y * B.Y + _
                  A.Z * B.Z

END FUNCTION

FUNCTION Norm# (A AS Vector3D)

    Norm# = SQR(DotProduct#(A, A))

END FUNCTION

FUNCTION DistancePoints# (P1 AS Vector3D, P2 AS Vector3D)

    DIM D AS Vector3D

    D.X = P2.X - P1.X
    D.Y = P2.Y - P1.Y
    D.Z = P2.Z - P1.Z

    DistancePoints# = Norm#(D)

END FUNCTION

FUNCTION VectorDifference (A AS Vector3D, B AS Vector3D) AS Vector3D

    VectorDifference.X = A.X - B.X
    VectorDifference.Y = A.Y - B.Y
    VectorDifference.Z = A.Z - B.Z

END FUNCTION

FUNCTION ScalarMultiply (S AS DOUBLE, V AS Vector3D) AS Vector3D

    ScalarMultiply.X = S * V.X
    ScalarMultiply.Y = S * V.Y
    ScalarMultiply.Z = S * V.Z

END FUNCTION

FUNCTION VectorAdd (A AS Vector3D, B AS Vector3D) AS Vector3D

    VectorAdd.X = A.X + B.X
    VectorAdd.Y = A.Y + B.Y
    VectorAdd.Z = A.Z + B.Z

END FUNCTION

FUNCTION CrossProduct (A AS Vector3D, B AS Vector3D) AS Vector3D

    CrossProduct.X = A.Y * B.Z - A.Z * B.Y
    CrossProduct.Y = A.Z * B.X - A.X * B.Z
    CrossProduct.Z = A.X * B.Y - A.Y * B.X

END FUNCTION

FUNCTION UnitVector (A AS Vector3D) AS Vector3D

    DIM N AS DOUBLE

    N = Norm#(A)

    IF N = 0 THEN EXIT FUNCTION

    UnitVector.X = A.X / N
    UnitVector.Y = A.Y / N
    UnitVector.Z = A.Z / N

END FUNCTION

FUNCTION Projection (A AS Vector3D, V AS Vector3D) AS Vector3D

    DIM K AS DOUBLE

    K = DotProduct#(A, V) / DotProduct#(V, V)

    Projection = ScalarMultiply(K, V)

END FUNCTION

'---------------------------------------------------------
' DISTANCES
'---------------------------------------------------------

FUNCTION PointLineDistance# (P AS Vector3D, P0 AS Vector3D, V AS Vector3D)

    DIM D AS Vector3D
    DIM C AS Vector3D

    D = VectorDifference(P, P0)
    C = CrossProduct(D, V)

    PointLineDistance# = Norm#(C) / Norm#(V)

END FUNCTION

FUNCTION PointPlaneDistance# (P AS Vector3D, P0 AS Vector3D, N AS Vector3D)

    DIM D AS Vector3D

    D = VectorDifference(P, P0)

    PointPlaneDistance# = ABS(DotProduct#(N, D)) / Norm#(N)

END FUNCTION

FUNCTION PointPlaneDistanceCoeff# (PX AS DOUBLE, PY AS DOUBLE, PZ AS DOUBLE, A AS DOUBLE, B AS DOUBLE, C AS DOUBLE, D AS DOUBLE)

    PointPlaneDistanceCoeff# = _
        ABS(A * PX + B * PY + C * PZ - D) _
        / SQR(A * A + B * B + C * C)

END FUNCTION

FUNCTION LineLineDistance# (P1 AS Vector3D, V1 AS Vector3D, P2 AS Vector3D, V2 AS Vector3D)

    DIM N AS Vector3D
    DIM D AS Vector3D

    D = VectorDifference(P2, P1)
    N = CrossProduct(V1, V2)

    IF Norm#(N) < .0000001 THEN

        N = CrossProduct(D, V1)
        LineLineDistance# = Norm#(N) / Norm#(V1)

    ELSE

        LineLineDistance# = ABS(DotProduct#(D, N)) / Norm#(N)

    END IF

END FUNCTION

'---------------------------------------------------------
' LINE - PLANE
'---------------------------------------------------------

SUB LinePlaneIntersection ( _
    P0 AS Vector3D, _
    V AS Vector3D, _
    Q AS Vector3D, _
    N AS Vector3D)

    DIM Denom AS DOUBLE
    DIM T AS DOUBLE
    DIM D AS Vector3D
    DIM P AS Vector3D

    D = VectorDifference(P0, Q)
    Denom = DotProduct#(N, V)

    IF ABS(Denom) < .0000001 THEN

        IF PointPlaneDistance#(P0, Q, N) < .0000001 THEN
            PRINT "Line contained in plane"
        ELSE
            PRINT "Line parallel to plane"
            PRINT "Distance = "; PointPlaneDistance#(P0, Q, N)
        END IF

        EXIT SUB

    END IF

    T = -DotProduct#(N, D) / Denom

    P = VectorAdd(P0, ScalarMultiply(T, V))

    PRINT "Intersection Point:"
    PRINT "X = "; P.X
    PRINT "Y = "; P.Y
    PRINT "Z = "; P.Z

END SUB

'---------------------------------------------------------
' PLANE - PLANE
'---------------------------------------------------------

SUB PlanePlaneRelation ( _
    N1 AS Vector3D, D1 AS DOUBLE, _
    N2 AS Vector3D, D2 AS DOUBLE)

    DIM C AS Vector3D

    C = CrossProduct(N1, N2)

    IF Norm#(C) < .0000001 THEN

        PRINT "Planes are parallel"

        PRINT "Distance = ";
        PRINT ABS(D1 - D2) / Norm#(N1)

        IF ABS(D1 - D2) < .0000001 THEN
            PRINT "Planes are identical"
        END IF

    ELSE

        PRINT "Planes intersect"

        PRINT "Line Direction Vector:"
        PRINT C.X; C.Y; C.Z

    END IF

END SUB

'---------------------------------------------------------
' DEMONSTRATION
'---------------------------------------------------------

DIM P1 AS Vector3D
DIM P2 AS Vector3D
DIM V1 AS Vector3D

P1.X = 0
P1.Y = 0
P1.Z = 0

P2.X = 3
P2.Y = 4
P2.Z = 5

PRINT "POINT TO POINT DISTANCE"
PRINT DistancePoints#(P1, P2)

V1.X = 1
V1.Y = 0
V1.Z = 0

PRINT
PRINT "POINT TO LINE DISTANCE"
PRINT PointLineDistance#(P2, P1, V1)

END
