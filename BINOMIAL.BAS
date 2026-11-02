'====================================================
' BINOMIAL.BAS
' Robust binomial expansion of (A + B)^N
' Works correctly even when A = 0 or B = 0
'====================================================

Option Explicit

Dim As Double A, B
Dim As Double Binom, TermValue
Dim As Integer N, Q

Print "Binomial Expansion Coefficients"
Print

Input "A = ", A
Input "B = ", B
Input "N = ", N

If N < 0 Then
    Print "Error: N must be >= 0"
    Sleep
    End
End If

Print
Print "("; A; " + "; B; ")^"; N
Print
Print "Q    Coefficient"
Print "-----------------------"

Binom = 1

For Q = 0 To N

    TermValue = Binom * (A ^ (N - Q)) * (B ^ Q)

    Print Using "##"; Q;
    Print "    ";
    Print TermValue

    If Q < N Then
        Binom = Binom * (N - Q) / (Q + 1)
    End If

Next Q

Print
Print "Done."
Sleep
