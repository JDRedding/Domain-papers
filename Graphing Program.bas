' FreeBASIC 3D Graphing Program
' Modes: Cartesian, Polar, Cylindrical, Spherical
' Compile: fbc graph3d.bas

#include "fbgfx.bi"
Using FB

Const SCR_W = 1024
Const SCR_H = 768
Const PI = Atn(1) * 4
Const DEG2RAD = PI / 180

Enum ModeType
    MODE_CARTESIAN = 0
    MODE_POLAR
    MODE_CYLINDRICAL
    MODE_SPHERICAL
End Enum

Type Point3D
    As Single x, y, z
End Type

Dim Shared As Integer mode = MODE_CARTESIAN
Dim Shared As Integer funcIdx = 0
Dim Shared As Single rotX = 25, rotY = 35
Dim Shared As Single scale = 1.8
Dim Shared As Single camDist = 6.0
Dim Shared As Integer gridN = 40

' ========== Function examples ==========
Function fCartesian(ByVal x As Single, ByVal y As Single) As Single
    Select Case funcIdx
        Case 0: Return Sin(x) * Cos(y) * 1.5          ' ripples
        Case 1: Return (x*x - y*y) * 0.15             ' saddle
        Case 2: Return Exp(-(x*x + y*y) * 0.4) * 2    ' gaussian
        Case Else: Return Sin(Sqr(x*x + y*y)) * 1.2
    End Select
End Function

Function fPolar(ByVal r As Single, ByVal th As Single) As Single
    Select Case funcIdx
        Case 0: Return Sin(r * 2) * Cos(th * 3) * 0.8
        Case 1: Return (1 - r) * Sin(th * 5) * 1.2
        Case 2: Return Exp(-r) * Cos(th * 4) * 1.5
        Case Else: Return r * Cos(th * 2)
    End Select
End Function

Function fCylindrical(ByVal rho As Single, ByVal th As Single) As Single
    ' Same as polar for z = f(ρ, θ)
    Return fPolar(rho, th)
End Function

Function fSpherical(ByVal th As Single, ByVal ph As Single) As Single
    ' r = f(θ, φ)
    Select Case funcIdx
        Case 0: Return 1.5 + 0.4 * Sin(th * 4) * Cos(ph * 3)
        Case 1: Return 1.2 + 0.6 * Cos(th * 3) * Sin(ph * 2)
        Case 2: Return 1.0 + 0.5 * Sin(th) * Cos(ph * 5)
        Case Else: Return 1.3 + 0.3 * Cos(2 * th)
    End Select
End Function

Function GetModeName() As String
    Select Case mode
        Case MODE_CARTESIAN:   Return "Cartesian  z = f(x,y)"
        Case MODE_POLAR:       Return "Polar      z = f(r,θ)"
        Case MODE_CYLINDRICAL: Return "Cylindrical z = f(ρ,θ)"
        Case MODE_SPHERICAL:   Return "Spherical  r = f(θ,φ)"
    End Select
    Return ""
End Function

Function GetFuncName() As String
    Select Case mode
        Case MODE_CARTESIAN
            Select Case funcIdx
                Case 0: Return "Sin(x)*Cos(y)"
                Case 1: Return "x² - y²"
                Case 2: Return "Gaussian"
                Case Else: Return "Sin(sqrt(x²+y²))"
            End Select
        Case MODE_POLAR, MODE_CYLINDRICAL
            Select Case funcIdx
                Case 0: Return "Sin(2r)*Cos(3θ)"
                Case 1: Return "(1-r)*Sin(5θ)"
                Case 2: Return "Exp(-r)*Cos(4θ)"
                Case Else: Return "r*Cos(2θ)"
            End Select
        Case MODE_SPHERICAL
            Select Case funcIdx
                Case 0: Return "1.5 + 0.4*Sin(4θ)*Cos(3φ)"
                Case 1: Return "1.2 + 0.6*Cos(3θ)*Sin(2φ)"
                Case 2: Return "1.0 + 0.5*Sin(θ)*Cos(5φ)"
                Case Else: Return "1.3 + 0.3*Cos(2θ)"
            End Select
    End Select
    Return ""
End Function

' ========== Projection ==========
Sub RotatePoint(ByRef p As Point3D, ByVal ax As Single, ByVal ay As Single)
    Dim As Single sx = Sin(ax * DEG2RAD), cx = Cos(ax * DEG2RAD)
    Dim As Single sy = Sin(ay * DEG2RAD), cy = Cos(ay * DEG2RAD)
    Dim As Single y1 = p.y * cx - p.z * sx
    Dim As Single z1 = p.y * sx + p.z * cx
    Dim As Single x2 = p.x * cy + z1 * sy
    Dim As Single z2 = -p.x * sy + z1 * cy
    p.x = x2
    p.y = y1
    p.z = z2
