# Reversible Automata–Representation Formalism

This document builds a formal bridge from finite reversible automata (permutation automata) to linear/unitary representation theory and spectral analysis, then generalizes to monoid (non‑invertible) actions. It shows how combinatorial automata → group actions → functorial lifts to vector spaces → unitary representations → spectral data (characters, eigenvalues, adjacency/operator spectra) give structural and dynamical insights (orbits ↔ invariant subspaces, spectral gap ↔ mixing), and it records notation, examples, and implications (quantum, thermodynamic, categorical).

```
+------------------+     Functor F     +--------------------+
| Permutation Auto | ----------------> |  Category FinSet^× |
| A = (Q, Σ, δ)    |                   |  Morphisms ∈ Sym(Q)|
+------------------+                   +--------------------+
         |                                       |
         | Group Generation                      | Hilbert Space Lift
         v                                       v
+------------------+  Unitary Rep U    +--------------------+
|  Group Action    | ----------------> | Operator Algebra   |
|  G ↷ Q           |                   | H = ℓ²(Q) ≅ ℂⁿ     |
+------------------+                   +--------------------+
         |                                       |
         | Orbits / Burnside                     | Spectral Theorem
         v                                       v
+------------------+                   +--------------------+
| Cycle Index Z(G) | <---------------+ | Adjacency / Graph  |
| Fixed Points χ(g)|   Tr(U_g) = χ(g)  | Operator Spectrum  |
+------------------+                   +--------------------+
```
This chain demonstrates a conceptual pipeline:

Finite combinatorial systems → Invertible dynamics → Group-theoretic symmetry → Functorial embedding → 5. Linear/unitary representation → Spectral analysis → Generalization to monoids.

It establishes a functorial bridge from automatic combinatorics to linear algebraic and representation-theoretic methods, enabling tools from group theory, categorical algebra, and spectral theory to analyze automata and their generalizations.

The sequence provided outlines a deep categorical and algebraic landscape connecting discrete dynamical systems (permutation automata) to abstract monoid actions through higher-level structures. Let us analyze and link each step rigorously.

1. Permutation Automata
   
A permutation automaton is a finite automaton where each input symbol induces a permutation on the set of states. Formally, if Q is the set of states and Σ the input alphabet, each a∈Σ acts as a bijection 
πa:Q→Q. These are reversible finite-state systems in the sense that the state transition can be undone, making the system an instance of a reversible dynamical system.

3. Reversible Systems
   
Reversibility ensures that the time evolution map is bijective, which allows the system to satisfy properties analogous to unitary evolution in linear spaces. Algebraically, the reversible transformations form a group G⊆Sym(Q), the symmetric group on Q.

4. Group Actions
   
Given a group G acting on a set Q, the action is defined as a map G×Q→Q satisfying g_1​ ⋅(g_2​ ⋅q)=(g_1 g_2​)⋅q and e⋅q=q. In this context, the reversible automaton induces a permutation group action on the state-space, encoding symmetry and orbits.

5. Functors

Lift the combinatorial structure to the categorical level:
Define a category Aut of automata with morphisms as transition-respecting maps.

A functor F:Aut → Vect_C assigns to each automaton a complex vector space of states C^Q and to each transition map the corresponding linear operator.

This functorial perspective translates discrete permutations into linear representations, enabling the use of representation-theoretic tools.

5. Unitary Representations

Since permutations are bijective, the associated linear operators are unitary under the standard Hermitian inner product on C^Q

$$U_{\pi_a} \colon \mathbb{C}^Q \to \mathbb{C}^Q, \quad U_{\pi_a} \ket{q} = \ket{\pi_a(q)}$$

Thus, every permutation automaton corresponds to a unitary representation of its associated permutation group. Spectral decomposition is available because unitary operators are diagonalizable over C.

6. Spectral Data
Unitary operators admit a spectrum of eigenvalues λ∈C with ∣λ∣=1. Spectral data provides:

Invariant subspaces corresponding to irreducible components.

Eigenbasis decomposition, which can facilitate dynamical analysis, long-term behavior, or quantum analogues (quantum automata).

7. From Monoids to Monoid Actions
If we relax reversibility (non-invertible transitions), the set of all transition operators forms a monoid (M,⋅) under composition. Formally:

Let M=⟨π_a :a∈Σ⟩ under composition.

The action of M on Q (or on C^Q) defines a monoid action: M×Q→Q satisfying m_1 ⋅(m_2 ⋅q)=(m_1 m_2​)⋅q and 1⋅q=q. This closure generalizes group actions to non-invertible dynamics, bridging automata theory with semigroup and monoid representation theory.

