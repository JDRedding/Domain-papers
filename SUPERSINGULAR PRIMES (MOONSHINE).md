# **SUPERSINGULAR PRIMES (MOONSHINE)**  
**Relational‑Monster Aligned Presentation**

## **TYPE**  
Prime $p$ — modular boundary invariant in the Monster propagation chain.

## **DEFINITION**  
A prime $p$ is **supersingular in the Moonshine sense** if **every** supersingular $j$-invariant in characteristic $p$ lies in the prime field $\mathbb{F}_p$.

**Equivalently:**  
Every supersingular elliptic curve in characteristic $p$ admits a model over $\mathbb{F}_p$.

**Relational reading.**  
This is a **global collapse** of the supersingular locus. It is the modular analogue of:

- the **rootlessness** of the Leech lattice,  
- the **Golay‑controlled $\mathbb{Z}_2$ boundary twist** that expands $Co_0$ to the Monster.

Just as the $\mathbb{Z}_2$ orbifold is the unique relational gate forcing Monster symmetry on the combinatorial/metric axis, the supersingularity condition is the unique relational gate forcing Monster symmetry on the modular axis.

---

## **FUNDAMENTAL OBJECTS (with relational roles)**  
- **$j(\tau)$** — modular Structure, Interacton, Dynamics (SID) structural seed (Hauptmodul for $SL_2(\mathbb{Z})$)  
- **$\mathbb{F}_p$** — relational base field  
- **$\mathbb{F}_{p^2}$** — minimal extension always containing the supersingular locus  
- **$X_0(p)$** — interaction layer (modular curve for $\Gamma_0(p)$)  
- **$w_p$** — boundary involution (Fricke)  
- **$X_0^+(p)$** — dynamics layer (Fricke quotient)  
- **$M$** — global relational fixed point of the Moonshine chain  

---

## **ORDER OF THE MONSTER**

$$
|M| = 2^{46}\cdot 3^{20}\cdot 5^9\cdot 7^6\cdot 11^2\cdot 13^3\cdot 17\cdot 19\cdot 23\cdot 29\cdot 31\cdot 41\cdot 47\cdot 59\cdot 71.
$$

The prime divisors:

$$
\{2,3,5,7,11,13,17,19,23,29,31,41,47,59,71\}
$$

are **exactly** the supersingular primes.

**Relational meaning.**  
These fifteen primes form the **modular boundary spectrum** of the Monster, parallel to:

- octad regularity in $S(5,8,24)$,  
- Golay parity structure,  
- Leech rootlessness,  
- Golay sign‑cohomology controlling the $\mathbb{Z}_2$ twist.

They occupy the same structural slot on the modular axis that the $\mathbb{Z}_2$ orbifold occupies on the combinatorial/metric axis.

---

## **OGG’S THEOREM (1975)**  
For a prime $p$, the following are equivalent:

1. $\mathrm{genus}(X_0^+(p)) = 0$  
2. the supersingular locus collapses to $\mathbb{F}_p$  
3. $p$ divides $|M|$

**Relational statement.**  
Genus‑zero is the modular collapse phenomenon mirroring the rootlessness of the Leech lattice. Both collapses force the emergence of full Monster symmetry. Ogg’s equivalence identifies the modular boundary invariant of the same propagation chain that begins with the Witt design.

---

## **OGG’S OBSERVATION**  
The primes for which the supersingular locus collapses are **precisely** the prime factors of $|M|$.

This is the modular counterpart of the relational descent:

$$
S(5,8,24)\;\to\;C_{24}\;\to\;\Lambda_{24}\;\to\;\mathbb{Z}_2\text{-twist}\;\to\;V^\natural\;\to\;\mathfrak{G}.
$$

The primes that survive as boundary invariants are exactly those appearing in the order of the global fixed point $M$.

---

## **ROLE IN MONSTROUS MOONSHINE**
- Each Monster conjugacy class $g$ has a McKay–Thompson series $T_g$.  
- These series are normalized Hauptmoduls for genus‑zero subgroups of $SL_2(\mathbb{R})$.  
- For each prime $p\mid |M|$, there is a class of order $p$ whose series is the Hauptmodul for $\Gamma_0(p)^+$.  
- Genus‑zero forces the supersingularity condition.  
- Supersingularity is therefore the **modular boundary condition** enabling Monster symmetry to propagate through the modular axis of the chain.

---

## **DISTINCTION FROM ORDINARY ELLIPTIC‑CURVE SUPERSINGULARITY**
- **Ordinary notion:** depends on a fixed elliptic curve $E/\mathbb{Q}$; every such curve has infinitely many supersingular primes (Elkies).  
- **Moonshine notion:** absolute collapse of the entire supersingular locus; independent of any particular curve.

