# Relational curve‑drawing

$$
\boxed{
\begin{aligned}
F(X,Y) &= X^2 + Y^2 - R^2,\\
M_N(X,Y) &= (X,\;Y+1),\\
M_{NW}(X,Y) &= (X-1,\;Y+1),\\
\Delta_N F &= 2Y + 1,\\
\Delta_{NW} F &= -2X + 1,\\
\Phi(X,Y,F) &= 
\begin{cases}
(X-1,\;Y+1,\;F + (2Y+1) - 2X + 1), & F > X,\\
(X,\;Y+1,\;F + (2Y+1)), & F \le X,
\end{cases}\\
(X_0,Y_0,F_0) &= (R,0,0),\\
\text{end of arc: } & Y = X - 1.
\end{aligned}
}
$$

## **1. Lattice and Implicit Function**

Let the lattice be  

$$
\mathbb{L} = \mathbb{Z}^2.
$$

Let the implicit curve be the zero‑set of  

$$
F : \mathbb{L} \to \mathbb{Z}.
$$

For the circle of radius $R$,  

$$
F(X,Y) = X^2 + Y^2 - R^2.
$$

---

## **2. Move Operators**

Define two lattice‑move operators (single semiquadrant):

- **N move**

$$
M_N(X,Y) = (X,\;Y+1)
$$

- **NW move**

$$
M_{NW}(X,Y) = (X-1,\;Y+1)
$$

These are the only moves used in the relational method.

---

## **3. Incremental Update Laws for $F$**

Given  

$$
F(X,Y) = X^2 + Y^2 - R^2,
$$

the incremental changes under the two moves are:

### **N:**

$$
\Delta_N F = F(X,Y+1) - F(X,Y) = (Y+1)^2 - Y^2 = 2Y + 1.
$$

### **NW:**

$$
\Delta_{NW} F = F(X-1,Y+1) - F(X,Y+1)
= (X-1)^2 - X^2 = -2X + 1.
$$

Thus the incremental update rules are:

- **Mandatory Y‑increment:**

$$
Y \gets Y+1,\qquad F \gets F + (2Y + 1).
$$

- **Conditional X‑decrement:**
  
$$
\text{if } F > X,\quad X \gets X-1,\qquad F \gets F + (-2X + 1).
$$

---

## **4. Full RDG Step Operator**

Define the state  

$$
s = (X,Y,F).
$$

Define the relational step operator  

$$
\Phi : s \mapsto s'
$$

by

$$
\Phi(X,Y,F) =
\begin{cases}
(X-1,\;Y+1,\;F + (2Y+1) + (-2X+1)) & \text{if } F > X,\\
(X,\;Y+1,\;F + (2Y+1)) & \text{if } F \le X.
\end{cases}
$$

This is the complete relational algorithm in operator form.

---

## **5. Initial Conditions**

For the first semiquadrant of the circle:

$$
X_0 = R,\qquad Y_0 = 0,\qquad F_0 = 0.
$$

---

## **6. Termination / Arc Boundary Condition**

The semiquadrant ends when  

$$
Y = X - 1.
$$

At that point, the next arc begins with  

$$
X \gets X-1,\qquad Y \gets Y+1.
$$

---

## **7. Optional Z‑Variable Substitution**

Define  

$$
Z = 2Y + 1.
$$

Then the update laws become:

- **N:**
  
$$
Y \gets Y+1,\qquad Z \gets Z + 2,\qquad F \gets F + Z.
$$

- **NW:**
  
$$
X \gets X-1,\qquad F \gets F - 2X + 1.
$$

This removes the need to recompute $2Y+1$.
