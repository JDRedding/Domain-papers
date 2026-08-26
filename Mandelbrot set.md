# The Mandelbrot set
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

If there exists some$N$such that$\lvert z_N \rvert > 2$, then the orbit escapes to infinity and$c \notin \mathcal{M}$.
If $\lvert z_n \rvert \le 2$for all$n$, then$c \in \mathcal{M}$.

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
- Explore Julia Sets
- Study Fractal Antennas
- Analyze Chaos Theory