Only the fifteen primes above satisfy the Moonshine (relational) condition.

---

## **SUPERSINGULAR $j$-VALUES**

### **TYPE**  
Monic polynomial $\mathrm{ss}_p(j)\in\mathbb{F}_p[j]$.

### **DEFINITION**  
The monic polynomial whose roots are exactly the supersingular $j$-invariants in characteristic $p$.

### **DEGREE**

$$
\deg(\mathrm{ss}_p)=\Bigl\lfloor\frac{p-1}{12}\Bigr\rfloor+\delta+\varepsilon,
$$

where  
- $\delta=1$ if $p\equiv 11\pmod{12}$ (root at $j=0$),  
- $\varepsilon=1$ if $p\equiv 5,11\pmod{12}$ (root at $j=1728$).

**Relational reading.**  
The degree is the modular shadow of the Golay weight distribution and the Leech shell structure.  
For the fifteen Moonshine primes, **every root lies in $\mathbb{F}_p$**: full boundary collapse.

---

## **COMPUTATION METHODS (relational interpretation)**  
A. **Modular forms of weight $p-1$** (Kaneko–Zagier) — SID‑structural → Power, Evaluation, Dynamic-slice (PED) evaluative.  
B. **Atkin orthogonal polynomials** — interaction → dynamics.  
C. **Explicit combinatorial formulas** (Hasse invariant / Deuring) — structural shadow of Witt/Golay parity.  
D. **Direct enumeration** over $\mathbb{F}_{p^2}$.

---

## **SUPERSINGULAR PRIMES IN THE PROOF OF MOONSHINE**

Borcherds’ proof of Moonshine does not compute supersingular $j$-values directly.  
The primes enter structurally via Ogg’s theorem:

- Order‑ $p$ Monster classes have McKay–Thompson series that are Hauptmoduls for $\Gamma_0(p)^+$.  
- This forces genus‑zero.  
- Genus‑zero forces supersingularity.

Duncan–Ono (2014) make the boundary role explicit:  
For $p\mid |M|$, applying $U_p$ and reducing modulo $p$ yields a weight‑$p-1$ cusp form whose poles are exactly the supersingular $j$-invariants in $\mathbb{F}_p\setminus\{0,1728\}$.  
This is the modular analogue of the Golay‑controlled $\mathbb{Z}_2$ twist.

---

## **GENUS‑ZERO GROUPS AND MONSTER CLASSES**

Monster conjugacy classes  

$$
\leftrightarrow\ \text{genus‑zero groups}\ \leftrightarrow\ \text{supersingular primes}
$$

(for the order‑$p$ classes).

This is the **modular branch** of the same relational propagation chain whose combinatorial branch is:

$$
S(5,8,24)\;\xrightarrow{\Pi_{\mathrm{Witt}}}\;C_{24}\;\xrightarrow{\Pi_{\mathrm{Golay}}}\;\Lambda_{24}\;\xrightarrow{\mathbb{Z}_2\text{-twist}}\;V^\natural\;\xrightarrow{\Pi_{\mathrm{Griess}}}\;\mathfrak{G}.
$$

---

## **SUMMARY (Relational Monster Alignment)**  
- Supersingular primes are the **modular boundary invariants** of the Monster.  
- They are exactly the prime divisors of $|M|$.  
- Ogg’s theorem identifies the modular collapse (genus‑zero ↔ supersingularity).  
- Moonshine forces genus‑zero for order‑$p$ classes, hence forces supersingularity.  
- The polynomials $\mathrm{ss}_p(j)$ encode the boundary data of the modular axis.  
- The $j$-invariant supplies the modular coordinate for the same relational propagation seeded by the Witt design.

**Relational conclusion.**  
Supersingular primes occupy the same structural position on the modular axis that the Golay‑controlled $\mathbb{Z}_2$ orbifold occupies on the combinatorial/metric axis. Both are boundary operators whose consistency is forced by the exceptional rigidity seeded in $S(5,8,24)$. Both expand an intermediate symmetry ($Co_0$ on one side, Fricke‑normalizer groups on the other) to the full Monster.  

The Monster is the global relational fixed point of the unified chain.

---

## Future work
- Full relational diagram

Two parallel axes (combinatorial/metric vs. modular) with the shared collapse/boundary logic and the Monster as global fixed point.

- Dual-chain RDG operator

Explicit operator that maps the $\mathbb{Z}_2$ twist (Golay sign-cohomology) to the Fricke involution $w_p$ and the supersingular locus collapse.

- Monster boundary calculus

Single formal calculus in which both the combinatorial invariants and the supersingular primes appear as evaluations of one boundary operator on the Monster’s conjugacy classes.