End Sub

Sub Project(ByRef p As Point3D, ByRef sx As Integer, ByRef sy As Integer)
    Dim As Single z = p.z + camDist
    If z < 0.1 Then z = 0.1
    Dim As Single factor = (SCR_H * 0.45 * scale) / z
    sx = SCR_W \ 2 + CInt(p.x * factor)
    sy = SCR_H \ 2 - CInt(p.y * factor)
End Sub

' ========== Generate surface points ==========
Sub GenerateSurface(points() As Point3D)
    Dim As Integer i, j
    Dim As Single u, v, x, y, z, r, th, ph

    Select Case mode
        Case MODE_CARTESIAN
            For i = 0 To gridN
                u = -3.0 + 6.0 * i / gridN
                For j = 0 To gridN
                    v = -3.0 + 6.0 * j / gridN
                    points(i, j).x = u
                    points(i, j).y = fCartesian(u, v)
                    points(i, j).z = v
                Next
            Next

        Case MODE_POLAR, MODE_CYLINDRICAL
            For i = 0 To gridN
                r = 0.05 + 2.8 * i / gridN
                For j = 0 To gridN
                    th = 2 * PI * j / gridN
                    points(i, j).x = r * Cos(th)
                    points(i, j).z = r * Sin(th)
                    points(i, j).y = fPolar(r, th)
                Next
            Next

        Case MODE_SPHERICAL
            For i = 0 To gridN
                th = 0.01 + (PI - 0.02) * i / gridN     ' polar angle
                For j = 0 To gridN
                    ph = 2 * PI * j / gridN             ' azimuthal
                    r = fSpherical(th, ph)
                    points(i, j).x = r * Sin(th) * Cos(ph)
                    points(i, j).y = r * Cos(th)
                    points(i, j).z = r * Sin(th) * Sin(ph)
                Next
            Next
    End Select
End Sub

' ========== Draw ==========
Sub DrawSurface()
    Dim As Point3D points(0 To gridN, 0 To gridN)
    Dim As Point3D p1, p2
    Dim As Integer i, j, sx1, sy1, sx2, sy2

    GenerateSurface(points())

    ScreenLock
    Cls

    ' Draw grid lines
    For i = 0 To gridN
        For j = 0 To gridN - 1
            ' Horizontal
            p1 = points(i, j)
            p2 = points(i, j + 1)
            RotatePoint(p1, rotX, rotY)
            RotatePoint(p2, rotX, rotY)
            Project(p1, sx1, sy1)
            Project(p2, sx2, sy2)
            Line (sx1, sy1)-(sx2, sy2), RGB(80, 180, 255)

            ' Vertical
            p1 = points(j, i)
            p2 = points(j + 1, i)
            RotatePoint(p1, rotX, rotY)
            RotatePoint(p2, rotX, rotY)
            Project(p1, sx1, sy1)
            Project(p2, sx2, sy2)
            Line (sx1, sy1)-(sx2, sy2), RGB(100, 220, 180)
        Next
    Next

    ' HUD
    Draw String (10, 10), "Mode: " & GetModeName(), RGB(255, 255, 100)
    Draw String (10, 30), "Func: " & GetFuncName(), RGB(255, 220, 100)
    Draw String (10, 60), "Arrows = Rotate    +/- = Zoom", RGB(200, 200, 200)
    Draw String (10, 80), "M = Mode    F = Function    ESC = Quit", RGB(200, 200, 200)
    Draw String (10, SCR_H - 30), "Grid: " & gridN & "   Scale: " & Format(scale, "0.00"), RGB(150, 150, 150)

    ScreenUnlock
End Sub

' ========== Main ==========
ScreenRes SCR_W, SCR_H, 32
WindowTitle "FreeBASIC 3D Graph - Cartesian / Polar / Cylindrical / Spherical"

Dim As String key
Dim As Integer mx, my, buttons

Do
    DrawSurface()

    key = InKey
    Select Case key
        Case "m", "M"
            mode = (mode + 1) Mod 4
            funcIdx = 0
        Case "f", "F"
            funcIdx = (funcIdx + 1) Mod 4
        Case "+"
            scale *= 1.08
        Case "-"
            scale /= 1.08
            If scale < 0.2 Then scale = 0.2
        Case Chr(255) & "H"   ' Up
            rotX -= 3
        Case Chr(255) & "P"   ' Down
            rotX += 3
        Case Chr(255) & "K"   ' Left
            rotY -= 3
        Case Chr(255) & "M"   ' Right
            rotY += 3
    End Select

    Sleep 16
Loop Until key = Chr(27)

End