```
SUMMARY MAPPING — STRUCTURE → ALGEBRAIC / CATEGORICAL OBJECT
=====================================================================

Step                     | Structure                          | Algebraic / Categorical Object
-------------------------|------------------------------------|-----------------------------------------------
Permutation Automata     | States + reversible transitions    | Set Q with bijections [π_a]
Reversible Systems       | Invertible dynamics                | Group G ⊆ Sym(Q)  [Sym(Q)]
Group Actions            | Action on states                   | G × Q → Q  [Group Action]
Functors                 | Linearization / lifting            | F : Aut → Vect_C  [Functor]
Unitary Representations  | Linear dynamics                    | U_{π_a} ∈ U(C^Q)  [Unitary Rep]
Spectral Data            | Eigenvalues / eigenspaces          | Spectrum of U_g   [Character Theory]
Monoids & Actions        | Non-invertible generalization      | M × Q → Q         [Monoid Action]
```

PERMUTATION AUTOMATA → REVERSIBLE SYSTEMS → GROUP ACTIONS → FUNCTORS
→ UNITARY REPRESENTATIONS → SPECTRAL DATA → MONOID ACTIONS

```
NOTATION
---------------------------------------------------------------------
Q, n = |Q|        : state space
Σ                 : generator alphabet
δ_a, ρ(a)         : permutation updates
G = <δ_a>         : transition group
G ↷ Q             : group action
U_a               : unitary permutation matrix
Orb(q), Stab(q)   : orbit and stabilizer
F : Σ* → FinSet^× : categorical functor
---------------------------------------------------------------------
```
```
1. PERMUTATION AUTOMATON
------------------------
A = (Q, Σ, δ, q0, F)
    Q : finite state set, |Q| = n
    Σ : finite alphabet (generators)
    δ : Q × Σ → Q
    q0: initial state
    F : accepting states (optional)

Permutation condition:
    For each a ∈ Σ:
        δ_a : Q → Q
        δ_a(q) = δ(q, a)
        δ_a ∈ Sym(Q) ≅ S_n

Transition group:
    G = < δ_a : a ∈ Σ >  ≤  Sym(Q)

Word action:
    If w = a1 a2 ... ak:
        q(w) = q0 · δ_a1 · δ_a2 · ... · δ_ak


2. FINITE REVERSIBLE DYNAMICAL SYSTEM
-------------------------------------
Generator representation:
    ρ : Σ → Sym(Q)

Free-monoid action:
    Φ : Σ* × Q → Q
    Φ(w, q) = ρ(w)(q)


3. GROUP ACTION
----------------
Generated group:
    G = < ρ(a) : a ∈ Σ >

Action:
    G ↷ Q

Orbit:
    Orb(q) = { g · q : g ∈ G }

Stabilizer:
    Stab(q) = { g ∈ G : g · q = q }

Orbit–stabilizer theorem:
    |Orb(q)| = |G| / |Stab(q)|


4. REGULAR (CAYLEY) REPRESENTATIONS
-----------------------------------
Identify Q with the underlying set of a group G.

Right regular:
    δ(g, s) = g · s

Left regular:
    δ(g, s) = s · g


5. CATEGORICAL FORM (FUNCTOR)
------------------------------
View Σ* as a one-object category.

Functor:
    F : Σ* → FinSet^×

Object mapping:
    F(*) = Q

Morphisms:
    F(a) = δ_a


6. UNITARY / OPERATOR FORM
---------------------------
Hilbert space:
    H = C^n = ℓ^2(Q)

Permutation matrices:
    (U_a)_{i,j} =
        1 if δ_a(j) = i
        0 otherwise

Unitary property:
    U_a† U_a = I

Unitary representation:
    U : G → U(n)
    U(g) = permutation matrix of g

Generating operator (undirected):
    A = Σ_{a ∈ Σ} (U_a + U_a†)


7. CYCLE INDEX AND CHARACTER FORMULAS
--------------------------------------
Cycle index:
    Z(G) = (1 / |G|) Σ_{g ∈ G} Π_{k=1}^n x_k^{c_k(g)}

Character of permutation representation:
    χ(g) = tr(U_g)
         = number of fixed points of g


8. MAXIMAL PURE FORM
---------------------
Reversible monoid action:
    ρ : M → Sym(Q)

If all generators in M are invertible, M reduces to the group it generates.
```

## Implications
Spectral properties can reveal periodicity, ergodicity, and invariant subspaces.

Monoids provide a natural framework for irreversible processes, extending the utility of the above analysis beyond strictly reversible systems.

Group-theoretic and monoid-theoretic functors unify discrete automata theory with modern representation theory, quantum computation, and categorical dynamics.

This sequence encapsulates an elegant algebraic and categorical abstraction pipeline for automata, placing permutation systems within the broader context of monoids and their linear/unitary actions.

