'=========================================================
' GENERIC 3D ANALYTIC GEOMETRY
' Distance, Plane & Angle Operations in R^3
' Robust FreeBASIC version
'=========================================================

Option Base 1

Const EPSILON As Double = 1e-8

Type Vector3D
    X As Double
    Y As Double
    Z As Double
End Type

'---------------------------------------------------------
' VECTOR OPERATIONS
'---------------------------------------------------------

Function DotProduct(A As Vector3D, B As Vector3D) As Double
    Return A.X * B.X + A.Y * B.Y + A.Z * B.Z
End Function

Function Norm(A As Vector3D) As Double
    Return Sqr(DotProduct(A, A))
End Function

Function IsZeroVector(V As Vector3D) As Integer
    Return (Norm(V) < EPSILON)
End Function

Function VectorDifference(A As Vector3D, B As Vector3D) As Vector3D
    Dim Result As Vector3D
    Result.X = A.X - B.X
    Result.Y = A.Y - B.Y
    Result.Z = A.Z - B.Z
    Return Result
End Function

Function VectorAdd(A As Vector3D, B As Vector3D) As Vector3D
    Dim Result As Vector3D
    Result.X = A.X + B.X
    Result.Y = A.Y + B.Y
    Result.Z = A.Z + B.Z
    Return Result
End Function

Function ScalarMultiply(S As Double, V As Vector3D) As Vector3D
    Dim Result As Vector3D
    Result.X = S * V.X
    Result.Y = S * V.Y
    Result.Z = S * V.Z
    Return Result
End Function

Function CrossProduct(A As Vector3D, B As Vector3D) As Vector3D
    Dim Result As Vector3D
    Result.X = A.Y * B.Z - A.Z * B.Y
    Result.Y = A.Z * B.X - A.X * B.Z
    Result.Z = A.X * B.Y - A.Y * B.X
    Return Result
End Function

Function UnitVector(A As Vector3D) As Vector3D
    Dim N As Double
    Dim Result As Vector3D
    N = Norm(A)
    If N < EPSILON Then Return Result   ' (0,0,0)
    Result.X = A.X / N
    Result.Y = A.Y / N
    Result.Z = A.Z / N
    Return Result
End Function

Function Projection(A As Vector3D, V As Vector3D) As Vector3D
    Dim Denom As Double
    Dim Result As Vector3D
    Denom = DotProduct(V, V)
    If Denom < EPSILON Then Return Result   ' zero vector
    Return ScalarMultiply(DotProduct(A, V) / Denom, V)
End Function

Function IsParallel(A As Vector3D, B As Vector3D) As Integer
    Return (Norm(CrossProduct(A, B)) < EPSILON)
End Function

'---------------------------------------------------------
' ANGLES
'---------------------------------------------------------

Function AngleVectors(A As Vector3D, B As Vector3D) As Double
    ' Returns angle in radians between two vectors
    ' Returns -1 if either vector is zero
    Dim NA As Double, NB As Double, CosTheta As Double
    NA = Norm(A)
    NB = Norm(B)
    If NA < EPSILON Or NB < EPSILON Then Return -1
    CosTheta = DotProduct(A, B) / (NA * NB)
    ' Clamp to avoid floating-point domain errors
    If CosTheta > 1 Then CosTheta = 1
    If CosTheta < -1 Then CosTheta = -1
    Return Acos(CosTheta)
End Function

'---------------------------------------------------------
' DISTANCES
'---------------------------------------------------------

Function DistancePoints(P1 As Vector3D, P2 As Vector3D) As Double
    Return Norm(VectorDifference(P2, P1))
End Function

Function PointLineDistance(P As Vector3D, P0 As Vector3D, V As Vector3D) As Double
    ' Returns -1 if direction vector is zero
    If IsZeroVector(V) Then Return -1
    Dim D As Vector3D = VectorDifference(P, P0)
    Dim C As Vector3D = CrossProduct(D, V)
    Return Norm(C) / Norm(V)
End Function

Function PointPlaneDistance(P As Vector3D, P0 As Vector3D, N As Vector3D) As Double
    ' Returns -1 if normal is zero
    If IsZeroVector(N) Then Return -1
    Dim D As Vector3D = VectorDifference(P, P0)
    Return Abs(DotProduct(N, D)) / Norm(N)
End Function

Function PointPlaneDistanceCoeff(PX As Double, PY As Double, PZ As Double, _
                                 A As Double, B As Double, C As Double, D As Double) As Double
    Dim NNorm As Double = Sqr(A*A + B*B + C*C)
    If NNorm < EPSILON Then Return -1
    Return Abs(A*PX + B*PY + C*PZ - D) / NNorm
End Function

Function LineLineDistance(P1 As Vector3D, V1 As Vector3D, P2 As Vector3D, V2 As Vector3D) As Double
    If IsZeroVector(V1) Or IsZeroVector(V2) Then Return -1
    Dim N As Vector3D = CrossProduct(V1, V2)
    Dim D As Vector3D = VectorDifference(P2, P1)
    If Norm(N) < EPSILON Then
        ' Parallel lines
        N = CrossProduct(D, V1)
        Return Norm(N) / Norm(V1)
    Else
        Return Abs(DotProduct(D, N)) / Norm(N)
    End If
End Function

'---------------------------------------------------------
' PLANE CONSTRUCTION
'---------------------------------------------------------

