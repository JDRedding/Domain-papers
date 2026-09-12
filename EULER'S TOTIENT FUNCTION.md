# EULER'S TOTIENT FUNCTION  φ(n)
**Euler’s totient function** is denoted $\varphi(n)$ (also written $\phi(n)$).

## DEFINITION
φ(n) counts integers k with 1 ≤ k ≤ n and gcd(k, n) = 1
(i.e. numbers coprime to n)

## FORMULA
φ(n) = n  Π  (1 - 1/p)     over all distinct primes p that divide n

### FUNDAMENTALS
```
• If p is prime: φ(p) = p - 1
• If p^k is a prime power: φ(p^k) = p^k - p^{k-1} = p^{k-1}(p-1)
• φ is multiplicative: if gcd(a,b)=1 then φ(ab)=φ(a)φ(b)
• Used in RSA: private exponent d satisfies  e·d ≡ 1  (mod φ(n))
  where n = p·q  (product of two large primes)
```

#### EXAMPLE  n = 12 = 2²·3
φ(12) = 12 · (1-1/2) · (1-1/3) = 12 · 1/2 · 2/3 = 4

Coprime to 12:   1  3  5  7  11

Not coprime:     2  4  6  8  9  10  12

### MORE VALUES
- φ(7)  = 6     (prime)
- φ(8)  = 4     (8=2³)
- φ(10) = 4     (10=2·5)
- φ(11) = 10    (prime)

Prime numbers make multiplication easy and factorization hard,
which is why φ(n) underpins the security of RSA.

## Formulas and equations

### **Counting definition**  

$$
\varphi(n) = \{No.}\{k \in \mathbb{Z} : 1 \le k \le n,\ \gcd(k,n)=1\}
$$  

$\{No.}$ = cardinality (number of elements), $\gcd$ = greatest common divisor.

### **Euler product formula**  

$$
\varphi(n) = n \prod_{p \mid n} \Bigl(1 - \frac{1}{p}\Bigr)
$$  

The product runs over the distinct prime divisors $p$ of $n$.

### **Prime case**  

$$
\varphi(p) = p-1 \qquad (p\text{ prime})
$$

### **Prime-power case**  

$$
\varphi(p^k) = p^k - p^{k-1} = p^{k-1}(p-1) \qquad (k \ge 1)
$$

### **Multiplicativity**  
If $\gcd(m,n)=1$, then  

$$
\varphi(mn) = \varphi(m)\,\varphi(n).
$$

### **Euler’s theorem**  
If $\gcd(a,n)=1$, then  

$$
a^{\varphi(n)} \equiv 1 \pmod{n}.
$$

### **RSA connection**  
Let $n = pq$ with distinct primes $p,q$. Then  

$$
\varphi(n) = (p-1)(q-1).
$$  

The public exponent $e$ and private exponent $d$ satisfy  

$$
ed \equiv 1 \pmod{\varphi(n)},
$$  

i.e. $d$ is the modular inverse of $e$ modulo $\varphi(n)$.
