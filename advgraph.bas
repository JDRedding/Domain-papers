' AdvancedGraph - FreeBASIC - Draws shade lines for functions.
' Compile: fbc advgraph.bas
' Or with graphics: fbc -s gui advgraph.bas (optional)

#Include "fbgfx.bi"

Const PI = 3.141592653589793

' Window & settings
Dim Shared As Double xmin = -10, xmax = 10
Dim Shared As Double ymin = -10, ymax = 10
Dim Shared As Double interval = 1
Dim Shared As String expr = "x^2"

' Simple recursive descent parser
Dim Shared As String parseStr
Dim Shared As Integer parsePos

Declare Function ParseExpression() As Double
Declare Function ParseTerm() As Double
Declare Function ParseFactor() As Double
Declare Function ParsePower() As Double
Declare Function Eval(x As Double) As Double

Function GetChar() As String
    If parsePos > Len(parseStr) Then Return ""
    Return Mid(parseStr, parsePos, 1)
End Function

Sub SkipSpace()
    While parsePos <= Len(parseStr) And Mid(parseStr, parsePos, 1) = " "
        parsePos += 1
    Wend
End Sub

Function ParseNumber() As Double
    Dim As String num
    SkipSpace
    While parsePos <= Len(parseStr)
        Dim c As String = Mid(parseStr, parsePos, 1)
        If (c >= "0" And c <= "9") Or c = "." Then
            num += c
            parsePos += 1
        Else
            Exit While
        End If
    Wend
    Return Val(num)
End Function

Function ParseFunction(name As String) As Double
    parsePos += Len(name)
    SkipSpace
    If GetChar() <> "(" Then Return 0
    parsePos += 1
    Dim As Double arg = ParseExpression()
    SkipSpace
    If GetChar() = ")" Then parsePos += 1
    Select Case LCase(name)
        Case "sin": Return Sin(arg)
        Case "cos": Return Cos(arg)
        Case "tan": Return Tan(arg)
        Case "exp": Return Exp(arg)
        Case "log": Return Log(arg)
        Case "sqrt": Return Sqr(arg)
        Case "abs": Return Abs(arg)
    End Select
    Return 0
End Function

Function ParseFactor() As Double
    SkipSpace
    Dim c As String = GetChar()
    If c = "(" Then
        parsePos += 1
        Dim As Double v = ParseExpression()
        SkipSpace
        If GetChar() = ")" Then parsePos += 1
        Return v
    ElseIf c = "-" Then
        parsePos += 1
        Return -ParseFactor()
    ElseIf c = "+" Then
        parsePos += 1
        Return ParseFactor()
    ElseIf (c >= "0" And c <= "9") Or c = "." Then
        Return ParseNumber()
    ElseIf LCase(Mid(parseStr, parsePos, 1)) = "x" Then
        parsePos += 1
        Return 0   ' placeholder, real value injected in Eval
    Else
        ' functions
        Dim As String func = ""
        While parsePos <= Len(parseStr)
            c = LCase(Mid(parseStr, parsePos, 1))
            If c >= "a" And c <= "z" Then
                func += c
                parsePos += 1
            Else
                Exit While
            End If
        Wend
        If func <> "" Then
            parsePos -= Len(func)
            Return ParseFunction(func)
        End If
    End If
    Return 0
End Function

Function ParsePower() As Double
    Dim As Double left = ParseFactor()
    SkipSpace
    If GetChar() = "^" Then
        parsePos += 1
        Dim As Double right = ParsePower()
        Return left ^ right
    End If
    Return left
End Function

Function ParseTerm() As Double
    Dim As Double left = ParsePower()
    Do
        SkipSpace
        Dim c As String = GetChar()
        If c = "*" Then
            parsePos += 1
            left *= ParsePower()
        ElseIf c = "/" Then
            parsePos += 1
            Dim As Double d = ParsePower()
            If d <> 0 Then left /= d
        Else
            Exit Do
        End If
    Loop
    Return left
End Function

Function ParseExpression() As Double
    Dim As Double left = ParseTerm()
    Do
        SkipSpace
        Dim c As String = GetChar()
        If c = "+" Then
            parsePos += 1
            left += ParseTerm()
        ElseIf c = "-" Then
            parsePos += 1
            left -= ParseTerm()
        Else
            Exit Do
        End If
    Loop
    Return left
End Function

Function Eval(x As Double) As Double
    ' Inject x by temporarily replacing "x" with its value (simple method)
    Dim As String saved = expr
    Dim As String temp = ""
    Dim i As Integer
    For i = 1 To Len(expr)
        If LCase(Mid(expr, i, 1)) = "x" Then
            temp += Str(x)
        Else
            temp += Mid(expr, i, 1)
        End If
    Next
    parseStr = temp
    parsePos = 1
    Return ParseExpression()
End Function

Sub DrawAxes
    Window (xmin, ymin)-(xmax, ymax)
    Line (xmin, 0)-(xmax, 0), 15
    Line (0, ymin)-(0, ymax), 15
End Sub

Sub PlotFunction(thick As Integer = 0)
    Dim As Double x, y, stepx
    stepx = (xmax - xmin) / 600
    For x = xmin To xmax Step stepx
        y = Eval(x)
        If y >= ymin And y <= ymax Then
            If thick Then
                Circle (x, y), (xmax-xmin)/200, 11,,,,F
            Else
                PSet (x, y), 11
            End If
        End If
    Next
End Sub

Sub ShadeAbove
    Screen 19
    Cls
    DrawAxes
    PlotFunction
    Dim As Double x, y
    For x = xmin To xmax Step interval
        y = Eval(x)
        If y < ymax Then
            Line (x, y)-(x, ymax), 12
        End If
    Next
    WindowTitle "Shade Above - Press any key"
    Sleep
End Sub

Sub ShadeBelow
    Screen 19
    Cls
    DrawAxes
    PlotFunction
    Dim As Double x, y
    For x = xmin To xmax Step interval
        y = Eval(x)
        If y > ymin Then
            Line (x, ymin)-(x, y), 12
        End If
    Next
    WindowTitle "Shade Below - Press any key"
    Sleep
End Sub

Sub ThickLine
    Screen 19
    Cls
    DrawAxes
    PlotFunction(1)
    WindowTitle "Thick Line - Press any key"
    Sleep
End Sub

Sub SetWindow
    Input "xMin"; xmin
    Input "xMax"; xmax
    Input "yMin"; ymin
    Input "yMax"; ymax
End Sub

Sub ChangeInterval
    Input "Interval"; interval
    If interval <= 0 Then interval = 1
End Sub

Sub MainMenu
    Dim As String choice
    Do
        Cls
        Print "=== AdvancedGraph (FreeBASIC) ==="
        Print "Current: y = "; expr
        Print "Window: ["; xmin; ","; xmax; "] x ["; ymin; ","; ymax; "]"
        Print "Interval: "; interval
        Print
        Print "1. Shade above"
        Print "2. Shade below"
        Print "3. Thick line"
        Print "4. Window"
        Print "5. Change interval"
        Print "6. New function"
        Print "7. Quit"
        Print
        Input "Choice"; choice

        Select Case choice
            Case "1": ShadeAbove
            Case "2": ShadeBelow
            Case "3": ThickLine
            Case "4": SetWindow
            Case "5": ChangeInterval
            Case "6": Input "y = "; expr
            Case "7": Exit Do
        End Select
    Loop
End Sub

' Start
Screen 0
Print "AdvancedGraph - FreeBASIC port"
Print "Supported: + - * / ^ ( ) sin cos tan exp log sqrt abs x"
Print
Input "y = "; expr
MainMenu
End
