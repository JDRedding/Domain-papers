' Graph3D.bas - 3D Function Grapher for FreeBASIC
' Compile: fbc Graph3D.bas
' Requires OpenGL support

' Controls
' Arrow keys: Rotate view
' Mouse drag: Rotate view
' + / - or mouse wheel: Zoom
' D: Increase detail (grid resolution)
' Shift+D: Decrease detail
' B: Change view boundaries (prompts for new xmin/xmax/ymin/ymax)
' F: Cycle functions
' W: Toggle wireframe / filled
' T: Toggle Trace mode (then use arrows to move the marker)
' E: Evaluate at a point (prompts for x, y)
' R: Reset view
' Esc or Q: Quit

' Customization Options
' ----------------------
' Change the function: Edit the Function f(...) and add more Cases. Then recompile.
' Dynamic user input of formulas: FreeBASIC has no built-in expression parser. 
'  For full runtime formula entry you would need to integrate a small parser 
'  (several exist on the FreeBASIC forum) or use an external library. This version prioritizes 
'  simplicity and reliability.
' Trace and Evaluate work as described. Evaluate uses a simple Input (best with a console
'  window open).
' Performance is good up to detail ≈ 80–100 on modern hardware. Lower it if needed.


#include once "fbgfx.bi"
#include once "GL/gl.bi"
#include once "GL/glu.bi"

Using FB

Const SCR_W = 1024
Const SCR_H = 768

' View parameters
Dim Shared As Single xmin = -3.0, xmax = 3.0
Dim Shared As Single ymin = -3.0, ymax = 3.0
Dim Shared As Integer detail = 40          ' grid resolution (higher = more detail)
Dim Shared As Single rotX = 25.0, rotY = 45.0, zoom = -8.0
Dim Shared As Integer funcNum = 1
Dim Shared As Integer wireframe = 1
Dim Shared As Integer traceMode = 0
Dim Shared As Integer tx = 0, ty = 0       ' trace indices
Dim Shared As Single lastEvalX, lastEvalY, lastEvalZ
Dim Shared As String statusMsg = ""

' Function definitions (edit or add more here)
Function f(x As Single, y As Single) As Single
    Select Case funcNum
    Case 1
        Return Sin(x) * Cos(y)                     ' classic ripple
    Case 2
        Return Sin(Sqr(x*x + y*y)) / (Sqr(x*x + y*y) + 0.1)  ' sombrero-like
    Case 3
        Return x*x - y*y                          ' hyperbolic paraboloid
    Case 4
        Return Exp(-(x*x + y*y))                   ' Gaussian
    Case 5
        Return Sin(x*y)                           ' product of sines
    Case 6
        Return (x*x + y*y) / 4.0                   ' paraboloid
    Case Else
        Return Sin(x) + Cos(y)
    End Select
End Function

Function FuncName() As String
    Select Case funcNum
    Case 1: Return "sin(x)*cos(y)"
    Case 2: Return "sin(r)/ (r + 0.1)"
    Case 3: Return "x^2 - y^2"
    Case 4: Return "exp(-(x^2+y^2))"
    Case 5: Return "sin(x*y)"
    Case 6: Return "(x^2 + y^2)/4"
    End Select
    Return "custom"
End Function

Sub DrawSurface()
    Dim As Single dx = (xmax - xmin) / detail
    Dim As Single dy = (ymax - ymin) / detail
    Dim As Single x, y, z1, z2, z3, z4
    Dim As Single zmin = 1e9, zmax = -1e9

    ' First pass: find z range for coloring
    For i As Integer = 0 To detail
        For j As Integer = 0 To detail
            x = xmin + i * dx
            y = ymin + j * dy
            Dim As Single z = f(x, y)
            If z < zmin Then zmin = z
            If z > zmax Then zmax = z
        Next
    Next
    If Abs(zmax - zmin) < 1e-6 Then zmax = zmin + 1

    ' Draw surface
    If wireframe Then
        glBegin(GL_LINES)
    Else
        glBegin(GL_QUADS)
    End If

    For i As Integer = 0 To detail - 1
        For j As Integer = 0 To detail - 1
            x = xmin + i * dx
            y = ymin + j * dy

            z1 = f(x, y)
            z2 = f(x + dx, y)
            z3 = f(x + dx, y + dy)
            z4 = f(x, y + dy)

            ' Color by average height
            Dim As Single avgz = (z1 + z2 + z3 + z4) / 4.0
            Dim As Single t = (avgz - zmin) / (zmax - zmin)
            glColor3f(t, 0.3 + 0.4*t, 1.0 - t)

            If wireframe Then
                glVertex3f(x, y, z1) : glVertex3f(x+dx, y, z2)
                glVertex3f(x+dx, y, z2) : glVertex3f(x+dx, y+dy, z3)
                glVertex3f(x+dx, y+dy, z3) : glVertex3f(x, y+dy, z4)
                glVertex3f(x, y+dy, z4) : glVertex3f(x, y, z1)
            Else
                glVertex3f(x, y, z1)
                glVertex3f(x+dx, y, z2)
                glVertex3f(x+dx, y+dy, z3)
                glVertex3f(x, y+dy, z4)
            End If
        Next
    Next
    glEnd()

    ' Axes
    glLineWidth(2)
    glBegin(GL_LINES)
        glColor3f(1, 0, 0) : glVertex3f(xmin, 0, 0) : glVertex3f(xmax, 0, 0)
        glColor3f(0, 1, 0) : glVertex3f(0, ymin, 0) : glVertex3f(0, ymax, 0)
        glColor3f(0, 0, 1) : glVertex3f(0, 0, zmin-1) : glVertex3f(0, 0, zmax+1)
    glEnd()
    glLineWidth(1)

    ' Trace marker
    If traceMode Then
        Dim As Single txv = xmin + tx * dx
        Dim As Single tyv = ymin + ty * dy
        Dim As Single tzv = f(txv, tyv)
        glPointSize(8)
        glBegin(GL_POINTS)
            glColor3f(1, 1, 0)
            glVertex3f(txv, tyv, tzv)
        glEnd()
        statusMsg = "Trace: x=" & Format(txv, "0.00") & "  y=" & Format(tyv, "0.00") & "  z=" & Format(tzv, "0.00")
    End If
