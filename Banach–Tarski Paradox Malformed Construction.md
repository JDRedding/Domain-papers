# **Banach–Tarski Paradox — Malformed Construction**

**Banach–Tarski is not a paradox.**

Banach–Tarski is internally valid only after accepting the extensional set-theoretic primitives that generate it. If those primitives are inadequate as an ontology of regions, then Banach–Tarski is not a paradox of the relational universe; it is a consequence of an inadequate representation of regions.

It is a malformed construction that only works in a structure‑free extensional universe. The mathematical framework that makes Banach–Tarski possible has already admitted an impoverished notion of object, membership, equivalence, and transformation. Therefore, the resulting construction is formally valid inside that framework but malformed as a representation of any kind of relational framework intended to describe reality.

Once sets are replaced by regions with structure, interaction, and dynamics, the required pieces cannot be formed, the required bijections cannot be typed, and the required group actions cannot be realized. The theorem cannot even be stated in the relational grammar.

## Abstract 
This document puts forth that the Banach–Tarski “paradox” is not a genuine physical or ontological paradox but a malformed mathematical construction that depends on an impoverished, purely extensional set theory. While it restates the classical Banach–Tarski theorem and related facts (equidecomposability, paradoxicality, the sphere version, dependence on non‑measurable sets, the Axiom of Choice, and non‑amenable groups, minimal piece count = 5), the core claim is that once “sets” are replaced by richly typed regions with structure, interaction, dynamics, and flux-preserving constraints, the required pieces, bijections, and group actions cannot be formed. The paper diagnoses failures at multiple levels (structure, interaction, dynamics, equipotence, global choice/τ, and species-template requirements) and concludes the decomposition is ontologically malformed rather than paradoxical.

---

## **1. Classical formulation (extensional set theory)**

Let  

$$
B^3=\{x\in\mathbb{R}^3:\|x\|\le 1\}
$$

and let  

$$
E(3)=\{x\mapsto Rx+t : R\in O(3),\, t\in\mathbb{R}^3\}
$$

be the Euclidean isometry group acting on $\mathbb{R}^3$.

### **Theorem (Banach–Tarski).**  
There exist pairwise disjoint sets $A_1,\dots,A_n\subseteq B^3$ and isometries $g_1,\dots,g_n\in E(3)$ such that

$$
B^3=\bigcup_{k=1}^n A_k,
\qquad
B^3\sqcup B^3=\bigsqcup_{k=1}^n g_k(A_k).
$$

Equivalently,

$$
B^3 \sim_{E(3)} B^3\sqcup B^3.
$$

This is the classical paradox: a ball can be decomposed into finitely many pieces and reassembled into two balls of the same size.

---

## **2. Equidecomposability (classical definition)**

Let a group $G$ act on a set $X$.  
For $A,B\subseteq X$, define:

$$
A\sim_G B
\quad\Longleftrightarrow\quad
\exists\,k\in\mathbb{N},\,
A=\bigcup_{i=1}^k A_i,\,
B=\bigcup_{i=1}^k B_i,\,
A_i\cap A_j=\varnothing,\,
B_i\cap B_j=\varnothing,
$$

and

$$
\exists\,g_i\in G:\quad g_i(A_i)=B_i\ \text{for all }i.
$$

This is the standard notion of **equidecomposability**.

---

## **3. Paradoxicality (classical definition)**

A nonempty set $E\subseteq X$ is **$G$-paradoxical** if there exist disjoint subsets $A,B\subseteq E$ such that

$$
A\sim_G E
\qquad\text{and}\qquad
B\sim_G E.
$$

Equivalently,

$$
E\sim_G E\sqcup E.
$$

Thus Banach–Tarski asserts:

$$
B^3\ \text{is}\ E(3)\text{-paradoxical}.
$$

---

## **4. Strong form**

If $A,B\subseteq\mathbb{R}^3$ are bounded and have nonempty interior, then

$$
A\sim_{E(3)} B.
$$

