# Norm floor
- 515 Analysis
- 512 algebra
- Norm concepts, functional analysis or ordered structures

In standard mathematics, **“norm floor” is not a formal term**. When it appears, it is almost always shorthand for one of two operations:

## Formal concepts

It is **not** a standard term in functional analysis, linear algebra, or number theory.  
Authors use it informally to refer to the following expressions:

- Numerical analysis: floor of a norm, $\lfloor \|x\| \rfloor$.  
- Geometry of numbers: norm of a floored vector, $\|\lfloor x \rfloor\|$.  
- Optimization: rounding vectors before evaluating constraints.  
- Computer science: integer approximations of vector lengths.

Ask whether the floor is applied to the **scalar** or the **vector**:

- If the context involves **integer lattices**, it is almost always  

$$
\|\lfloor x \rfloor\|.
$$

- If the context involves **approximating magnitudes**, it is usually  

$$
\lfloor \|x\| \rfloor.
$$

---

## 1. **Floor of a norm**

Given a normed vector space $(V,\|\cdot\|)$, you can apply the floor function to the scalar norm of a vector:

$$
\lfloor \|x\| \rfloor.
$$

This is simply the greatest integer less than or equal to the real number $\|x\|$.  
It is used when discretizing magnitudes, lengths, or distances.

**Example:**  
Let $x = (3,4) \in \mathbb{R}^2$.  

$$
\|x\| = 5,\qquad \lfloor \|x\| \rfloor = 5.
$$

Let $x = (1,2)$. 

$$
\|x\| = \sqrt{5} \approx 2.236,\qquad \lfloor \|x\| \rfloor = 2.
$$

---

## 2. **Norm of a floored vector**

Can also apply the floor function **coordinatewise** and then take the norm:

$$
\| \lfloor x \rfloor \|,\qquad 
\lfloor x \rfloor = (\lfloor x_1 \rfloor,\ldots,\lfloor x_n \rfloor).
$$

This appears in integer‑lattice geometry, rounding‑based optimization, and discrete analysis.

**Example:**  
Let $x = (1.2, 3.7)$. 

$$
\lfloor x \rfloor = (1,3),\qquad 
\|\lfloor x \rfloor\| = \sqrt{1^2 + 3^2} = \sqrt{10}.
$$

---

## **Difference between the two**

| Expression | Meaning | Typical use |
|-----------|---------|-------------|
| $\lfloor {norm}(x) \rfloor$ | Floor applied **after** taking the norm | Integer approximation of magnitude |
| $\|\lfloor x \rfloor\|$ | Floor applied **before** taking the norm | Lattice geometry, rounding analysis |

These values can differ substantially when $x$ has fractional components.

---