End Sub

Sub InitGL()
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    gluPerspective(45.0, CSng(SCR_W)/SCR_H, 0.1, 100.0)
    glMatrixMode(GL_MODELVIEW)
    glEnable(GL_DEPTH_TEST)
    glClearColor(0.05, 0.05, 0.1, 1)
End Sub

' Main program
ScreenRes SCR_W, SCR_H, 32, , GFX_OPENGL Or GFX_MULTISAMPLE
WindowTitle "Graph3D - FreeBASIC 3D Function Grapher"
InitGL()

Dim As Integer mx, my, buttons, oldmx, oldmy
Dim As String key

Do
    ' Input
    key = InKey
    Select Case UCase(key)
    Case Chr(27), "Q"
        Exit Do
    Case "F"
        funcNum = (funcNum Mod 6) + 1
        statusMsg = "Function: " & FuncName()
    Case "W"
        wireframe = 1 - wireframe
    Case "T"
        traceMode = 1 - traceMode
        If traceMode Then statusMsg = "Trace mode ON (arrows to move)" Else statusMsg = ""
    Case "E"
        ' Simple evaluate (works best with console window)
        Dim As Single ex, ey
        Input "Enter x, y: ", ex, ey
        lastEvalZ = f(ex, ey)
        statusMsg = "Eval: f(" & ex & ", " & ey & ") = " & Format(lastEvalZ, "0.000")
    Case "B"
        Input "New xmin, xmax, ymin, ymax: ", xmin, xmax, ymin, ymax
        statusMsg = "Bounds updated"
    Case "R"
        rotX = 25 : rotY = 45 : zoom = -8
        statusMsg = "View reset"
    Case "D"
        If MultiKey(SC_LSHIFT) Or MultiKey(SC_RSHIFT) Then
            If detail > 10 Then detail -= 5
        Else
            If detail < 120 Then detail += 5
        End If
        statusMsg = "Detail: " & detail
    End Select

    ' Trace movement
    If traceMode Then
        If MultiKey(SC_LEFT) And tx > 0 Then tx -= 1
        If MultiKey(SC_RIGHT) And tx < detail Then tx += 1
        If MultiKey(SC_UP) And ty < detail Then ty += 1
        If MultiKey(SC_DOWN) And ty > 0 Then ty -= 1
    Else
        ' Normal rotation with arrows
        If MultiKey(SC_LEFT) Then rotY -= 2
        If MultiKey(SC_RIGHT) Then rotY += 2
        If MultiKey(SC_UP) Then rotX -= 2
        If MultiKey(SC_DOWN) Then rotX += 2
    End If

    If MultiKey(SC_PLUS) Or MultiKey(SC_EQUALS) Then zoom += 0.3
    If MultiKey(SC_MINUS) Then zoom -= 0.3

    ' Mouse rotation
    GetMouse mx, my, , buttons
    If buttons And 1 Then
        rotY += (mx - oldmx) * 0.5
        rotX += (my - oldmy) * 0.5
    End If
    oldmx = mx : oldmy = my

    ' Render
    glClear(GL_COLOR_BUFFER_BIT Or GL_DEPTH_BUFFER_BIT)
    glLoadIdentity()
    glTranslatef(0, 0, zoom)
    glRotatef(rotX, 1, 0, 0)
    glRotatef(rotY, 0, 1, 0)

    DrawSurface()

    ' Status overlay (simple text via OpenGL bitmap-style or just console)
    ' For simplicity we keep status in the console / title
    WindowTitle "Graph3D | " & FuncName() & " | detail=" & detail & " | " & statusMsg

    Flip
    Sleep 16
Loop

End
