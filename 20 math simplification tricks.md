# 20 math simplification tricks
***Standard mathematical notation***

**Tip:** Apply BODMAS first, then use identities and factorization step by step, carefully tracking signs and powers.

## Conventions

Triad conventions:

- **SID‑Structure:** syntactic form of the identity  
- **SID‑Interaction:** how the operators combine or commute  
- **SID‑Dynamics:** the relational transformation (the “move”) the identity performs

Each item is a *relational rewrite rule*, not a numerical identity. 

### 1. **Order of operations (BODMAS/BIDMAS)**  

Brackets → Orders (powers/roots) → Division/Multiplication (left to right) → Addition/Subtraction (left to right).

BIDMAS is an acronym that helps remember the order of operations in mathematics: Brackets, Indices, Division, Multiplication, Addition, and Subtraction

BODMAS is another acronym that helps remember the order of operations in mathematics: Brackets, Orders, Division, Multiplication, Addition, Subtraction

**SID‑Structure:** `B → O → D/M → A/S`  
**SID‑Interaction:** precedence chain  
**SID‑Dynamics:** evaluation reduces outermost brackets first.

### 2. **Same-base multiplication**  

$$a^m \times a^n = a^{m+n}$$

**SID‑Structure:** `a^m * a^n`  
**SID‑Interaction:** same‑base exponent merge  
**SID‑Dynamics:** `a^(m+n)`.

### 3. **Same-base division**  

$$\frac{a^m}{a^n} = a^{m-n}$$

**SID‑Structure:** `a^m / a^n`  
**SID‑Interaction:** exponent difference  
**SID‑Dynamics:** `a^(m-n)`.

### 4. **Power of a power**  

$$(a^m)^n = a^{m \times n}$$

**SID‑Structure:** `(a^m)^n`  
**SID‑Interaction:** exponent nesting  
**SID‑Dynamics:** `a^(m*n)`.

### 5. **Product power rule**  

$$(ab)^n = a^n b^n$$

**SID‑Structure:** `(ab)^n`  
**SID‑Interaction:** distributive exponent  
**SID‑Dynamics:** `a^n b^n`.

### 6. **Quotient power rule**  

$$\left(\frac{a}{b}\right)^n = \frac{a^n}{b^n}$$

**SID‑Structure:** `(a/b)^n`  
**SID‑Interaction:** exponent distributes over quotient  
**SID‑Dynamics:** `a^n / b^n`.

### 7. **Square of a sum**  

$$(a + b)^2 = a^2 + 2ab + b^2$$

**SID‑Structure:** `(a+b)^2`  
**SID‑Interaction:** binary expansion  
**SID‑Dynamics:** `a^2 + 2ab + b^2`.

### 8. **Square of a difference**  

$$(a - b)^2 = a^2 - 2ab + b^2$$

**SID‑Structure:** `(a-b)^2`  
**SID‑Interaction:** binary expansion with sign‑flip  
**SID‑Dynamics:** `a^2 - 2ab + b^2`.

### 9. **Difference of squares**  

$$a^2 - b^2 = (a + b)(a - b)$$

**SID‑Structure:** `a^2 - b^2`  
**SID‑Interaction:** factor split  
**SID‑Dynamics:** `(a+b)(a-b)`.

### 10. **Cube of a sum**  

$$(a + b)^3 = a^3 + 3a^2b + 3ab^2 + b^3$$

**SID‑Structure:** `(a+b)^3`  
**SID‑Interaction:** tri‑expansion  
**SID‑Dynamics:** `a^3 + 3a^2b + 3ab^2 + b^3`.

### 11. **Cube of a difference**  

$$(a - b)^3 = a^3 - 3a^2b + 3ab^2 - b^3$$

**SID‑Structure:** `(a-b)^3`  
**SID‑Interaction:** tri‑expansion with sign‑flip  
**SID‑Dynamics:** `a^3 - 3a^2b + 3ab^2 - b^3`.

### 12. **Fraction addition/subtraction**  

$$\frac{x}{y} \pm \frac{m}{n} = \frac{xn \pm ym}{yn}$$

**SID‑Structure:** `x/y ± m/n`  
**SID‑Interaction:** denominator alignment  
**SID‑Dynamics:** `(xn ± ym)/(yn)`.

### 13. **Fraction multiplication**  

$$\frac{x}{y} \times \frac{m}{n} = \frac{xm}{yn}$$

**SID‑Structure:** `(x/y)*(m/n)`  
**SID‑Interaction:** numerator/denominator pairing  
**SID‑Dynamics:** `(xm)/(yn)`.

### 14. **Fraction division**  

$$\frac{x}{y} \div \frac{m}{n} = \frac{xn}{ym}$$

**SID‑Structure:** `(x/y) ÷ (m/n)`  
**SID‑Interaction:** reciprocal flip  
**SID‑Dynamics:** `(xn)/(ym)`.

### 15. **Surd product**  

$$\sqrt{a} \times \sqrt{b} = \sqrt{ab}$$

**SID‑Structure:** `sqrt(a)*sqrt(b)`  
**SID‑Interaction:** radicand merge  
**SID‑Dynamics:** `sqrt(ab)`.

### 16. **Surd quotient**  

$$\frac{\sqrt{a}}{\sqrt{b}} = \sqrt{\frac{a}{b}}$$

**SID‑Structure:** `sqrt(a)/sqrt(b)`  
**SID‑Interaction:** radicand ratio  
**SID‑Dynamics:** `sqrt(a/b)`.

### 17. **Rationalization**  

$$\frac{1}{\sqrt{a} + \sqrt{b}} = \frac{\sqrt{a} - \sqrt{b}}{a - b}$$

**SID‑Structure:** `1/(sqrt(a)+sqrt(b))`  
**SID‑Interaction:** conjugate pairing  
**SID‑Dynamics:** `(sqrt(a)-sqrt(b))/(a-b)`.

### 18. **Product expansion**  

$$(x + a)(x + b) = x^2 + (a + b)x + ab$$

**SID‑Structure:** `(x+a)(x+b)`  
**SID‑Interaction:** linear‑quadratic expansion  
**SID‑Dynamics:** `x^2 + (a+b)x + ab`.

### 19. **Common factor rule**  

$$ax + ay + az = a(x + y + z)$$

**SID‑Structure:** `ax + ay + az`  
**SID‑Interaction:** factor extraction  
**SID‑Dynamics:** `a(x+y+z)`.

### 20. **Simplify ratios or fractions**  

Divide both parts by their highest common factor (HCF).  
Example: $24 : 36 \to 2 : 3$

**SID‑Structure:** `p:q`  
**SID‑Interaction:** divide both by HCF  
**SID‑Dynamics:** `p/HCF : q/HCF`.
