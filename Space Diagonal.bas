' ============================================
' 3D Pythagorean Theorem / Space Diagonal
' ============================================

Dim As Double A, B, C
Dim As Double SumOfSquares, Diagonal
Dim As Double FaceAB, FaceAC, FaceBC
Dim As Double Volume, SurfaceArea
Dim As String Again
Dim As Integer Choice

Do
    Cls
    Print "============================================"
    Print "   3D Space Diagonal Calculator (Expanded)"
    Print "============================================"
    Print
    Print "1. Calculate space diagonal only"
    Print "2. Space diagonal + face diagonals"
    Print "3. Full box analysis (diagonal, faces, volume, surface)"
    Print "4. Exit"
    Print
    Input "Choose option (1-4): ", Choice

    If Choice = 4 Then Exit Do
    If Choice < 1 Or Choice > 3 Then
        Print "Invalid choice."
        Sleep 1000
        Continue Do
    End If

    Print
    Print "Enter the three edge lengths of the rectangular box:"
    Print "(must be positive numbers)"
    Print

    Do
        Input "Enter A: ", A
        If A <= 0 Then Print "A must be greater than 0."
    Loop Until A > 0

    Do
        Input "Enter B: ", B
        If B <= 0 Then Print "B must be greater than 0."
    Loop Until B > 0

    Do
        Input "Enter C: ", C
        If C <= 0 Then Print "C must be greater than 0."
    Loop Until C > 0

    ' Core calculations
    SumOfSquares = A ^ 2 + B ^ 2 + C ^ 2
    Diagonal = Sqr(SumOfSquares)

    FaceAB = Sqr(A ^ 2 + B ^ 2)
    FaceAC = Sqr(A ^ 2 + C ^ 2)
    FaceBC = Sqr(B ^ 2 + C ^ 2)

    Volume = A * B * C
    SurfaceArea = 2 * (A * B + A * C + B * C)

    ' Display results
    Print
    Print "--------------------------------------------"
    Print "Results"
    Print "--------------------------------------------"
    Print "A = "; A
    Print "B = "; B
    Print "C = "; C
    Print

    Print "Sum of squares:"
    Print "  A² + B² + C² = "; A ^ 2; " + "; B ^ 2; " + "; C ^ 2; " = "; SumOfSquares
    Print
    Print "Space diagonal (3D Pythagorean):"
    Print "  sqrt("; SumOfSquares; ") = "; Diagonal
    Print

    If Choice >= 2 Then
        Print "Face diagonals (2D Pythagorean):"
        Print "  Face AB (√(A²+B²)) = "; FaceAB
        Print "  Face AC (√(A²+C²)) = "; FaceAC
        Print "  Face BC (√(B²+C²)) = "; FaceBC
        Print
    End If

    If Choice = 3 Then
        Print "Additional properties:"
        Print "  Volume      = "; Volume
        Print "  Surface area = "; SurfaceArea
        Print
    End If

    Print "--------------------------------------------"
    Print "Final space diagonal: "; Diagonal
    Print "--------------------------------------------"

    Print
    Input "Calculate another? (Y/N): ", Again
    Again = UCase(Left(Again, 1))

Loop While Again = "Y"

Print
Print "Done. Press any key to exit."
Sleep
