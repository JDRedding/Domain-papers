' ============================================================================
' Calculus Formula Database (Calc I, II, III)
' FreeBASIC .BAS - Data-driven version with study features
' ============================================================================

Option Explicit

Type Formula
    ID       As Integer
    Category As String
    Name     As String
    Equation As String
End Type

Sub PauseScreen()
    Print
    Print "Press any key to continue...";
    Sleep
End Sub

Sub WrapPrint(ByVal s As String)
    ' Word-aware wrap at ~70 characters
    Dim p As Integer
    Do While Len(s) > 70
        p = InStrRev(Left(s, 70), " ")
        If p = 0 Then p = 70
        Print "  "; Left(s, p)
        s = LTrim(Mid(s, p + 1))
    Loop
    If Len(s) > 0 Then Print "  "; s
End Sub

Sub InitFormulas(ByRef f() As Formula)
    Dim i As Integer = 0
    ReDim f(0)

    ' ---- Limits ----
    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Limits"
    f(i).Name = "Special: sin x / x"
    f(i).Equation = "lim (x->0) sin(x)/x = 1"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Limits"
    f(i).Name = "Special: (1-cos x)/x"
    f(i).Equation = "lim (x->0) (1-cos x)/x = 0"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Limits"
    f(i).Name = "L'Hopital's Rule"
    f(i).Equation = "lim f/g = lim f'/g'  (0/0 or inf/inf)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Limits"
    f(i).Name = "Derivative Definition"
    f(i).Equation = "f'(x) = lim[h->0] (f(x+h) - f(x))/h"

    ' ---- Derivatives ----
    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Power Rule"
    f(i).Equation = "d/dx [x^n] = n*x^(n-1)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Product Rule"
    f(i).Equation = "(f*g)' = f'g + f g'"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Quotient Rule"
    f(i).Equation = "(f/g)' = (f'g - f g') / g^2"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Chain Rule"
    f(i).Equation = "d/dx [f(g(x))] = f'(g(x))*g'(x)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Derivative of sin x"
    f(i).Equation = "d/dx [sin x] = cos x"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Derivative of cos x"
    f(i).Equation = "d/dx [cos x] = -sin x"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Derivative of tan x"
    f(i).Equation = "d/dx [tan x] = sec^2 x"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Derivative of e^x"
    f(i).Equation = "d/dx [e^x] = e^x"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Derivative of ln x"
    f(i).Equation = "d/dx [ln x] = 1/x  (x > 0)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Derivative of arctan x"
    f(i).Equation = "d/dx [arctan x] = 1/(1+x^2)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Derivatives"
    f(i).Name = "Derivative of arcsin x"
    f(i).Equation = "d/dx [arcsin x] = 1/sqrt(1-x^2)"

    ' ---- Integrals ----
    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Power Rule"
    f(i).Equation = "Integral x^n dx = x^(n+1)/(n+1) + C  (n <> -1)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Integral of 1/x"
    f(i).Equation = "Integral (1/x) dx = ln|x| + C"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Integral of e^x"
    f(i).Equation = "Integral e^x dx = e^x + C"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Integral of sin x"
    f(i).Equation = "Integral sin(x) dx = -cos(x) + C"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Integral of cos x"
    f(i).Equation = "Integral cos(x) dx = sin(x) + C"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Integral of sec^2 x"
    f(i).Equation = "Integral sec^2(x) dx = tan(x) + C"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Integration by Parts"
    f(i).Equation = "Integral u dv = uv - Integral v du"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Integrals"
    f(i).Name = "Fundamental Theorem (Part 2)"
    f(i).Equation = "Integral[a to b] f(x) dx = F(b) - F(a)"

    ' ---- Series ----
    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Series"
    f(i).Name = "Geometric Series"
    f(i).Equation = "Sum a*r^n = a/(1-r)  for |r| < 1"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Series"
    f(i).Name = "p-Series"
    f(i).Equation = "Sum 1/n^p converges when p > 1"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Series"
    f(i).Name = "Maclaurin: e^x"
    f(i).Equation = "e^x = Sum x^n / n!"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Series"
    f(i).Name = "Maclaurin: sin x"
    f(i).Equation = "sin x = Sum (-1)^n * x^(2n+1) / (2n+1)!"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Series"
    f(i).Name = "Maclaurin: ln(1+x)"
    f(i).Equation = "ln(1+x) = Sum[(-1)^(n+1)*x^n/n], n=1 to infinity"

    ' ---- Calc III ----
    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Dot Product"
    f(i).Equation = "u . v = |u| |v| cos(theta)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Cross Product Magnitude"
    f(i).Equation = "|u x v| = |u| |v| sin(theta)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Gradient"
    f(i).Equation = "grad(f) = <fx, fy, fz>"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Directional Derivative"
    f(i).Equation = "Du f = grad(f) . u   (u unit vector)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Multivariable Chain Rule"
    f(i).Equation = "dz/ds = fx*dx/ds + fy*dy/ds"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Tangent Plane"
    f(i).Equation = "z = f(x0,y0) + fx(x0,y0)(x-x0) + fy(x0,y0)(y-y0)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Second Derivative Test"
    f(i).Equation = "D = fxx*fyy - (fxy)^2"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Spherical Volume Element"
    f(i).Equation = "dV = rho^2 sin(phi) drho dphi dtheta"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Divergence"
    f(i).Equation = "div(F) = dP/dx + dQ/dy + dR/dz"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Green's Theorem"
    f(i).Equation = "closed line integral = double integral (dQ/dx - dP/dy)"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Divergence Theorem"
    f(i).Equation = "flux through closed surface = triple integral of div F"

    i += 1: ReDim Preserve f(i)
    f(i).ID = i: f(i).Category = "Calc III"
    f(i).Name = "Stokes' Theorem"
    f(i).Equation = "closed line integral = surface integral of curl F"

    ReDim Preserve f(i)