This is the “any two solids of nonempty interior are equidecomposable” version.

---

## **5. Minimal piece count**

Robinson (1947) proved that the paradox can be achieved with **five** pieces.  
No decomposition with fewer than five pieces is possible.

---

## **6. Sphere version**

Let  

$$
S^2=\{x\in\mathbb{R}^3:\|x\|=1\}.
$$

Under the action of $SO(3)$, the sphere is paradoxical:

$$
S^2\sim_{SO(3)} S^2\sqcup S^2.
$$

This is the classical “free subgroup of $SO(3)$” construction.

---

## **7. Measure‑theoretic fact**

Every paradoxical decomposition requires non‑measurable pieces.  
No finitely additive, rotation‑invariant measure extending Lebesgue measure exists on all subsets of $\mathbb{R}^3$.  
The construction uses the **Axiom of Choice** to select representatives from orbits of a free subgroup of $SO(3)$.

Paradoxical decompositions therefore require:

- non‑measurable sets  
- the Axiom of Choice  
- non‑amenable group actions  

---

## **8. Minimal symbolic skeleton (classical)**

```
Let B^3 = { x in R^3 | ||x|| <= 1 }.
Let E(3) act on R^3 by isometries.

Banach–Tarski:
  ∃ disjoint A_1,...,A_n ⊆ B^3
  ∃ g_1,...,g_n ∈ E(3)
  such that

    B^3 = ⋃ A_k
    B^3 ⊔ B^3 = ⊔ g_k(A_k)

Equidecomposability:
  A ~_G B  ⇔  ∃ partitions A_i, B_i and g_i ∈ G with g_i(A_i)=B_i.

Paradoxical:
  E is G-paradoxical ⇔ ∃ disjoint A,B ⊆ E with A ~_G E and B ~_G E.
```

---

## **9. Diagnosis: Why Banach–Tarski Is Malformed**

Replaces extensional sets with **regions**:

> *Sets → Regions: nodes + structure + interaction + dynamics.*

Banach–Tarski requires “pieces” $A_k$ that are:

- arbitrary subsets  
- with no structure  
- no interaction  
- no dynamics  
- no flux  
- no transport data  
- no species constraints  

These are **not regions**.  
They are malformed objects in ontology.

### **9.1. Structure layer failure**

> *Membership x ∈ X → typed membership edge (Member(x,X)).*

Banach–Tarski uses membership as a **purely extensional predicate**, not an edge.  
Its pieces have **no internal structure**.

Thus the decomposition $B^3 = \bigcup A_k$ is **not well‑typed**.

### **9.2. Interaction layer failure**

> *Relations are already objects… full geometric‑dynamical entity (carriers, flux rules, transport data).*

Banach–Tarski uses relations that are **just subsets of products**, with no flux or transport.

Thus the action $g_k(A_k)$ is **not a valid interaction morphism**.

### **9.3. Dynamics layer failure**

> *Dynamics: flux & state evolution.*

Banach–Tarski requires pieces with **zero flux**, **zero dynamics**, and **no moderation**.

Thus the “reassembly” into two balls violates:

- flux preservation  
- continuity  
- Q‑slice moderation  

### **9.4. Equipotence failure**

> *Equipotence requires a flux‑preserving bijection.*

Banach–Tarski uses bijections that do **not** preserve flux or structure.

Thus $B^3 \sim B^3\sqcup B^3$ is **not a valid equipotence relation**.

### **9.5. τ‑operator failure**

> *τ picks some element satisfying a predicate.*

Banach–Tarski requires **global choice over unstructured orbits**, which your τ‑operator does not allow.

Thus the selection of orbit representatives is **malformed**.

### **9.6. Species template violation**

> *A species is a template describing sets, relations, operations, and axioms.*

Banach–Tarski’s pieces do not satisfy any species template:

- no structure  
- no interaction  
- no dynamics  
- no axioms  

Thus the decomposition is **not a species instance**.

---



