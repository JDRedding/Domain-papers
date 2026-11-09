# Feynman Path Integral
## Structure/Power Generalization
*Dynamic Discrete Relational History Formulation*

**RDG (Relational Dynamics Geometry)** is the overarching framework in which physical reality is described as a network of evolving relations rather than isolated objects. Within RDG, every physical process is represented by admissible relational histories connecting an initial configuration to a final configuration. **SID (Structure, Interaction, Dynamics)** is the geometric and organizational decomposition of the theory: **Structure (S)** specifies the space of admissible configurations or histories, **Interaction (I)** specifies how those histories are weighted, evaluated, or related, and **Dynamics (D)** specifies the global evolution obtained by aggregating all admissible histories. Complementing SID is **PED (Power, Evaluation, Dynamics)**, which describes the local physics associated with each elementary step of a history. **Power (P)** represents the local content being carried by a state transition, such as kinetic minus potential energy in ordinary mechanics; **Evaluation (E)** maps that power content into a quantitative contribution to the history accessibility functional; and **Dynamics (D)** represents the actual transition from one state to the next. In the discrete path-integral realization developed here, PED acts locally on each slice of a history, producing slice contributions that accumulate into a global accessibility functional $A[h]$, while SID acts globally on the space of histories itself. The standard Feynman path integral is recovered as the special case in which the SID interaction operator weights each history according to $W(x)=e^{ix/\hbar}$, making the classical action $S[h]$ equivalent to the RDG accessibility functional $A[h]$.

---

# 1. Endpoint Definition

Given initial and final configurations

$$
A=(q_i,t_i)
$$

$$
B=(q_f,t_f)
$$

with

$$
t_f>t_i.
$$

Let

$$
N
$$

be the number of temporal slices.

Define the slice width

$$
\epsilon=\frac{t_f-t_i}{N}.
$$

Boundary conditions:

$$
q_0=q_i
$$

$$
q_N=q_f.
$$

---

# 2. Structure Space (SID-S)

Define the discrete relational history space

$$
H_N(A\rightarrow B) =
\{
h=(q_0,q_1,\ldots,q_N)
\}.
$$

Each history

$$
h\in H_N(A\rightarrow B)
$$

is an admissible relational sequence connecting

$$
A
$$

to

$$
B.
$$

SID Structure is therefore

$$
S_N(A\rightarrow B) :=
H_N(A\rightarrow B).
$$

---

# 3. Local Relational Dynamics (PED-D)

Each slice transition is

$$
D_k:
q_k
\rightarrow
q_{k+1}.
$$

The complete history is

$$
h =
(D_0,D_1,\ldots,D_{N-1}).
$$

---

# 4. Local Power Content (PED-P)

For ordinary non-relativistic mechanics,

$$
P_k =
T_k -
V_k.
$$

with

$$
T_k =
\frac{m}{2}
(
\frac{q_{k+1}-q_k}{\epsilon}
)^2,
$$

and

$$
V_k =
V(q_k).
$$

Thus

$$
P_k =
\frac{m}{2}
(
\frac{q_{k+1}-q_k}{\epsilon}
)^2 -
V(q_k).
$$

---

# 5. Local Evaluation (PED-E)

Define

$$
E_k(P_k) = P_k.
$$

The slice accessibility contribution becomes

$$
S_k = \epsilon\,E_k(P_k).
$$

Explicitly,

$$
S_k = \frac{m}{2}
\frac{(q_{k+1}-q_k)^2}{\epsilon} -
\epsilon V(q_k).
$$

This is exactly the standard lattice action slice.

---

# 6. Global Accessibility Functional

The total accessibility of a history is

$$
A[h] = \sum_{k=0}^{N-1}
S_k.
$$

Substituting the slice form,

$$
A[h] =
\sum_{k=0}^{N-1}
[
\frac{m}{2}
\frac{(q_{k+1}-q_k)^2}{\epsilon} -
\epsilon V(q_k)
].
$$

Equivalently,

$$
A[h] =
\sum_{k=0}^{N-1}
\epsilon E_k(P_k).
$$

---

# 7. Continuous Limit

As

$$
N\rightarrow\infty,
$$

the accessibility functional becomes

$$
A[q] = \int_{t_i}^{t_f}
E(P(q,\dot q,t))
\,dt.
$$

For standard mechanics,

$$
E(P)=L,
$$

giving

$$
A[q] =
\int_{t_i}^{t_f}
L(q,\dot q,t)\,dt.
$$

Therefore

$$
A[q]=S[q].
$$

The classical action is a special accessibility functional.

---

# 8. Interaction Operator (SID-I)

Introduce the weighting operator

$$
W:\mathbb R\rightarrow\mathbb C.
$$

The relational weight of a history is

$$
\Phi[h] =
W(A[h]).
$$

---

# 9. Quantum Specialization

