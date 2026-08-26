# The Mandelbrot set
- **The Mandelbrot Set**  
: *A fantasy universe in a complex plane.*

- **The iteration formula**
All of these labels together illustrate how a single simple quadratic iteration produces an infinitely complex, self-similar structure in the complex plane.

Core Iteration

$$
z_{n+1} = z_n^2 + c, \qquad z_0 = 0
$$

where $c \in \mathbb{C}$ (the complex plane) and $n = 0,1,2,\dots$

Definition of the Mandelbrot Set
The Mandelbrot set $\mathcal{M}$ is the set of all complex numbers $c$ for which the sequence $(z_n)_{n=0}^\infty$ remains bounded:

$$
\mathcal{M} = \{ c \in \mathbb{C} : (z_n) \text{ is bounded} \}
$$

Equivalently,

$$
\mathcal{M} = \{ c \in \mathbb{C} : \lvert z_n \rvert \not\to \infty \text{ as } n\to\infty \}
$$

Boundedness Criterion (Escape Radius)
A practical computational test uses the escape radius$2$:

If there exists some $N$ such that $\lvert z_N \rvert > 2$ , then the orbit escapes to infinity and $c \notin \mathcal{M}$.
If $\lvert z_n \rvert \le 2$ for all $n$, then $c \in \mathcal{M}$ .

Key Geometric Property
The boundary of the Mandelbrot set, denoted $\partial\mathcal{M}$ , satisfies:

$$
\text{length}(\partial\mathcal{M}) = +\infty
$$

and $\partial\mathcal{M}$ contains no isolated points.

 Notation 
| Symbol              | Meaning                                      |
|---------------------|----------------------------------------------|
|$c$            | Complex parameter (point being tested)       |
|$z_n$          |$n$-th iterate of the sequence           |
|$z_0 = 0$      | Initial condition                            |
|$\mathbb{C}$   | Complex plane                                |
|$\mathcal{M}$  | Mandelbrot set                               |
|$\partial\mathcal{M}$| Boundary of the Mandelbrot set          |
|$\lvert \cdot \rvert$| Modulus (absolute value) of a complex number |

### Main Body Features
- **Main Cardioid**  
  The large heart-shaped central region.  
  *Contains all $c$ for which the sequence converges to an attracting fixed point.*

- **Period-2 Bulb**  
  The large circular bulb attached to the left of the main cardioid.  
  *The first bulb, home to a stable 2-cycle.*

- **Periodicity Axis**  
  The horizontal line running through the center of the main cardioid and period-2 bulb (with tick marks).  
  *Points on this line correspond to periodic behavior.*

### Famous Valleys & Regions
- **Seahorse Valley**  
  The intricate region between the main cardioid and the period-2 bulb (on the upper side).  
  *A hidden seahorse shaped in fractal detail.*

- **Elephant Valley**  
  The region on the upper-right side of the main cardioid.  
  *A winding path into infinite complexity.*

- **Buddha Valley**  
  The calm, rounded area on the lower-right side of the main cardioid.  
  *A calm region beside the chaos.*

### Decorative / Detailed Structures
- **Douady Rabbit**  
  A small, rabbit-shaped mini-Mandelbrot located above the main body.  
  *A baby Mandelbrot with intricate self-similarity.*

- **Double Spiral**  
  Spiraling structures found in various places (especially upper regions).  
  *Spirals within spirals, repeating endlessly at every scale.*

- **Lace**  
  Delicate looped filaments attached to the left of the period-2 bulb.  
  *Delicate loops woven into the fractal fabric.*

- **Mini Mandelbrot**  
  Smaller copies of the entire set that appear at various locations (especially bottom).  
  *Self-similar copies appear everywhere you look.*

- **Dust**  
  Tiny scattered points near the bottom-left.  
  *Chaotic points form a dust-like fractal set.*



```
                                                                                
                                               ....                             
                                             ...-....                           
                                           .....:=..:.                          
                                          .......:#:....                        
                                         .......:#@*......                      
                                       ......::=@@@+:-......                    
                                     .........*@@@@@*:........                  
                                  ...........::@@@@@@:..........                
                              .......:%:@:=@-@@@@@@@#@@:=:....*..               
                          ...........:=@@-@@@@@@@@@@@@@@@+:#@=*:..              
                      ...............:-@@@@@@@@@@@@@@@@@@@@@@@+....             
                   ...............:%@-@@@@@@@@@@@@@@@@@@@@@@@-:....             
                ....:.............::@@@@@@@@@@@@@@@@@@@@@@@@@@-:...             
              .....::::..=:......:+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+..             
            .........:*+--@+--::::@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=...             
          ..........:-@@@@@@@@#-:-@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-..             
         ..........:+@@@@@@@@@@@==@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*...             
       .........::--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+....             
 .....:......:::=@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+.....             
 .....:......:::=@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+.....             
       .........::--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+....             
         ..........:+@@@@@@@@@@@==@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*...             
          ..........:-@@@@@@@@#-:-@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-..             
            .........:*+--@+--::::@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=...             
              .....::::..=:......:+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+..             
                ....:.............::@@@@@@@@@@@@@@@@@@@@@@@@@@-:...             
                   ...............:%@-@@@@@@@@@@@@@@@@@@@@@@@-:....             
                      ...............:-@@@@@@@@@@@@@@@@@@@@@@@+....             
                          ...........:=@@-@@@@@@@@@@@@@@@+:#@=*:..              
                              .......:%:@:=@-@@@@@@@#@@:=:....*..               
                                  ...........::@@@@@@:..........                
                                     .........*@@@@@*:........                  
                                       ......::=@@@+:-......                    
                                         .......:#@*......                      
                                          .......:#:....                        
                                           .....:=..:.                          
                                             ...-....                           
                                               ....                             

```

# Future work
- Explore Julia Sets and Julia sets connection
- Fractal Antennas
- Analyze Chaos Theory
- Fractal dimension

