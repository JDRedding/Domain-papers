'=========================================================
' GENERIC 3D ANALYTIC GEOMETRY
' Distance & Plane Operations in R^3
' FreeBASIC version
'=========================================================

Option Base 1

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

Function DistancePoints(P1 As Vector3D, P2 As Vector3D) As Double
    Dim D As Vector3D
    D.X = P2.X - P1.X
    D.Y = P2.Y - P1.Y
    D.Z = P2.Z - P1.Z
    Return Norm(D)
End Function

Function VectorDifference(A As Vector3D, B As Vector3D) As Vector3D
    Dim Result As Vector3D
    Result.X = A.X - B.X
    Result.Y = A.Y - B.Y
    Result.Z = A.Z - B.Z
    Return Result
End Function

Function ScalarMultiply(S As Double, V As Vector3D) As Vector3D
    Dim Result As Vector3D
    Result.X = S * V.X
    Result.Y = S * V.Y
    Result.Z = S * V.Z
    Return Result
End Function

Function VectorAdd(A As Vector3D, B As Vector3D) As Vector3D
    Dim Result As Vector3D
    Result.X = A.X + B.X
    Result.Y = A.Y + B.Y
    Result.Z = A.Z + B.Z
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
    If N = 0 Then Return Result   ' returns (0,0,0)
    Result.X = A.X / N
    Result.Y = A.Y / N
    Result.Z = A.Z / N
    Return Result
End Function

Function Projection(A As Vector3D, V As Vector3D) As Vector3D
    Dim K As Double
    K = DotProduct(A, V) / DotProduct(V, V)
    Return ScalarMultiply(K, V)
End Function

'---------------------------------------------------------
' DISTANCES
'---------------------------------------------------------

Function PointLineDistance(P As Vector3D, P0 As Vector3D, V As Vector3D) As Double
    Dim D As Vector3D
    Dim C As Vector3D
    D = VectorDifference(P, P0)
    C = CrossProduct(D, V)
    Return Norm(C) / Norm(V)
End Function

Function PointPlaneDistance(P As Vector3D, P0 As Vector3D, N As Vector3D) As Double
    Dim D As Vector3D
    D = VectorDifference(P, P0)
    Return Abs(DotProduct(N, D)) / Norm(N)
End Function

Function PointPlaneDistanceCoeff(PX As Double, PY As Double, PZ As Double, _
                                 A As Double, B As Double, C As Double, D As Double) As Double
    Return Abs(A * PX + B * PY + C * PZ - D) / Sqr(A * A + B * B + C * C)
End Function

Function LineLineDistance(P1 As Vector3D, V1 As Vector3D, P2 As Vector3D, V2 As Vector3D) As Double
    Dim N As Vector3D
    Dim D As Vector3D
    D = VectorDifference(P2, P1)
    N = CrossProduct(V1, V2)

    If Norm(N) < 0.0000001 Then
        N = CrossProduct(D, V1)
        Return Norm(N) / Norm(V1)
    Else
        Return Abs(DotProduct(D, N)) / Norm(N)
    End If
End Function

'---------------------------------------------------------
' LINE - PLANE
'---------------------------------------------------------

Sub LinePlaneIntersection(P0 As Vector3D, V As Vector3D, Q As Vector3D, N As Vector3D)
    Dim Denom As Double
    Dim T As Double
    Dim D As Vector3D
    Dim P As Vector3D

    D = VectorDifference(P0, Q)
    Denom = DotProduct(N, V)

    If Abs(Denom) < 0.0000001 Then
        If PointPlaneDistance(P0, Q, N) < 0.0000001 Then
            Print "Line contained in plane"
        Else
            Print "Line parallel to plane"
            Print "Distance = "; PointPlaneDistance(P0, Q, N)
        End If
        Exit Sub
    End If

    T = -DotProduct(N, D) / Denom
    P = VectorAdd(P0, ScalarMultiply(T, V))

    Print "Intersection Point:"
    Print "X = "; P.X
    Print "Y = "; P.Y
    Print "Z = "; P.Z
End Sub

'---------------------------------------------------------
' PLANE - PLANE
'---------------------------------------------------------

Sub PlanePlaneRelation(N1 As Vector3D, D1 As Double, N2 As Vector3D, D2 As Double)
    Dim C As Vector3D
    C = CrossProduct(N1, N2)

    If Norm(C) < 0.0000001 Then
        Print "Planes are parallel"
        Print "Distance = "; Abs(D1 - D2) / Norm(N1)

        If Abs(D1 - D2) < 0.0000001 Then
            Print "Planes are identical"
        End If
    Else
        Print "Planes intersect"
        Print "Line Direction Vector:"
        Print C.X; " "; C.Y; " "; C.Z
    End If
End Sub

'---------------------------------------------------------
' DEMONSTRATION
'---------------------------------------------------------

Dim P1 As Vector3D
Dim P2 As Vector3D
Dim V1 As Vector3D

P1.X = 0
P1.Y = 0
P1.Z = 0

P2.X = 3
P2.Y = 4
P2.Z = 5

Print "POINT TO POINT DISTANCE"
Print DistancePoints(P1, P2)

V1.X = 1
V1.Y = 0
V1.Z = 0

Print
Print "POINT TO LINE DISTANCE"
Print PointLineDistance(P2, P1, V1)

Sleep
