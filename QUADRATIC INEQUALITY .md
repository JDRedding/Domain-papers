# QUADRATIC INEQUALITY

The classification is **exact, complete, and already in its optimal canonical form**. The last thing is a compact **triadic decision map** that shows how the inequality’s truth‑region emerges from the interaction of:

- **sign of a**  
- **sign of Δ**  
- **root geometry**  

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


---

## 🔧 Relational Structure 
Truth‑region determined by *Structure* S = sign(a), *Interaction* I = discriminant Δ, *Dynamics* D = root ordering

### 1. **Linear regime** — when $a=0$

| Condition | Truth‑Region |
|----------|--------------|
| $b>0$ | $x> -c/b$ |
| $b<0$ | $x< -c/b$ |
| $b=0,\;c>0$ | all real $x$ |
| $b=0,\;c\le0$ | empty set |

---

## 2. **Quadratic regime** — when $a\neq0$

Let  

$$
\Delta=b^{2}-4ac,\qquad r_{\pm}=\frac{-b\pm\sqrt{\Delta}}{2a},\qquad r_-<r_+.
$$

### **Master Table (the whole classification in one block)**

| **Sign of $a$** | **Sign of $\Delta$** | **Root Geometry** | **Truth‑Region for $ax^{2}+bx+c>0$** |
|-------------------|------------------------|-------------------|----------------------------------------|
| ${a}>{0}$ | $\Delta<0$ | no roots | all real $x$ |
| ${a}>{0}$ | $\Delta=0$ | double root at $x_v$ | all $x\neq x_v$ |
| ${a}>{0}$ | $\Delta>0$ | two roots $r_-<r_+$ | $(-\infty,r_-)\cup(r_+,\infty)$ |
| ${a}<{0}$ | $\Delta<0$ | no roots | empty set |
| ${a}<{0}$ | $\Delta=0$ | double root | empty set |
| ${a}<{0}$ | $\Delta>0$ | two roots | $(r_-,r_+)$ |

---

## 🔩 Operator Compression  

Define the **sign operator**  

$$
\sigma(a) = \begin{cases} +1 & a>0,\\ -1 & a<0. \end{cases}
$$

Define the **root‑interval operator**  

$$
R(\Delta)= \begin{cases} \mathbb{R} & \Delta<0,\\ \mathbb{R}\setminus\{x_v\} & \Delta=0,\\ (-\infty,r_-)\cup(r_+,\infty) & \Delta>0. \end{cases}
$$

Then the inequality solution is:

$$
\boxed{ \text{Sol}(a,b,c)= \begin{cases} R(\Delta) & \sigma(a)=+1,\\ \mathbb{R}\setminus R(\Delta) & \sigma(a)=-1. \end{cases} }
$$

This is the **minimal relational form**:  
- The discriminant determines the **shape of the forbidden set**.  
- The sign of $a$ determines whether you **take it or invert it**.  

---

## Fitire work
- a **truth‑region diagram** (ASCII, RDG‑style),  
- a **canonical flowchart**,  
- a **generalization to ≥, ≤, <**?

