# QUADRATIC INEQUALITY  

$$
ax^2 + bx + c  >  0
$$

## FUNDAMENTALS
```
  Variables : a, b, c  (real coefficients)
  Discriminant :  Delta  =  b^2 - 4ac
  Roots (when they exist) :  x = [ -b +/- sqrt(Delta) ] / (2a)
  Parabola opens UP   if a > 0
  Parabola opens DOWN if a < 0
```

---
## CASE  a = 0  
(reduces to linear / constant)

```
  bx + c  >  0

  if b > 0 :   x  >  -c/b     solution = (-c/b , +inf)
  if b < 0 :   x  <  -c/b     solution = (-inf , -c/b)
  if b = 0 :
      if c > 0 :  all real x
      if c <= 0 :  empty set
```

---

## CASE  a != 0   
(true quadratic)

```
  1. Delta < 0   (no real roots, never crosses x-axis)
       a > 0  -->  all real x
       a < 0  -->  empty set

  2. Delta = 0   (touches at one point  x = -b/(2a) )
       a > 0  -->  all x except  x = -b/(2a)
       a < 0  -->  empty set

  3. Delta > 0   (two distinct roots  r1 < r2)
       a > 0  -->  (-inf , r1)  U  (r2 , +inf)
       a < 0  -->  (r1 , r2)
```

Two comparisons (sign of a  and  sign of Delta)
completely classify the solution set on the real line.


## Notation

**Notation**

- $a,b,c\in\mathbb{R}$: coefficients of the quadratic  
- $\Delta=b^{2}-4ac$: discriminant  
- $r_{\pm}=\dfrac{-b\pm\sqrt{\Delta}}{2a}$: the two roots when they exist ($r_{-}<r_{+}$ when $\Delta>0$)  
- $x_{v}=-\dfrac{b}{2a}$: vertex / double-root location when $\Delta=0$

**Core formulas**

Quadratic expression  

$$
f(x)=ax^{2}+bx+c
$$

Inequality under consideration  

$$
ax^{2}+bx+c>0
$$

Discriminant  

$$
\Delta=b^{2}-4ac
$$

Quadratic formula (when $\Delta\ge0$ and $a\neq0$) 

$$
x=\frac{-b\pm\sqrt{\Delta}}{2a}
$$

**Solution sets**

When $a=0$ the inequality reduces to the linear case $bx+c>0$:

$$
\begin{cases}
x>-\dfrac{c}{b} & \text{if }b>0,\\
x<-\dfrac{c}{b} & \text{if }b<0,\\
\text{all }x\in\mathbb{R} & \text{if }b=0\text{ and }c>0,\\
\emptyset & \text{if }b=0\text{ and }c\le0.
\end{cases}
$$

When $a\neq0$:

$$
\begin{align*}
\Delta<0 &\quad\Longrightarrow\quad
\begin{cases}
\mathbb{R} & \text{if }a>0,\\
\emptyset & \text{if }a<0.
\end{cases}\\
\Delta=0 &\quad\Longrightarrow\quad
\begin{cases}
\mathbb{R}\setminus\{x_{v}\} & \text{if }a>0,\\
\emptyset & \text{if }a<0.
\end{cases}\\
\Delta>0 &\quad\Longrightarrow\quad
\begin{cases}
(-\infty,r_{-})\cup(r_{+},+\infty) & \text{if }a>0,\\
(r_{-},r_{+}) & \text{if }a<0.
\end{cases}
\end{align*}
$$
