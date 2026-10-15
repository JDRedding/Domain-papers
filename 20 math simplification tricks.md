# 20 math simplification tricks 
**RDG‑compatible, with domains**

Each rewrite is an equivalence-preserving identity under the stated domains (and a few natural extensions noted below). The SID framing (Structure / Interaction / Dynamics) is useful for tracking when a pattern may be applied bidirectionally.

All 20 items hold as written for real numbers (or integers, as noted) inside the given domains. The main caveats are the usual ones for exponents and roots:
- Negative bases + non-integer exponents are excluded unless the expression is first rewritten to avoid them (e.g., via absolute values or complex numbers).
- Zero bases require separate checks when negative or zero exponents appear.
- Surds are restricted to non-negative radicands for real-valued results, exactly as stated.

No counter-examples exist inside the stated domains. Outside those domains the rewrites can fail (or leave the reals).

### Suggested usage 
Practical simplification pipeline

1. Parse with precedence (#1).
2. Clear fractions / common denominators (#12–14).
3. Expand or factor polynomials (#7–11, #18–19).
4. Apply exponent and surd laws (#2–6, #15–17).
5. Reduce ratios (#20).

This ordering minimises domain violations and intermediate expression swell.

**Tip:** Use precedence rules to **parse** the expression; then apply **equivalence‑preserving rewrites** (distribution, exponent laws, factoring, common‑denominator formation, conjugation), always tracking domains and signs.

## Conventions

- **SID‑Structure:** syntactic form of the identity  
- **SID‑Interaction:** how the operators combine or commute  
- **SID‑Dynamics:** the relational transformation (bidirectional rewrite)

Each item is a **relational rewrite rule**:

$$
\text{SID‑Dynamics:}\quad \text{pattern}_1 \longleftrightarrow \text{pattern}_2
$$

---

### 1. Order of operations (BODMAS/BIDMAS)

Brackets → Orders (powers/roots) [or Indices] → Division/Multiplication → Addition/Subtraction.  
Multiplication and division have **equal precedence**; evaluate left to right. Likewise for addition and subtraction.

- **SID‑Structure:** `B → O → D/M → A/S`  
- **SID‑Interaction:** precedence chain  
- **SID‑Dynamics:** outermost brackets reduced first; operators at same level applied left to right.

---

### 2. Same‑base multiplication

$$
a^m a^n \longleftrightarrow a^{m+n},\quad a\neq 0\ \text{if negative exponents occur}.
$$

- **SID‑Structure:** `a^m * a^n`  
- **SID‑Interaction:** same‑base exponent merge  
- **SID‑Dynamics:** `a^m a^n` $\leftrightarrow$ `a^{m+n}`.

---

### 3. Same‑base division

$$
\frac{a^m}{a^n} \longleftrightarrow a^{m-n},\quad a\neq 0,\ n\in\mathbb{Z}.
$$

- **SID‑Structure:** `a^m / a^n`  
- **SID‑Interaction:** exponent difference  
- **SID‑Dynamics:** `a^m / a^n` $\leftrightarrow$ `a^{m-n}`.

---

### 4. Power of a power

$$
(a^m)^n \longleftrightarrow a^{mn}.
$$

- **SID‑Structure:** `(a^m)^n`  
- **SID‑Interaction:** exponent nesting  
- **SID‑Dynamics:** `(a^m)^n` $\leftrightarrow$ `a^{mn}`.

---

### 5. Product power rule

$$
(ab)^n \longleftrightarrow a^n b^n.
$$

- **SID‑Structure:** `(ab)^n`  
- **SID‑Interaction:** exponent distribution over product  
- **SID‑Dynamics:** `(ab)^n` $\leftrightarrow$ `a^n b^n`.

---

### 6. Quotient power rule

$$
\left(\frac{a}{b}\right)^n \longleftrightarrow \frac{a^n}{b^n},\quad b\neq 0.
$$

- **SID‑Structure:** `(a/b)^n`  
- **SID‑Interaction:** exponent distribution over quotient  
- **SID‑Dynamics:** `(a/b)^n` $\leftrightarrow$ `a^n / b^n`.

---

### 7. Square of a sum

$$
(a+b)^2 \longleftrightarrow a^2 + 2ab + b^2.
$$

- **SID‑Structure:** `(a+b)^2`  
- **SID‑Interaction:** binary expansion  
- **SID‑Dynamics:** `(a+b)^2` $\leftrightarrow$ `a^2 + 2ab + b^2`.

---

### 8. Square of a difference

$$
(a-b)^2 \longleftrightarrow a^2 - 2ab + b^2.
$$

- **SID‑Structure:** `(a-b)^2`  
- **SID‑Interaction:** binary expansion with sign‑flip  
- **SID‑Dynamics:** `(a-b)^2` $\leftrightarrow$ `a^2 - 2ab + b^2`.

---

### 9. Difference of squares

$$
a^2 - b^2 \longleftrightarrow (a+b)(a-b).
$$

- **SID‑Structure:** `a^2 - b^2`  
- **SID‑Interaction:** factor split  
- **SID‑Dynamics:** `a^2 - b^2` $\leftrightarrow$ `(a+b)(a-b)`.

---

### 10. Cube of a sum

$$
(a+b)^3 \longleftrightarrow a^3 + 3a^2b + 3ab^2 + b^3.
$$

- **SID‑Structure:** `(a+b)^3`  
- **SID‑Interaction:** tri‑expansion  
- **SID‑Dynamics:** `(a+b)^3` $\leftrightarrow$ `a^3 + 3a^2b + 3ab^2 + b^3`.

---

### 11. Cube of a difference

$$
(a-b)^3 \longleftrightarrow a^3 - 3a^2b + 3ab^2 - b^3.
$$

- **SID‑Structure:** `(a-b)^3`  
- **SID‑Interaction:** tri‑expansion with sign‑flip  
- **SID‑Dynamics:** `(a-b)^3` $\leftrightarrow$ `a^3 - 3a^2b + 3ab^2 - b^3`.

---

### 12. Fraction addition/subtraction

$$
\frac{x}{y} \pm \frac{m}{n}
\longleftrightarrow
\frac{xn \pm ym}{yn},
\quad y\neq 0,\ n\neq 0.
$$

- **SID‑Structure:** `x/y ± m/n`  
- **SID‑Interaction:** denominator alignment  
- **SID‑Dynamics:** `x/y ± m/n` $\leftrightarrow$ `(xn ± ym)/(yn)`.

---

### 13. Fraction multiplication

$$
\frac{x}{y}\cdot\frac{m}{n}
\longleftrightarrow
\frac{xm}{yn},
\quad y\neq 0,\ n\neq 0.
$$

- **SID‑Structure:** `(x/y)*(m/n)`  
- **SID‑Interaction:** numerator/denominator pairing  
- **SID‑Dynamics:** `(x/y)*(m/n)` $\leftrightarrow$ `(xm)/(yn)`.

---

### 14. Fraction division

$$
\frac{x}{y}\div\frac{m}{n}
\longleftrightarrow
\frac{x}{y}\cdot\frac{n}{m}
\longleftrightarrow
\frac{xn}{ym},
\quad y\neq 0,\ n\neq 0,\ m\neq 0.
$$

- **SID‑Structure:** `(x/y) ÷ (m/n)`  
- **SID‑Interaction:** reciprocal flip  
- **SID‑Dynamics:** `(x/y) ÷ (m/n)` $\leftrightarrow$ `(xn)/(ym)`.

---

### 15. Surd product (real roots)

$$
\sqrt{a}\,\sqrt{b} \longleftrightarrow \sqrt{ab},
\quad a,b\ge 0.
$$

- **SID‑Structure:** `sqrt(a)*sqrt(b)`  
- **SID‑Interaction:** radicand merge  
- **SID‑Dynamics:** `sqrt(a)*sqrt(b)` $\leftrightarrow$ `sqrt(ab)`.

---

### 16. Surd quotient (real roots)

$$
\frac{\sqrt{a}}{\sqrt{b}} \longleftrightarrow \sqrt{\frac{a}{b}},
\quad a\ge 0,\ b>0.
$$

- **SID‑Structure:** `sqrt(a)/sqrt(b)`  
- **SID‑Interaction:** radicand ratio  
- **SID‑Dynamics:** `sqrt(a)/sqrt(b)` $\leftrightarrow$ `sqrt(a/b)`.

---

### 17. Rationalization via conjugate

$$
\frac{1}{\sqrt{a}+\sqrt{b}}
\longleftrightarrow
\frac{1}{\sqrt{a}+\sqrt{b}}\cdot\frac{\sqrt{a}-\sqrt{b}}{\sqrt{a}-\sqrt{b}}=
\frac{\sqrt{a}-\sqrt{b}}{a-b},
\quad a\ge 0,\ b\ge 0,\ a\neq b.
$$

- **SID‑Structure:** `1/(sqrt(a)+sqrt(b))`  
- **SID‑Interaction:** conjugate pairing, difference of squares  
- **SID‑Dynamics:** `1/(sqrt(a)+sqrt(b))` $\leftrightarrow$ `(sqrt(a)-sqrt(b))/(a-b)`.

---

### 18. Product expansion

$$
(x+a)(x+b) \longleftrightarrow x^2 + (a+b)x + ab.
$$

- **SID‑Structure:** `(x+a)(x+b)`  
- **SID‑Interaction:** distributive expansion  
- **SID‑Dynamics:** `(x+a)(x+b)` $\leftrightarrow$ `x^2 + (a+b)x + ab`.

---

### 19. Common factor rule

$$
ax + ay + az \longleftrightarrow a(x+y+z).
$$

- **SID‑Structure:** `ax + ay + az`  
- **SID‑Interaction:** factor extraction  
- **SID‑Dynamics:** `ax + ay + az` $\leftrightarrow$ `a(x+y+z)`.

---

### 20. Ratio simplification

For integers:

$$
p:q \longleftrightarrow \frac{p}{\gcd(p,q)} : \frac{q}{\gcd(p,q)}.
$$

For algebraic terms with nonzero common factor $k$:

$$
p:q \longleftrightarrow \frac{p}{k} : \frac{q}{k},\quad k\neq 0.
$$

- **SID‑Structure:** `p:q`  
- **SID‑Interaction:** divide both by common factor  
- **SID‑Dynamics:** `p:q` $\leftrightarrow$ `p/HCF : q/HCF`.

HCF is Highest Common Factor,

---

## Extra notes

| # | Identity | Note |
|---|----------|-------------------|
| 2–4 | Power laws | If $a < 0$ and the exponent is not integer, the real-valued interpretation fails. Prefer $a > 0$ or integer exponents. A power law is a relationship where one quantity changes as a constant power of another (so the relative change in one gives a proportional relative change in the other). It is scale-invariant, meaning scaling the input by a constant only scales the output by another constant factor. |
| 15–17 | Surds | $\sqrt{\,\cdot\,}$ denotes the principal (non-negative) square root. The product/quotient rules reverse only when both sides stay non-negative. A surd is an irrational rootthat cannot be simplified to a rational number or a terminating/recurring decimal. Surds represent exact values and remain under the root sign because their decimal expansions are infinite and non‑repeating. |
| 17 | Conjugate | Also requires $a - b \neq 0$ (already present) and that the denominator after rationalization is defined. A conjugate in math means changing the sign between the two terms in a binomial. When multiply a binomial by its conjugate, the middle terms cancel. |
| 20 | Ratios | For algebraic terms the common factor $k$ must be nonzero *and* defined on the same domain as the original ratio. A ratio shows how many times one number contains another. |

## Tiny worked example 
***Applying several rules***

Simplify $\dfrac{(x^2 - 4)}{\sqrt{x} + 2} \cdot \dfrac{\sqrt{x}}{x - 2}$ for $x > 0$, $x \neq 4$:

$$
\begin{align*}
\dfrac{x^2 - 4}{\sqrt{x} + 2} \cdot \dfrac{\sqrt{x}}{x - 2}
&= \dfrac{(x-2)(x+2)}{\sqrt{x} + 2} \cdot \dfrac{\sqrt{x}}{x - 2} && \text{(No. 9)} \\
&= \dfrac{x+2}{\sqrt{x} + 2} \cdot \sqrt{x} && \text{(cancel $x-2$)} \\
&= \dfrac{(x+2)\sqrt{x}}{\sqrt{x} + 2} && \text{(No. 13)} \\
&= \dfrac{(\sqrt{x}-2)(x+2)\sqrt{x}}{x-4} && \text{(No. 17 conjugate, then simplify)}.
\end{align*}
$$

(The last step is optional; the previous form is already simplified.)

## **Summary Block**

```
╔═══════════════════════════════════════════════════════════════╗
║      RDG RELATIONAL REWRITE SYSTEM — 20 CORE IDENTITIES      	║
╠═══════════════════════════════════════════════════════════════╣
║ Structure: syntactic pattern                                 	║
║ Interaction: operator geometry (merge, split, invert, align) 	║
║ Dynamics: bidirectional equivalence morphism                 	║
║                                                              	║
║  a^m ⋄ a^n        ⟷  a^(m+n)				        ║
║  a^m ÷ a^n        ⟷  a^(m−n)                             	║
║  (a^m)^n          ⟷  a^(mn)                              	║
║  (ab)^n           ⟷  a^n ⋄ b^n                           	║
║  (a/b)^n          ⟷  a^n / b^n                           	║
║  (a±b)^2          ⟷  a^2 ± 2ab + b^2                     	║
║  a^2 − b^2        ⟷  (a+b)(a−b)                          	║
║  (a±b)^3          ⟷  a^3 ± 3a^2b + 3ab^2 ± b^3           	║
║  x/y ± m/n        ⟷  (xn ± ym)/(yn)                      	║
║  (x/y)(m/n)       ⟷  (xm)/(yn)                           	║
║  (x/y) ÷ (m/n)    ⟷  (xn)/(ym)                           	║
║  √a ⋄ √b          ⟷  √(ab)                      	       	║
║  √a / √b          ⟷  √(a/b)                              	║
║  1/(√a+√b)        ⟷  (√a−√b)/(a−b)                       	║
║  (x+a)(x+b)       ⟷  x^2 + (a+b)x + ab                   	║
║  ax+ay+az         ⟷  a(x+y+z)                            	║
║  p:q              ⟷  (p/H):(q/H)                         	║
╚═══════════════════════════════════════════════════════════════╝
```