---

### Key Structural Invariances & Equivalences

*  Reversibility $\iff$ Unitarity
The requirement that each generator $\delta_a$ is a permutation ($\delta_a \in \text{Sym}(Q)$) ensures that the transition matrix $U_a$ is orthogonal/unitary. In operator terms, entropy is conserved ($\Delta S = 0$), and no state information is lost under word composition.
*  Orbits $\iff$ Irreducible Components
The decomposition of the state space $Q$ into distinct group orbits $\text{Orb}(q_i)$ maps directly to the block-diagonal decomposition of the Hilbert space $\mathcal{H} = \ell^2(Q)$:

$$\mathcal{H} = \bigoplus_{i=1}^k \ell^2(\text{Orb}(q_i))$$

Each orbit defines a subrepresentation of $G$. By Burnside's Lemma, the number of distinct orbits $k$ is given by the spatial average of the character:

$$k = \frac{1}{\vert{}G\vert{}} \sum_{g \in G} \chi(g) = \frac{1}{\vert{}G\vert{}} \sum_{g \in G} \text{tr}(U_g)$$


*  Cayley Graph Topology & Spectral Gap
The undirected generating operator $A = \sum_{a \in \Sigma} (U_a + U_a^\dagger)$ is the self-adjoint **adjacency operator** of the Schreier (or Cayley) graph of $(G, \Sigma, Q)$.
* $A$ is real symmetric, guaranteeing a real spectrum $\text{spec}(A) \subset [-2\vert{}\Sigma\vert{}, 2\vert{}\Sigma\vert{}]$.
* The top eigenvalue is always $\lambda_1 = 2\vert{}\Sigma\vert{}$.
* The multiplicity of $\lambda_1$ equals the number of connected components (orbits) of the automaton.
* The **spectral gap** $\gamma = 2\vert{}\Sigma\vert{} - \lambda_2$ governs the mixing rate of random walks on the state space $Q$.


*  Categorical Universal Property
By framing $\Sigma^*$ as a single-object category $\mathbf{B}\Sigma^*$, the functor $F: \mathbf{B}\Sigma^* \to \mathbf{FinSet}^\times$ factorizes naturally through the groupoid of state permutations:

$$\mathbf{B}\Sigma^* \longrightarrow \mathbf{B}G \longrightarrow \mathbf{FinSet}^\times$$

This reflects the maximal pure form property: any free monoid action composed entirely of invertible generators canonically collapses to a group action.

---

### Canonical Matrix Representation Example

For a 3-state system $Q = \{1, 2, 3\}$ with a single generator $\delta_a = (1\ 2\ 3)$ (a 3-cycle):

1. **Permutation update:** $1 \mapsto 2 \mapsto 3 \mapsto 1$
2. **Unitary matrix:**

$$U_a = \begin{pmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix}$$


3. **Character:** $\chi(e) = 3$, $\chi(a) = 0$, $\chi(a^2) = 0$.
4. **Spectral Decomposition:** The eigenvalues of $U_a$ are the 3rd roots of unity $\{1, e^{i2\pi/3}, e^{-i2\pi/3}\}$, corresponding to Fourier modes over the cyclic group $\mathbb{Z}_3$.

---

### Extensions & Advanced Connections

1. **Quantum Information / Quantum Computation:**
If $\mathcal{H} = (\mathbb{C}^2)^{\otimes m}$ (a register of $m$ qubits), reversible classical automata correspond to **permutation quantum gates** (e.g., CNOT, Toffoli).
2. **Thermodynamic Interpretation:**
Because $U_a$ is doubly stochastic, the uniform distribution on $Q$ is stationary under all generator updates, matching the microcanonical ensemble in statistical mechanics.

# Appendix - Core equations and notation  

### 1. Permutation automaton

$$
\mathcal{A}=(Q,\Sigma,\delta,q_0,F)
$$

- $Q$): finite set of states, $n=|Q|$
- $\Sigma$: finite alphabet
- $\delta:Q\times\Sigma\to Q$

**Permutation condition**

$$
\forall a\in\Sigma,\quad\delta_a:Q\to Q,\quad q\mapsto\delta(q,a)\quad\text{is bijective},
$$

i.e. $\delta_a\in\mathrm{Sym}(Q)\cong S_n.$

**Transition group**

$$
G=\langle\delta_a:a\in\Sigma\rangle\le\mathrm{Sym}(Q).
$$

**Word action**

$$
q(w)=q_0\cdot\delta_{a_1}\cdots\delta_{a_k},\qquad w=a_1\dots a_k.
$$

### 2. Reversible dynamical system / group action
Representation of generators:

