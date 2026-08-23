# Minimal Cardinality and Infimum 

- **Minimal Relational Dynamic Geometry Cardinality:**  
  Smallest number of SID/PED equivalence classes in a finite-resolution family.

- **Relational Dynamic Geometry Infimum:**  
  Greatest lower bound in a finite relational poset.

- **Connection:**  
  They coincide only because Relational Dynamic Geometry structures are finite; ℵ₀ never appears.

- **Illustrative Relational Dynamic Geometry Formula:**  

$$
\min\{\text{Card}_{Relational}(X):X\in S_n\}=\inf_{Relational}\{\text{Card}_{Relational}(X):X\in S_n\}
$$

because the poset is finite.

## 1. Minimal Cardinality (Relational Dynamic Geometry‑Mode)

### **Relational Dynamic Geometry Definition (Finite, Relational, Resolution‑Indexed)**  
Given a finite‑resolution family  

$$
S_n=\{X_1,\dots,X_k\},\qquad |S_n|\ge 2^n,
$$  

the **minimal Relational Dynamic Geometry cardinality** is the smallest number of **SID/PED equivalence classes** realized by any configuration in $S_n$.

Formally, let  

$$
\text{Card}_{Relational}(X)=\bigl|X/\!\sim_{Relational}\bigr|
$$  

be the relational cardinality operator (finite quotient count).

Then:

$$
\boxed{\kappa_{Relational}(S_n)=\min\{\text{Card}_{Relational}(X):X\in S_n\}}
$$

### **Key Properties (Relational Dynamic Geometry‑Mode)**  

- **Finite:** All Relational Dynamic Geometry cardinalities are finite; no ℵ₀ or continuum cardinal $c$ appear.  
- **Constructive:** Cardinality is computed via quotienting under $\sim_{Relational}$, not by counting elements of infinite sets.  
- **Resolution‑indexed:** Minimal cardinality depends on the resolution level $n$.  
- **Attained:** Because $S_n$ is finite, the minimum always exists.

### **Example (Relational Dynamic Geometry‑Mode)**  
Let  

$$
S_n=\{X_1,X_2,X_3\}
$$  

with  

$$
\text{Card}_{Relational}(X_1)=3,\quad
\text{Card}_{Relational}(X_2)=2,\quad
\text{Card}_{Relational}(X_3)=8.
$$

Then  

$$
\kappa_{Relational}(S_n)=2.
$$

This mirrors classical example but stays strictly finite.

---

## 2. Infimum (Greatest Lower Bound) — Relational Dynamic Geometry‑Mode

### **Relational Dynamic Geometry Definition (Finite Posets Only)**  

Let $(P_n,\le_{Relational})$ be a finite relational poset at resolution $n$.  
For any subset $A\subseteq P_n$, the **Relational Dynamic Geometry infimum** is:

$$
\inf_{Relational}(A)=\max\{p\in P_n : p\le_{Relational} a\text{ for all }a\in A\}.
$$

### **Key Properties (Relational Dynamic Geometry‑Mode)**  

- **Finite poset:** No infinite descending chains; no infinite lower bounds.  
- **Always attained:** In a finite poset, the infimum always exists and is an element of $A$ or of $P_n$.  
- **Order‑based:** Infimum depends on relational order, not on cardinality.

### **Example (Relational Dynamic Geometry‑Mode)**  
Let  

$$
A=\{p_1,p_2,p_3\}\subseteq P_n
$$  

with  

$$
p_0\le_{Relational} p_i\quad\text{for all }i.
$$

Then  

$$
\inf_{Relational}(A)=p_0.
$$

This mirrors the classical example $\inf\{1/n\}=0$ but stays finite.

---

## 3. Comparative Analysis (Relational Dynamic Geometry‑Mode)

| Feature | **Minimal Relational Cardinality** | **Relational Infimum** |
|--------|-----------------------------------------------|-------------------------------------------|
| Domain | Finite-resolution families $S_n$ | Finite relational posets $P_n$ |
| Nature of “smallest” | Smallest quotient cardinality | Greatest lower bound |
| Realization | Always attained (finite) | Always attained (finite) |
| Example | $\min\{\text{Card}_{Relational}(X)\}$ | $\inf_{Relational}(A)$ |
| Focus | Quotient structure | Relational order |

### **Important Relational Dynamic Geometry Distinction**  

- Minimal cardinality counts **equivalence classes** under SID/PED.  
- Infimum identifies **order‑theoretic bounds** under $\le_{Relational Dynamic Geometry}$.  
- Both are finite because Relational Dynamic Geometry forbids infinite sets and infinite cardinals.

### **Classical vs Relational Dynamic Geometry**  

Classically, minimal cardinality and infimum coincide for cardinals because cardinals are well‑ordered.

In Relational Dynamic Geometry:

- There are **no infinite cardinals**.  
- All sets are finite.  
- All posets are finite.  
- Therefore minimal cardinality and infimum coincide **only because the domain is finite**, not because of well‑ordering.

## SID/PED Note (RDG‑Mode)

In RDG, both minimal cardinality and infimum are interpreted through the **SID** and **PED** relational triads. This ensures that every invariant remains finite, quotient‑based, and resolution‑indexed.

- **SID (Structure–Interaction–Dynamics)**  
  Minimal cardinality corresponds to the smallest number of **structural equivalence classes** permitted by SID at resolution \(n\).  
  Infimum corresponds to the **lowest SID‑consistent relational bound** in a finite poset.

- **PED (Power–Evaluation–Dynamics)**  
  Minimal cardinality is the minimal **evaluation‑stable quotient** under PED collapse.  
  Infimum is the greatest lower bound compatible with **finite PED dynamics**, guaranteed because all RDG posets are finite.

Thus:

> In RDG, minimal cardinality and infimum coincide only because SID/PED structures are finite and relational—not because of any Cantorian well‑ordering.

ℵ₀ never appears as an ontological size; all invariants arise from **finite quotient geometry** governed by SID/PED.