Function PlaneConstant(N As Vector3D, P0 As Vector3D) As Double
    ' d in  N · X = d
    Return DotProduct(N, P0)
End Function

Sub PlaneFrom3Points(P1 As Vector3D, P2 As Vector3D, P3 As Vector3D, ByRef N As Vector3D)
    Dim V1 As Vector3D = VectorDifference(P2, P1)
    Dim V2 As Vector3D = VectorDifference(P3, P1)
    N = CrossProduct(V1, V2)
End Sub

'---------------------------------------------------------
' LINE – PLANE
'---------------------------------------------------------

Sub LinePlaneIntersection(P0 As Vector3D, V As Vector3D, Q As Vector3D, N As Vector3D)
    If IsZeroVector(V) Or IsZeroVector(N) Then
        Print "Invalid line or plane"
        Exit Sub
    End If

    Dim Denom As Double = DotProduct(N, V)
    Dim D As Vector3D = VectorDifference(P0, Q)

    If Abs(Denom) < EPSILON Then
        If PointPlaneDistance(P0, Q, N) < EPSILON Then
            Print "Line contained in plane"
        Else
            Print "Line parallel to plane"
            Print "Distance = "; PointPlaneDistance(P0, Q, N)
        End If
        Exit Sub
    End If

    Dim T As Double = -DotProduct(N, D) / Denom
    Dim P As Vector3D = VectorAdd(P0, ScalarMultiply(T, V))

    Print "Intersection Point:"
    Print "X = "; P.X
    Print "Y = "; P.Y
    Print "Z = "; P.Z
End Sub

'---------------------------------------------------------
' PLANE – PLANE
'---------------------------------------------------------

Function PlanePlaneDistance(N1 As Vector3D, D1 As Double, N2 As Vector3D, D2 As Double) As Double
    ' Correct distance after normalizing
    ' Returns -1 if normals are zero or not parallel
    If IsZeroVector(N1) Or IsZeroVector(N2) Then Return -1
    If Not IsParallel(N1, N2) Then Return -1

    Dim N1u As Vector3D = UnitVector(N1)
    Dim N2u As Vector3D = UnitVector(N2)

    ' Ensure normals point in the same direction
    If DotProduct(N1u, N2u) < 0 Then
        N2u = ScalarMultiply(-1, N2u)
        D2 = -D2
    End If

    Dim D1n As Double = D1 / Norm(N1)
    Dim D2n As Double = D2 / Norm(N2)

    Return Abs(D1n - D2n)
End Function

Sub PlanePlaneRelation(N1 As Vector3D, D1 As Double, N2 As Vector3D, D2 As Double)
    If IsZeroVector(N1) Or IsZeroVector(N2) Then
        Print "Invalid plane normal(s)"
        Exit Sub
    End If

    Dim C As Vector3D = CrossProduct(N1, N2)

    If Norm(C) < EPSILON Then
        Print "Planes are parallel"
        Dim Dist As Double = PlanePlaneDistance(N1, D1, N2, D2)
        Print "Distance = "; Dist
        If Dist < EPSILON Then
            Print "Planes are identical"
        End If
    Else
        Print "Planes intersect"
        Print "Direction vector: "; C.X; " "; C.Y; " "; C.Z

        ' Find one point on the intersection line
        Dim P As Vector3D
        Dim Found As Integer = 0

        ' Solve the 2×3 system by setting one coordinate to 0
        ' Try X = 0
        Dim Denom As Double = N1.Y * N2.Z - N1.Z * N2.Y
        If Abs(Denom) > EPSILON Then
            P.X = 0
            P.Y = (D1 * N2.Z - D2 * N1.Z) / Denom
            P.Z = (N1.Y * D2 - N2.Y * D1) / Denom
            Found = -1
        End If

        ' Try Y = 0 if previous failed
        If Found = 0 Then
            Denom = N1.Z * N2.X - N1.X * N2.Z
            If Abs(Denom) > EPSILON Then
                P.Y = 0
                P.X = (D1 * N2.Z - D2 * N1.Z) / Denom
                P.Z = (N1.X * D2 - N2.X * D1) / Denom
                Found = -1
            End If
        End If

        ' Try Z = 0
        If Found = 0 Then
            Denom = N1.X * N2.Y - N1.Y * N2.X
            If Abs(Denom) > EPSILON Then
                P.Z = 0
                P.X = (D1 * N2.Y - D2 * N1.Y) / Denom
                P.Y = (N1.X * D2 - N2.X * D1) / Denom
                Found = -1
            End If
        End If

        If Found Then
            Print "Point on line: "; P.X; " "; P.Y; " "; P.Z
        Else
            Print "Could not find a point (degenerate case)"
        End If
    End If
End Sub

'---------------------------------------------------------
' DEMONSTRATION
'---------------------------------------------------------

Dim P1 As Vector3D
Dim P2 As Vector3D
Dim V1 As Vector3D

P1.X = 0 : P1.Y = 0 : P1.Z = 0
P2.X = 3 : P2.Y = 4 : P2.Z = 5

Print "POINT TO POINT DISTANCE"
Print DistancePoints(P1, P2)

V1.X = 1 : V1.Y = 0 : V1.Z = 0

Print
Print "POINT TO LINE DISTANCE"
Print PointLineDistance(P2, P1, V1)

Print
Print "ANGLE BETWEEN VECTORS (radians)"
Print AngleVectors(P2, V1)

Sleep
