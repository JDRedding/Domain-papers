'========================================
' Games, Math & Science Center - FreeBASIC
'========================================

Option Explicit

Const PIE As Double = 3.141592653589793

Dim Shared choice As Integer

Declare Sub MainMenu()
Declare Sub GamesMenu()
Declare Sub CalculatorMenu()
Declare Sub ScienceMenu()
Declare Sub WarGame()
Declare Sub GradeCalc()
Declare Sub WorkSpeed()
Declare Sub CalcABC()
Declare Sub CalcCBA()
Declare Sub VolumeCylinder()
Declare Sub VolumeRect()
Declare Sub AreaCircle()
Declare Sub CircCircle()

Cls
Print "Games, Math & Science Center"
Print "Has Booted"
Print
Print "Press ENTER"
Sleep

MainMenu()

'========================================
Sub MainMenu()

    Do
        Cls
        Print "--------------------"
        Print "--------------------"
        Print "--------------------"
        Print "--------------------"
        Print "--------------------"
        Print

        Print "1. Games"
        Print "2. Calculator"
        Print "3. Grade"
        Print "4. Science"
        Print "5. Exit"
        Print

        Input "Choice"; choice

        Select Case choice
            Case 1
                GamesMenu()
            Case 2
                CalculatorMenu()
            Case 3
                GradeCalc()
            Case 4
                ScienceMenu()
            Case 5
                End
        End Select

    Loop

End Sub

'========================================
Sub GamesMenu()

    Do
        Cls
        Print "Games"
        Print
        Print "1. War"
        Print "2. Back"

        Input "Choice"; choice

        Select Case choice
            Case 1
                WarGame()
            Case 2
                Exit Sub
        End Select

    Loop

End Sub

'========================================
Sub WarGame()

    Dim y As Integer

    Cls
    Randomize Timer
    y = Int(Rnd * 2) + 2    ' Random 2-3

    Print "Random Number = "; y
    Print
    Print "Press ENTER..."
    Sleep

End Sub

'========================================
Sub CalculatorMenu()

    Do
        Cls
        Print "Calculator"
        Print
        Print "1. CBA (Find A)"
        Print "2. ABC (Find C)"
        Print "3. Volume Cylinder"
        Print "4. Volume Rectangular Prism"
        Print "5. Area Circle"
        Print "6. Circumference Circle"
        Print "7. Back"

        Input "Choice"; choice

        Select Case choice
            Case 1
                CalcCBA()
            Case 2
                CalcABC()
            Case 3
                VolumeCylinder()
            Case 4
                VolumeRect()
            Case 5
                AreaCircle()
            Case 6
                CircCircle()
            Case 7
                Exit Sub
        End Select

    Loop

End Sub

'========================================
Sub CalcCBA()

    Dim c As Double
    Dim b As Double
    Dim a2 As Double

    Cls
    Print "C^2 - B^2 = A^2"
    Input "C = "; c
    Input "B = "; b

    a2 = c^2 - b^2

    Cls
    Print "A^2 = "; a2

    If a2 >= 0 Then
        Print "A   = "; Sqr(a2)
    Else
        Print "No Real Solution"
    End If

    Sleep

End Sub

'========================================
Sub CalcABC()

    Dim a As Double
    Dim b As Double

    Cls
    Print "A^2 + B^2 = C^2"

    Input "A = "; a
    Input "B = "; b

    Cls
    Print "C^2 = "; a^2 + b^2
    Print "C   = "; Sqr(a^2 + b^2)

    Sleep

End Sub

'========================================
Sub VolumeCylinder()

    Dim h As Double
    Dim r As Double

    Cls
    Print "Cylinder Volume"
    Print "V = PI * r^2 * h"

    Input "Height = "; h
    Input "Radius = "; r

    Cls
    Print "Volume = "; PIE * r^2 * h

    Sleep

End Sub

'========================================
Sub VolumeRect()

    Dim h As Double
    Dim b As Double
    Dim d As Double

    Cls
    Print "Rectangular Prism Volume"
    Print "V = h * b * d"

    Input "Height = "; h
    Input "Width  = "; b
    Input "Depth  = "; d

    Cls
    Print "Volume = "; h * b * d

    Sleep

End Sub

'========================================
Sub AreaCircle()

    Dim r As Double

    Cls
    Print "Area of Circle"
    Print "A = PI * r^2"

    Input "Radius = "; r

    Cls
    Print "Area = "; PIE * r^2

    Sleep

End Sub

'========================================
Sub CircCircle()

    Dim d As Double

    Cls
    Print "Circumference"
    Print "C = PI * d"

    Input "Diameter = "; d

    Cls
    Print "Circumference = "; PIE * d

    Sleep

End Sub

'========================================
Sub GradeCalc()

    Dim rightAns As Double
    Dim totalAns As Double

    Cls
    Print "Grade Calculator"

    Input "Right Answers = "; rightAns
    Input "Total Questions = "; totalAns

    Cls

    If totalAns <> 0 Then
        Print "% Grade = "; (rightAns / totalAns) * 100; "%"
    Else
        Print "Division by zero error."
    End If

    Sleep

End Sub

'========================================
Sub ScienceMenu()

    Do
        Cls

        Print "Science"
        Print
        Print "1. WS"
        Print "2. Back"

        Input "Choice"; choice

        Select Case choice
            Case 1
                WorkSpeed()
            Case 2
                Exit Sub
        End Select

    Loop

End Sub

'========================================
Sub WorkSpeed()

    Dim f As Double
    Dim w As Double

    Cls
    Print "WS = F * W"

    Input "F = "; f
    Input "W = "; w

    Cls
    Print "Speed = "; f * w

    Sleep

End Sub
'========================================
