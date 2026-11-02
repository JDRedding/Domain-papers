' ============================================================
' RAM Calculus Function Analyzer
' LRAM, MRAM, and RRAM (Left/Mid/Right Rectangular Approximation Methods)
' Graphical + Numerical analysis of Riemann sums
' ============================================================
' Edit the Function f(x) below to analyze any function you want.
' ============================================================

#include "fbgfx.bi"
Using FB

' ------------------------------------------------------------
' USER-EDITABLE FUNCTION
' Change this to any function you want to integrate
' ------------------------------------------------------------
Function f(ByVal x As Double) As Double
    ' Examples (uncomment one or write your own):
    Return x * x                     ' f(x) = x^2
    'Return Sin(x)                   ' f(x) = sin(x)
    'Return Exp(-x * x)              ' f(x) = e^(-x^2)
    'Return 1 / (1 + x * x)          ' f(x) = 1/(1+x^2)
    'Return Sqr(Abs(x))              ' f(x) = sqrt(|x|)
End Function

' ------------------------------------------------------------
' Numerical RAM calculations
' ------------------------------------------------------------
Function CalcLRAM(a As Double, b As Double, n As Integer) As Double
    Dim dx As Double = (b - a) / n
    Dim sum As Double = 0
    For i As Integer = 0 To n - 1
        sum += f(a + i * dx)
    Next
    Return sum * dx
End Function

Function CalcMRAM(a As Double, b As Double, n As Integer) As Double
    Dim dx As Double = (b - a) / n
    Dim sum As Double = 0
    For i As Integer = 0 To n - 1
        sum += f(a + (i + 0.5) * dx)
    Next
    Return sum * dx
End Function

Function CalcRRAM(a As Double, b As Double, n As Integer) As Double
    Dim dx As Double = (b - a) / n
    Dim sum As Double = 0
    For i As Integer = 1 To n
        sum += f(a + i * dx)
    Next
    Return sum * dx
End Function

' ------------------------------------------------------------
' Find suitable y-range for graphing by sampling
' ------------------------------------------------------------
Sub FindYRange(a As Double, b As Double, ByRef ymin As Double, ByRef ymax As Double)
    ymin = 1e300
    ymax = -1e300
    Dim samples As Integer = 500
    Dim stepx As Double = (b - a) / samples
    For i As Integer = 0 To samples
        Dim y As Double = f(a + i * stepx)
        If y < ymin Then ymin = y
        If y > ymax Then ymax = y
    Next
    ' Add a little padding
    Dim pad As Double = (ymax - ymin) * 0.15
    If pad < 0.5 Then pad = 0.5
    ymin -= pad
    ymax += pad
    ' Always include y=0 for better rectangle visualization
    If ymin > 0 Then ymin = -pad
    If ymax < 0 Then ymax = pad
End Sub