Ordinary quantum mechanics chooses

$$
W(x) =
\exp
(
\frac{i}{\hbar}x
).
$$

Hence

$$
\Phi[h] =
\exp
(
\frac{i}{\hbar}
A[h]
).
$$

Since

$$
A[h]=S[h],
$$

this becomes

$$
\Phi[h] =
\exp
(
\frac{i}{\hbar}
S[h]
).
$$

---

# 10. Relational Measure

Define the discrete measure

$$
d\mu_N(h) =
\prod_{j=1}^{N-1}
dq_j.
$$

This measures the volume of the finite-dimensional history space.

---

# 11. Normalization Factor

The exact discrete normalization is

$$
Z_N =
(
\frac{m}
{2\pi i\hbar\epsilon}
)^{N/2}.
$$

RDG interpretation:

$$
Z_N =
\text{relational measure normalization}.
$$

---

# 12. Dynamics Operator (SID-D)

The finite-resolution relational propagator is

$$
R_N(B,A) =
Z_N
\int_{H_N(A\rightarrow B)}
\Phi[h]
\,d\mu_N(h).
$$

Expanded,

$$
R_N(B,A) =
(
\frac{m}
{2\pi i\hbar\epsilon}
)^{N/2}
\int
(
\prod_{j=1}^{N-1}
dq_j
)
\exp
(
\frac{i}{\hbar}
A[h]
).
$$

Substituting the accessibility functional,

$$
R_N(B,A) =
(
\frac{m}
{2\pi i\hbar\epsilon}
)^{N/2}
\int
(
\prod_{j=1}^{N-1}
dq_j
)
\exp
[
\frac{i}{\hbar}
\sum_{k=0}^{N-1}
\epsilon E_k(P_k)
].
$$

---

# 13. Continuum RDG Limit

The continuum propagator is

$$
R(B,A) =
\lim_{N\to\infty}
R_N(B,A).
$$

Formally,

$$
R(B,A) =
\int_H
\Phi[h]
\,\mathcal D h.
$$

or

$$
R(B,A) =
\int_H
W(A[h])
\,\mathcal D h.
$$

---

# 14. Quantum Limit

Choosing

$$
W(x) =
e^{ix/\hbar},
$$

gives

$$
R(B,A) =
\int_H
\exp
(
\frac{i}{\hbar}
A[h]
)
\mathcal D h.
$$

and since

$$
A[h]=S[h],
$$

$$
R(B,A) =
\int_H
\exp
(
\frac{i}{\hbar}
S[h]
)
\mathcal D h.
$$

This is exactly the Feynman path integral.

---

# 15. Observable Accessibility Density

The observable accessibility density is

$$
P(B,A) =
|R(B,A)|^2.
$$

This reduces to the ordinary quantum probability density.

---

# 16. Stationary Accessibility Principle

The dominant history family satisfies

$$
\delta A[h]=0.
$$

For

$$
A[h]=S[h],
$$

this becomes

$$
\delta S[h]=0.
$$

which yields the Euler-Lagrange equation

$$
\frac{d}{dt}
(
\frac{\partial L}{\partial \dot q}
) -
\frac{\partial L}{\partial q} =
0.
$$

---

# 17. Complete SID/PED Correspondence

## SID Layer

### Structure

$$
S_N =
H_N(A\rightarrow B).
$$

### Interaction

$$
I[h] =
\Phi[h] =
W(A[h]).
$$

### Dynamics

$$
D =
R_N(B,A) =
Z_N
\int_{H_N}
I[h]
\,d\mu_N(h).
$$

---

## PED Layer

### Power

$$
P_k = \frac{m}{2}
(
\frac{q_{k+1}-q_k}{\epsilon}
)^2 -
V(q_k).
$$

### Evaluation

$$
E_k(P_k) =
P_k.
$$

### Dynamics

$$
D_k:
q_k
\rightarrow
q_{k+1}.
$$

---

# 18. Final RDG Equation

The entire discrete RDG formalism is summarized by

$$
R_N(B,A) =
Z_N
\int_{H_N(A\rightarrow B)}
W
(
\sum_{k=0}^{N-1}
\epsilon E_k(P_k)
)
d\mu_N(h).
$$

with

$$
Z_N =
(
\frac{m}
{2\pi i\hbar\epsilon}
)^{N/2},
$$

$$
d\mu_N(h) =
\prod_{j=1}^{N-1}
dq_j,
$$

$$
P_k =
\frac{m}{2}
(
\frac{q_{k+1}-q_k}{\epsilon}
)^2 -
V(q_k),
$$

$$
A[h] =
\sum_{k=0}^{N-1}
\epsilon E_k(P_k),
$$

and quantum mechanics recovered by

$$
W(x) =
e^{ix/\hbar}.
$$

Then

$$
P(B,A) =
|R(B,A)|^2.
$$

---
