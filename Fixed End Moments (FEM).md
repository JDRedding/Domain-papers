**Fixed End Moments (FEM)**

Used in slope-deflection and moment distribution for indeterminate beams/frames.

**Variables**
- $L$ = span
- $P$ = concentrated load
- $w$ = intensity of distributed load (max value for triangles)
- $a,b$ = distances from A and B ($a+b=L$)
- $EI$ = flexural rigidity
- $\Delta$ = relative settlement of supports
- $(\text{FEM})_{AB}$ = moment at A (end A of member AB)
- $(\text{FEM})_{BA}$ = moment at B
- primed values = fixed at A, simple support at B

Sign convention follows the source diagram (end moments shown with the usual clockwise/counterclockwise arrows).

---       

These are the locked-end moments before joints are allowed to rotate. Superpose them with distribution and carry-over factors for the final analysis.

### Point load $P$ at midspan  

$(\text{FEM})_{AB} = \dfrac{PL}{8}$  

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{PL}{8}$   

**Fixed at A, simple at B**      

$(\text{FEM})'_{AB} = \dfrac{3PL}{16}$

### Point load $P$ at distance $a$ from A  

$(\text{FEM})_{AB} = \dfrac{P b^{2} a}{L^{2}}$ 

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{P a^{2} b}{L^{2}}$  

**Fixed at A, simple at B**   

$(\text{FEM})'_{AB} = \dfrac{P}{L^{2}}\left(b^{2}a + \dfrac{a^{2}b}{2}\right)$

### Two equal loads $P$ at $L/3$ points  

$(\text{FEM})_{AB} = \dfrac{2PL}{9}$  

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{2PL}{9}$  

**Fixed at A, simple at B**        

$(\text{FEM})'_{AB} = \dfrac{PL}{3}$

### Three equal loads $P$ at $L/4$ points  

$(\text{FEM})_{AB} = \dfrac{5PL}{16}$  

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{5PL}{16}$  

**Fixed at A, simple at B**       

$(\text{FEM})'_{AB} = \dfrac{45PL}{96}$

### Uniform load $w$ over full span  

$(\text{FEM})_{AB} = \dfrac{wL^{2}}{12}$  

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{wL^{2}}{12}$ 

**Fixed at A, simple at B**        

$(\text{FEM})'_{AB} = \dfrac{wL^{2}}{8}$

### Uniform load $w$ on left half only  

$(\text{FEM})_{AB} = \dfrac{11wL^{2}}{192}$ 

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{5wL^{2}}{192}$

**Fixed at A, simple at B**      

$(\text{FEM})'_{AB} = \dfrac{9wL^{2}}{128}$

### Triangular load (zero at A, $w$ at B)  

$(\text{FEM})_{AB} = \dfrac{wL^{2}}{20}$  

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{wL^{2}}{30}$ 

**Fixed at A, simple at B**        

$(\text{FEM})'_{AB} = \dfrac{wL^{2}}{15}$

### Triangular load peaking $w$ at midspan  

$(\text{FEM})_{AB} = \dfrac{5wL^{2}}{96}$ 

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{5wL^{2}}{96}$ 

**Fixed at A, simple at B**       

$(\text{FEM})'_{AB} = \dfrac{5wL^{2}}{64}$

### Relative settlement $\Delta$  

$(\text{FEM})_{AB} = \dfrac{6EI\Delta}{L^{2}}$  

**Both ends fixed**   

$(\text{FEM})_{BA} = \dfrac{6EI\Delta}{L^{2}}$   

**Fixed at A, simple at B**   

$(\text{FEM})'_{AB} = \dfrac{3EI\Delta}{L^{2}}$