' ------------------------------------------------------------
' Draw the graph + rectangles
' mode: 0 = LRAM, 1 = MRAM, 2 = RRAM, 3 = all three
' ------------------------------------------------------------
Sub DrawGraph(a As Double, b As Double, n As Integer, mode As Integer)
    Const SCRW = 1000
    Const SCRH = 700
    
    ScreenRes SCRW, SCRH, 32
    WindowTitle "RAM Calculus Analyzer - LRAM / MRAM / RRAM"
    Color RGB(0, 0, 0), RGB(255, 255, 255)
    Cls
    
    Dim ymin As Double, ymax As Double
    FindYRange(a, b, ymin, ymax)
    
    ' Set Cartesian coordinate system (y increases upward)
    Dim xmin As Double = a - (b - a) * 0.05
    Dim xmax As Double = b + (b - a) * 0.05
    Window (xmin, ymin) - (xmax, ymax)
    
    ' Draw axes
    Line (xmin, 0) - (xmax, 0), RGB(80, 80, 80)
    Line (0, ymin) - (0, ymax), RGB(80, 80, 80)
    
    ' Draw the function curve
    Dim steps As Integer = 800
    Dim dxplot As Double = (b - a) / steps
    Dim x As Double = a
    Dim y As Double = f(x)
    PSet (x, y), RGB(0, 0, 200)
    For i As Integer = 1 To steps
        x = a + i * dxplot
        y = f(x)
        Line -(x, y), RGB(0, 0, 200)
    Next
    
    ' Draw rectangles
    Dim dx As Double = (b - a) / n
    Dim col As UInteger
    
    For i As Integer = 0 To n - 1
        Dim leftx As Double = a + i * dx
        Dim rightx As Double = leftx + dx
        Dim height As Double
        Dim rectcol As UInteger
        
        Select Case mode
        Case 0  ' LRAM
            height = f(leftx)
            rectcol = RGB(255, 100, 100)
        Case 1  ' MRAM
            height = f(leftx + dx / 2)
            rectcol = RGB(100, 200, 100)
        Case 2  ' RRAM
            height = f(rightx)
            rectcol = RGB(100, 100, 255)
        Case 3  ' All three (offset slightly for visibility)
            ' Draw LRAM
            height = f(leftx)
            Line (leftx, 0) - (rightx, height), RGB(255, 80, 80), B
            ' Draw MRAM
            height = f(leftx + dx / 2)
            Line (leftx + dx * 0.05, 0) - (rightx - dx * 0.05, height), RGB(80, 180, 80), B
            ' Draw RRAM
            height = f(rightx)
            Line (leftx + dx * 0.1, 0) - (rightx - dx * 0.1, height), RGB(80, 80, 255), B
            Continue For
        End Select
        
        ' Draw single mode rectangle (filled outline)
        Line (leftx, 0) - (rightx, height), rectcol, B
        ' Optional light fill
        Line (leftx, 0) - (rightx, height), RGB((rectcol Shr 16 And 255) \ 3 + 220, _
                                               (rectcol Shr 8 And 255) \ 3 + 220, _
                                               (rectcol And 255) \ 3 + 220), BF
        Line (leftx, 0) - (rightx, height), rectcol, B
    Next
    
    ' Labels
    Draw String (PMap(xmin + (xmax - xmin) * 0.02, 0), PMap(ymax - (ymax - ymin) * 0.05, 1)), _
        "Function (blue)", RGB(0, 0, 150)
    
    Select Case mode
    Case 0: Draw String (PMap(xmin + (xmax - xmin) * 0.02, 0), PMap(ymax - (ymax - ymin) * 0.10, 1)), "LRAM rectangles", RGB(200, 0, 0)
    Case 1: Draw String (PMap(xmin + (xmax - xmin) * 0.02, 0), PMap(ymax - (ymax - ymin) * 0.10, 1)), "MRAM rectangles", RGB(0, 140, 0)
    Case 2: Draw String (PMap(xmin + (xmax - xmin) * 0.02, 0), PMap(ymax - (ymax - ymin) * 0.10, 1)), "RRAM rectangles", RGB(0, 0, 200)
    Case 3: Draw String (PMap(xmin + (xmax - xmin) * 0.02, 0), PMap(ymax - (ymax - ymin) * 0.10, 1)), "LRAM(red) MRAM(green) RRAM(blue)", RGB(80, 80, 80)
    End Select
    
    Draw String (PMap(xmin + (xmax - xmin) * 0.02, 0), PMap(ymin + (ymax - ymin) * 0.04, 1)), _
        "Press L/M/R/A to switch view | ESC or any other key to exit", RGB(60, 60, 60)
End Sub

' ------------------------------------------------------------
' Main program
' ------------------------------------------------------------
Dim a As Double, b As Double
Dim n As Integer
Dim key As String

Print "=== RAM Calculus Function Analyzer ==="
Print "Edit the f(x) function in the source to change the curve."
Print
Input "Lower limit a: ", a
Input "Upper limit b: ", b
Input "Number of rectangles n: ", n

If n < 1 Then n = 1
If a > b Then Swap a, b

Print
Print "Numerical Results:"
Print Using "LRAM = ##.######"; CalcLRAM(a, b, n)
Print Using "MRAM = ##.######"; CalcMRAM(a, b, n)
Print Using "RRAM = ##.######"; CalcRRAM(a, b, n)
Print
Print "Press any key to open the graph..."
Sleep

Dim mode As Integer = 0   ' start with LRAM

Do
    DrawGraph(a, b, n, mode)
    key = UCase(InKey)
    Select Case key
    Case "L": mode = 0
    Case "M": mode = 1
    Case "R": mode = 2
    Case "A": mode = 3
    Case Else: Exit Do
    End Select
Loop

End