End Sub

Sub BrowseByCategory(f() As Formula)
    Dim cat As String, i As Integer
    Print
    Input "Enter category (Limits, Derivatives, Integrals, Series, Calc III, or All): ", cat
    Cls
    Print "Formulas in category: "; cat
    Print String(60, "-")
    For i = 1 To UBound(f)
        If LCase(f(i).Category) = LCase(cat) Or LCase(cat) = "all" Then
            Print "["; f(i).ID; "] "; f(i).Name
            WrapPrint(f(i).Equation)
            Print
        End If
    Next
    PauseScreen()
End Sub

Sub SearchFormulas(f() As Formula)
    Dim term As String, i As Integer, found As Integer
    Print
    Input "Search term: ", term
    term = LCase(term)
    Cls
    Print "Search results for: "; term
    Print String(60, "-")
    found = 0
    For i = 1 To UBound(f)
        If InStr(LCase(f(i).Name), term) Or _
           InStr(LCase(f(i).Equation), term) Or _
           InStr(LCase(f(i).Category), term) Then
            Print "["; f(i).ID; "] "; f(i).Category; " | "; f(i).Name
            WrapPrint(f(i).Equation)
            Print
            found += 1
        End If
    Next
    If found = 0 Then Print "No matches found."
    PauseScreen()
End Sub

Sub FlashCard(f() As Formula)
    Dim n As Integer
    n = Int(Rnd * UBound(f)) + 1

    Cls
    Print "FLASH CARD"
    Print String(40, "-")
    Print "Category: "; f(n).Category
    Print "Name:     "; f(n).Name
    Print
    Print "Press any key to reveal the equation..."
    Sleep
    Print
    Print "Equation:"
    WrapPrint(f(n).Equation)
    PauseScreen()
End Sub

Sub RandomFormula(f() As Formula)
    Dim n As Integer
    n = Int(Rnd * UBound(f)) + 1
    Cls
    Print "RANDOM FORMULA"
    Print String(40, "-")
    Print "["; f(n).ID; "] "; f(n).Category; " | "; f(n).Name
    WrapPrint(f(n).Equation)
    PauseScreen()
End Sub

Sub QuizMode(f() As Formula)
    Dim n As Integer, ans As String, score As Integer, total As Integer
    Dim key As String
    score = 0
    total = 0

    Print "Quiz Mode (enter 'q' to quit)"
    Print "Answer with the key part of the equation (case-insensitive)."
    Print

    Do
        n = Int(Rnd * UBound(f)) + 1
        Cls
        Print "QUIZ"
        Print String(40, "-")
        Print "What is the formula for:"
        Print f(n).Name; "  ("; f(n).Category; ")"
        Print
        Input "Your answer (or q to quit): ", ans
        If LCase(ans) = "q" Then Exit Do

        total += 1
        ' Simple keyword match against the equation
        If InStr(LCase(f(n).Equation), LCase(ans)) > 0 And Len(ans) > 2 Then
            Print "Correct!"
            score += 1
        Else
            Print "Incorrect."
            Print "Correct equation:"
            WrapPrint(f(n).Equation)
        End If
        Print
        Print "Score: "; score; "/"; total
        Print "Press any key for next question..."
        Sleep
    Loop

    Print
    Print "Final score: "; score; "/"; total
    PauseScreen()
End Sub

' ---------- Main ----------
Dim formulas() As Formula
Dim choice As String

Randomize Timer          ' Seed once at startup
InitFormulas(formulas())

Do
    Cls
    Print "============================================================"
    Print "CALCULUS FORMULA DATABASE (I, II, III)"
    Print "============================================================"
    Print
    Print "1. Browse by category"
    Print "2. Search formulas"
    Print "3. Random formula"
    Print "4. Flash card mode"
    Print "5. Quiz mode"
    Print "6. Exit"
    Print
    Input "Selection: ", choice

    Select Case choice
        Case "1": BrowseByCategory(formulas())
        Case "2": SearchFormulas(formulas())
        Case "3": RandomFormula(formulas())
        Case "4": FlashCard(formulas())
        Case "5": QuizMode(formulas())
        Case "6": Exit Do
        Case Else
            Print "Invalid choice."
            Sleep 1000
    End Select
Loop

Cls
Print "Thank you for using the Calculus Formula Database."
End
