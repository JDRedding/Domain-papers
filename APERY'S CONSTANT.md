# APÉRY'S CONSTANT   
ζ(3) : Apéry’s theorem (1978): $\zeta(3)\notin\mathbb{Q}$.

## Notation
- $\zeta(s)$: Riemann zeta function
- $n,k \in \mathbb{N}$
- $\binom{2n}{n}$: central binomial coefficient
- ${Li}_s(z)$: polylogarithm
- $a_e$: electron anomalous magnetic moment
- $\alpha$: fine-structure constant

## **Definition**

$$
\zeta(s)=\sum_{n=1}^{\infty}\frac{1}{n^{s}},\qquad {Re}(s)>1
$$

It is still unknown whether $\zeta(3)$ is transcendental, and whether it has a simple closed form in terms of $\pi$ and algebraic numbers.

## TYPE
```
  odd zeta value, irrational real
  no known simple closed form
```
## DEFINITION
```
  ζ(3)  =  Σ  1/n³     n = 1 → ∞
         ≈  1.202056903159594...
```
## SERIES
```
  1  +  1/8  +  1/27  +  1/64  +  1/125  +  ...
  partial sums never equal a ratio of integers
```
## COMPARE
```
  ζ(2)  =  π²/6     (even, closed form)
  ζ(3)  =  ???      (odd, no simple form)
```
## HISTORY
```
  Roger Apéry, 1978, age 62
  first proof that ζ(3) is irrational
```
## PHYSICS
```
  appears in QED calculations of the
  electron anomalous magnetic moment a_e
```

## Equations

Apéry’s constant is the odd integer case $s=3$:

$$
\zeta(3)=\sum_{n=1}^{\infty}\frac{1}{n^{3}}=1+\frac{1}{8}+\frac{1}{27}+\frac{1}{64}+\cdots
$$

$$
\zeta(3)\approx 1.202056903159594\ldots
$$

Euler product over primes $p$:

$$
\zeta(3)=\prod_{p}\frac{1}{1-p^{-3}}
$$

### **Comparison with even zeta values**

$$
\zeta(2)=\frac{\pi^{2}}{6},\qquad
\zeta(4)=\frac{\pi^{4}}{90},\qquad
\zeta(2k)\in \pi^{2k}\mathbb{Q}
$$

No analogous closed form is known for $\zeta(3)$.

### **Apéry / Markov series** (used in the 1978 irrationality proof)

$$
\zeta(3)=\frac{5}{2}\sum_{n=1}^{\infty}\frac{(-1)^{n-1}}{n^{3}\binom{2n}{n}}
$$

Equivalent factorial form:

$$
\zeta(3)=\frac{5}{2}\sum_{n=1}^{\infty}(-1)^{n-1}\frac{(n!)^{2}}{(2n)!\,n^{3}}
$$

### **Integral representations**

From the Gamma/zeta integral:

$$
\zeta(3)=\frac{1}{2}\int_{0}^{\infty}\frac{x^{2}}{e^{x}-1}\,dx
$$

Triple-integral form:

$$
\zeta(3)=\int_{0}^{1}\int_{0}^{1}\int_{0}^{1}\frac{dx\,dy\,dz}{1-xyz}
$$

Logarithmic forms:

$$
\zeta(3)=-\int_{0}^{1}\frac{\log x\,\log(1-x)}{x}\,dx
=\frac{1}{2}\int_{0}^{1}\frac{\log^{2}(1-x)}{x}\,dx
$$

### **Double-sum identities**

$$
\zeta(3)=\sum_{m=1}^{\infty}\sum_{n=1}^{\infty}\frac{1}{mn(m+n)}
=\sum_{n=1}^{\infty}\frac{H_{n}}{n^{2}}
$$

where $H_{n}=\sum_{k=1}^{n}1/k$ is the $n$th harmonic number.

### **QED appearance**

The two-loop mass-independent coefficient in $a_e$ contains $\zeta(3)$:

$$
a_e=\frac{\alpha}{2\pi}
+\left(\frac{\alpha}{\pi}\right)^{2}\left(\frac{197}{144}+\frac{\pi^{2}}{12}+\frac{3}{4}\zeta(3)-\frac{\pi^{2}}{2}\ln 2\right)
+O(\alpha^{3})
$$