$$
\rho:\Sigma\to\mathrm{Sym}(Q).
$$

Free-monoid (actually group) action:

$$
\Phi:\Sigma^*\times Q\to Q,\qquad\Phi(w,q)=\rho(w)(q).
$$

Generated group action:

$$
G\curvearrowright Q.
$$

**Orbit and stabilizer**

$$
\mathrm{Orb}(q)=\{g\cdot q:g\in G\},\qquad
\mathrm{Stab}(q)=\{g\in G:g\cdot q=q\}.
$$

Orbit-stabilizer theorem:

$$
|\mathrm{Orb}(q)|=\frac{|G|}{|\mathrm{Stab}(q)|}.
$$

### 3. Regular representations (Cayley case)
Identify $Q$ with the underlying set of $G$:

- Right: $\delta(g,s)=g\cdot s$
- Left: $\delta(g,s)=s\cdot g$

### 4. Categorical form
Functor from the one-object category \(\mathbf{B}\Sigma^*\) (or \(\mathbf{B}G\)):

$$
F:\mathbf{B}\Sigma^*\to\mathbf{FinSet}^\times,\qquad F(\ast)=Q,\quad F(a)=\delta_a.
$$

### 5. Unitary representation
Hilbert space $\mathcal{H}=\ell^2(Q)\cong\mathbb{C}^n$.

Permutation matrix of $\delta_a$$:

$$
(U_a)_{i,j}=\begin{cases}
1 & \text{if }\delta_a(j)=i,\\
0 & \text{otherwise}.
\end{cases}
$$

Unitary property:

$$
U_a^\dagger U_a=I.
$$

Unitary representation:

$$
U:G\to\mathrm{U}(n),\qquad g\mapsto U_g.
$$

**Generating (adjacency) operator**

$$
A=\sum_{a\in\Sigma}(U_a+U_a^\dagger).
$$

Spectrum of $A$ is real and lies in $[-2|\Sigma|,2|\Sigma|]$ ; $\lambda_1=2|\Sigma|$ with multiplicity equal to the number of orbits.

### 6. Characters and cycle index
Character of the permutation representation:

$$
\chi(g)=\{tr}(U_g)=\{\text{◉}} \{\text{fixed points of }g\}.
$$

Burnside (number of orbits):

$$
k=\frac1{|G|}\sum_{g\in G}\chi(g)=\frac1{|G|}\sum_{g\in G}\{tr}(U_g).
$$

Cycle index:

$$
Z(G)=\frac1{|G|}\sum_{g\in G}\prod_{k=1}^n x_k^{c_k(g)},
$$

where $c_k(g)$ is the number of cycles of length $k$ in $g$.

### 7. Hilbert-space decomposition

$$
\mathcal{H}=\bigoplus_i\ell^2(\mathrm{Orb}(q_i)).
$$

Each summand is a subrepresentation.

### 8. Monoid generalization (non-reversible case)

$$
\rho:M\to\mathrm{End}(Q)\quad\text{(or }\mathrm{End}(\mathbb{C}^Q)\text{)},
$$

where $M=\langle\delta_a:a\in\Sigma\rangle$ is the monoid generated under composition. The action satisfies

$$
m_1\cdot(m_2\cdot q)=(m_1m_2)\cdot q,\qquad 1\cdot q=q.
$$

### Key structural equivalences
- Reversibility \$\iff$ each $U_a$ is unitary (entropy conservation).
- Orbits $\iff$ invariant subspaces / blocks of the representation.
- Spectral gap of \(A\) controls mixing rate of the random walk on \(Q\).

### Canonical 3-state example
Generator $\delta_a=(1\ 2\ 3)$:

$$
U_a=\begin{pmatrix}
0 & 0 & 1 \\
1 & 0 & 0 \\
0 & 1 & 0
\end{pmatrix}.
$$

Eigenvalues: the cube roots of unity $\{1,\omega,\omega^2\}$.  
Characters: $\chi(e)=3$, $\chi(a)=\chi(a^2)=0$.

**Core notation dictionary**
- $Q,n=|Q|$ — state space  
- $\Sigma$ — generators  
- $\delta_a,\rho(a)$ — permutation updates  
- $G=\langle\delta_a\rangle$ — transition group  
- $G\curvearrowright Q$ — group action  
- $U_a$ — unitary permutation matrix  
- $\mathrm{Orb}(q),\mathrm{Stab}(q)$ — orbit / stabilizer  
- $\chi(g)=\{tr}(U_g)$ — permutation character  
- $A$ — adjacency / generating operator  
- $F:\mathbf{B}\Sigma^*\to\mathbf{FinSet}^\times$ — categorical functor  

These are the fundamental equations and the associated notation of the formalism.
