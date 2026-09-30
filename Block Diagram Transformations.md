# Block Diagram Transformations
10 standard rules for simplifying control system diagrams.

Standard block-diagram notation: 
- $X,Y,Z,W$ are signals, 
- $G,G_1,G_2$ are block transfer functions, and 
- $\pm$ follows the sign at each summing junction (negative feedback uses the minus case).

1. Combining blocks in cascade  
   $Y=(G_2G_1)X$

2. Combining blocks in parallel (or eliminating a forward loop)  
   $Y=(G_1+G_2)X$

3. Removing a block from a forward path  
   $Y=G_2X+G_1X$

4. Eliminating a feedback loop  
   $Y=G_1X\pm G_2Y$  
   equivalent closed-loop form:  
   $Y=\dfrac{G_1}{1\pm G_1G_2}X$

5. Removing a block from a feedback loop  
   $Y=G_1(X\pm G_2Y)$

6. Rearranging summing points  
   $Z=W+X\pm Y$

7. Moving a summing point ahead of a block  
   $Z=GX\pm Y$

8. Moving a summing point beyond a block  
   $Z=GX\pm Y$

9. Moving a take-off point ahead of a block  
   $Y=GX$

10. Moving a take-off point beyond a block  
    $Y=GX$
