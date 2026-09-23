# RELATIONAL MATHEMATICS
**/500–599 Science / 510 Mathematics / 515 Analysis / 515.3 Dynamical Systems / 515.38 Relational Mathematics/**

A technical document collecting algebraic results on binary relations, domain constructions, mapping calculus, and structured relational operators. These classical components—domain laws, binary mappings, and Kronecker / strict fork / strict join—are standard results from relational algebra, primarily following Schmidt and Winter’s *Relational Mathematics* (2011) and *Relational Mathematics Continued* (2014). In addition to the classical material, this document introduces a new conceptual layer: the *7‑mode diagrams*, *SID/PED triads*, *Q‑moderation*, *Momentum Flux Engine*, *Redding’s Master Equation*, *Γ coarse‑graining*, *AUT*, *RDG*, and *TRUE*.  

These constructs form a **relational‑first ontology** and constitute a fresh theoretical framework built on top of relational algebra. They do **not** appear in Schmidt/Winter and do **not** claim to establish new relation‑algebraic identities. Instead, they provide a meta‑framework that interprets classical relational operators within a dynamical, structural, and agency‑oriented system.

---

## **RA - RDG Table**

| **Concept / Layer** | **Classical Relational Algebra (RA)** | **RDG / MFE / RME Overlay Framework** |
|---|---|---|
| **Foundational substrate** | Algebra of heterogeneous binary relations; composition, converse, identity, residuals, domain/codomain operators. | Uses RA as the underlying structural grammar; RA operators become primitives inside a dynamical ontology. |
| **Primitive objects** | Sets, relations, partial identities, mappings, bijections. | SID triad (Structure–Interaction–Dynamics), PED triad (Power–Evaluation–Dynamics), Q‑moderation, agency operators. |
| **Composition** | $R\cdot S$ defined via existential linking; left‑to‑right heterogeneous composition. | Composition interpreted as flux propagation or structural linkage inside RDG diagrams; interacts with Q‑moderation. |
| **Domain** | ${dom}(R)=(R\cdot R^{\mathrm{T}})\cap I_A$. Standard partial identity. Idempotent. | Domain becomes the “activation set” for SID/PED roles; used as boundary conditions in MFE/RME evolution. |
| **Codomain** | ${cod}(R)=(R^{\mathrm{T}}\cdot R)\cap I_B$. Standard partial identity. | Codomain becomes the “reception set” for flux or evaluation channels; interacts with Γ coarse‑graining. |
| **Univalence** | $R^{\mathrm{T}}\cdot R\subseteq I_B$. Partial function. | Univalence corresponds to deterministic SID‑interaction channels; used in RME factorization constraints. |
| **Injectivity** | $R\cdot R^{\mathrm{T}}\subseteq I_A$. | Injectivity corresponds to reversible flux channels; used in AUT operator constraints. |
| **Mappings** | Total + univalent. Classical functions. | Treated as “pure channels” in RDG diagrams; form the stable backbone of MFE state transitions. |
| **Bijections** | Mapping whose converse is a mapping; full invertibility. | Bijections correspond to fully reversible SID/PED transformations; used in symmetry operators. |
| **Kronecker / fork / join** | Standard structured relational operators from Schmidt/Winter. | Reinterpreted as multi‑mode structural couplings inside 7‑mode diagrams. |
| **Semantics** | Purely algebraic; no dynamics, agency, or temporal evolution. | Dynamical, agent‑oriented, flux‑based; embeds RA inside RME (Redding’s Master Equation). |
| **Purpose** | Formal manipulation of relations; proofs of algebraic identities. | A relational‑first ontology for modeling systems, agency, evaluation, and dynamical structure. |
| **Status** | Fully classical literature (Schmidt 2011, Schmidt–Winter 2014). | New theoretical framework; no claim new RA identities. |

---

## Core Contributions

**Domain Construction:** Provides purely relational formulas for extracting domains and codomains without set notation:

$$
{dom}(R) = (R \cdot R^{\mathrm{T}}) \cap I_A
$$

— a foundational invariant

### DOM(R) ALGEBRAIC EXTRACTION

```
   A-Domain        B-Codomain
   +------+        +------+
   |  a1  |------->|  b1  |
   |      |<-------|      |  (R · Rᵀ maps a1 -> b1 -> a1)
   |  a2  |---\    +------+
   +------+    \->+------+
                  |  b2  |
                  +------+

   (R · Rᵀ) ∩ I_A = {(a1, a1), (a2, a2)}  [Diagonal Subset of I_A]
```

Eliminates the need for explicit set comprehension.

**Binary Mapping Calculus:** Characterizes functions as relations via left-uniqueness:

A relation $f$ is a mapping $\iff f^{\mathrm{T}} \cdot f \subseteq I_A$

- Derives composition laws, factorization identities, and restriction operators
- Treats functions as pure relational objects

**Three Structured Operators:**

- **Kronecker** $(R \otimes S)$: Parallel relational application on product spaces
- **Strict Fork** $(R \pitchfork S)$: Synchronized multi-output from a shared domain
- **Strict Join** $(R \curlyvee S)$: Synchronized multi-input converging to shared codomain

This document presents a comprehensive technical framework extending classical relational algebra with three new structured operators and a complete calculus for binary relations.

## 7-Mode Substrate Integration

The framework embeds classical relational algebra into a richer 7-layer structure:

- **SID:** Structural geometry
- **PED:** Power/evaluation/dynamics
- **Q:** Moderation/admissibility filters
- **MFE:** Local flux dynamics
- **RME:** Global evolution constraints
- **Γ:** Coarse-graining operator
- **AUT:** Automorphism symmetries

Each operator (domain, mapping, fork, join, Kronecker) is translated across all seven modes, enabling rigorous treatment of formal methods, program semantics, and category-theoretic relational reasoning.

---

## CORE OBJECTS

- $R$: arbitrary binary relation
- $A,B,C$: sets (domains/codomains)
- $f,g$: binary mappings (relations behaving like partial functions)

```
SID:           SID/RA/OPS
PED:           PED/RA/MAP
Q:             Q/RA/DOM
MFE:           MFE/OPS/FLOW
RME:           RME/REL/EVOL
Γ:             GAMMA/RA/COARSE
TRUE:          TRUE/STRUCT/REL-OPS
```

### RDG CATEGORY (Structural Geometry)

**SID:**

`SID/RA/OPS`  
= Structural Interaction Dynamics / Relation Algebra / Operators

**Meaning:**  
This extends the operator-geometry of relations.

### PED-SPECIFIC CATEGORY (Evaluation & Dynamics)

**PED:**

`PED/RA/MAP`  
= Power-Evaluation Dynamics / Relational Algebra / Mappings

**Meaning:**  
The mapping calculus and operator evaluation rules belong here.

### Q-MODE CATEGORY (Moderation / Admissibility)

**Q:**

`Q/RA/DOM`  
= Moderation / Relational Algebra / Domain Construction

**Meaning:**  
Domain/codomain construction is a moderation-filtered operator.

### MFE CATEGORY (Local Dynamics Shelf)

**MFE:**

`MFE/OPS/FLOW`  
= Momentum Flux Engine / Operators / Flow Synchronization

**Meaning:**  
Fork/join operators correspond to flux-splitting and flux-merging.

### RME CATEGORY (Global Evolution)

**RME:**

`RME/REL/EVOL`  
= Redding’s Master Equation / Relational Evolution

**Meaning:**  
Mapping calculus and domain operators become evolution constraints.

### Γ CATEGORY (Coarse-Graining / Continuum Limit)

**Γ:**

`GAMMA/RA/COARSE`  
= Moderation Map / Relational Algebra / Coarse-Graining

**Meaning:**  
Domain/codomain operators are Γ-stable coarse-grained diagonals.

---

## DOMAIN CONSTRUCTION RESULTS

- New purely relational formulae for:
  - existential image: ${dom}(R)\cdot S$
  - inverse image: $S\cdot{dom}(R^{\mathrm{T}})$

- Emphasis: derive domain/codomain behavior from primitive relational operators (composition, converse, identity).
  - defining existential image purely relationally
  - expressing input-side constraints without set notation
  - building mapping calculus (functions as relations)
  - supporting structured operators (fork, join, Kronecker)

**Structural invariant:**

$$
{dom}(R) = R \cdot R^{\mathrm{T}} \cap I
$$

where $I$ is identity on the domain.

Given a binary relation $R \subseteq A \times B$:

Extract the set of all $a \in A$ for which there exists $b \in B$ such that $(a, b) \in R$ — using only relational operators.

### PRIMITIVE OPERATORS

- $R^{\mathrm{T}}$: converse (flip pairs)
- $R \cdot S$: relational composition
- $I_A$: identity relation on $A$

### RELATIONAL FORMULA FOR THE DOMAIN

$$
{dom}(R) = (R \cdot R^{\mathrm{T}}) \cap I_A
$$

**Explanation:**

- $R \cdot R^{\mathrm{T}}$ yields all pairs $(a, a')$ that share some $b$ via $R$.
- Intersecting with $I_A$ keeps only $(a, a)$.
- The set of such $a$ is the domain of $R$.

### STRUCTURAL INVARIANTS

- ${dom}(R)$ is itself a relation: a subset of $I_A$.
- ${dom}(R)$ is idempotent: ${dom}({dom}(R)) = {dom}(R)$.
- ${dom}(R)$ respects composition:

$$
{dom}(R \cdot S) \subseteq {dom}(R)
$$

---

## CALCULUS FOR BINARY MAPPINGS

Let $f \subseteq A \times B$ be a binary relation.

A "binary mapping" is a relation that behaves like a (partial) function.

Binary mappings characterized relationally:

$$
f \text{ is a mapping } \iff f^{\mathrm{T}} \cdot f \subseteq I
$$

**Derived rules:**

- mapping composition closure
- factorization identities
- domain/codomain restriction laws

**Invariant view:**  
mappings = relations with left-uniqueness constraint.

- Provides a variable-free algebraic treatment of functions.
- Supports rigorous proofs of image/inverse-image laws.
- Integrates cleanly with structured operators (Kronecker, fork, join).
- Enables reasoning about mappings inside pure relation algebra.

### CHARACTERIZATION OF MAPPINGS

A relation $f$ is a (partial) mapping $\iff f^{\mathrm{T}} \cdot f \subseteq I_B$

**Meaning**

- **fᵀ · f** relates **pairs of images** $(b, b')$ that come from a common source $a$.  
- Requiring
   
$$
f^{\mathrm{T}} \cdot f \subseteq I_B
$$
  
  enforces **univalence**:  
  if $(a, b) \in f$ and $(a, b') \in f$, then $b = b'$.

Let $f \subseteq A \times B$.  
Composition is left‑to‑right:

$$
(a,c) \in R\cdot S \iff \exists b.\,(a,b)\in R \land (b,c)\in S.
$$

**Univalence (partial function):**

$$
f^{\mathrm{T}} \cdot f \subseteq I_B.
$$

This ensures each $a \in A$ has at most one image.

**Injectivity:**

$$
f \cdot f^{\mathrm{T}} \subseteq I_A.
$$

This ensures each $b \in B$ has at most one preimage.

**Mapping (total function):**

$$
{dom}(f) = I_A
\quad\text{and}\quad
f^{\mathrm{T}} \cdot f \subseteq I_B.
$$

**Image and inverse image** (with $X \subseteq I_A$, $Y \subseteq I_B$):

$$
f[X] = {cod}(X \cdot f),
\qquad
f^{-1}[Y] = {dom}(f \cdot Y).
$$

These are the standard definitions in heterogeneous relation algebra.

**Consequence**

- Each $a \in A$ has **at most one image** in $B$;  
  i.e., $f$ behaves like a **partial function**.

### TOTALITY AND PARTIALITY

**Total mapping:**

$$
{dom}(f) = I_A
$$

**Partial mapping:**

$$
{dom}(f) \subseteq I_A
$$

Domain construction uses:

$$
{dom}(f) = (f \cdot f^{\mathrm{T}}) \cap I_A
$$

### CODOMAIN & IMAGE

**Image of $X$ under $f$:**

$$
f[X] = {dom}(X \cdot f^{\mathrm{T}})
$$

**Inverse image of $Y$:**

$$
f^{-1}[Y] = {dom}(f \cdot Y^{\mathrm{T}})
$$

These formulae are derived purely relationally (no set comprehension).

### COMPOSITION OF MAPPINGS

If $f : A \to B$ and $g : B \to C$ are mappings, then:

$$
g \cdot f \text{ is a mapping}
$$

$$
(g \cdot f)^{\mathrm{T}} \cdot (g \cdot f) \subseteq I_A
$$

**Domain law:**

$$
{dom}(g \cdot f) \subseteq {dom}(f)
$$

**Codomain law:**

$$
{cod}(g \cdot f) \subseteq {cod}(g)
$$

### RESTRICTION & CORESTRICTION

**Domain restriction:**

$$
X \triangleright f = X \cdot f
$$

**Codomain restriction:**

$$
f \triangleleft Y = f \cdot Y
$$

**Mapping invariants:**

$$
(X \triangleright f)^{\mathrm{T}} \cdot (X \triangleright f) \subseteq I_X
$$

$$
(f \triangleleft Y)^{\mathrm{T}} \cdot (f \triangleleft Y) \subseteq I_A
$$

### FACTORIZATION IDENTITIES

Every mapping $f$ can be factored relationally:

$$
f = ({dom}(f)) \cdot f = f \cdot ({cod}(f))
$$

And:

$$
f = (I_A \cap f^{\mathrm{T}} \cdot f) \cdot f
$$

These identities allow decomposition into domain/codomain components.

### RELATIONAL RULES FOR FUNCTION-LIKE BEHAVIOR

**Single-valuedness:**

$$
f \cdot f^{\mathrm{T}} \subseteq I_B \quad \text{(for injective mappings)}
$$

**Surjectivity:**

$$
{cod}(f) = I_B
$$

**Bijectivity:**

$$
f^{\mathrm{T}} \text{ is also a mapping}
$$

$$
f^{\mathrm{T}} \cdot f = I_A \quad \text{and} \quad f \cdot f^{\mathrm{T}} = I_B
$$

---

## STRUCTURED OPERATORS

Three major operators receive full algebraic treatment:

**(a) Kronecker operator $(\otimes)$**

- Relational analogue of tensor-like product.
- Combines two relations into a structured block relation.
- Supports distributive and associative laws.

**(b) Strict Fork operator $(\pitchfork)$**

- Combines relations sharing a domain.
- Produces a relation whose codomain is a product.
- Useful for parallel composition of mappings.

**(c) Strict Join operator $(\curlyvee)$**

- Dual of strict fork.
- Combines relations sharing a codomain.
- Supports structured merging of relational outputs.

**Invariant interpretation:**  
fork/join = domain/codomain synchronized interaction modes.

### STRUCTURED RELATIONAL OPERATORS

Kronecker | Strict Fork | Strict Join

- Enable structured composition of relational systems.
- Provide algebraic tools for multi-output and multi-input synchronization.
- Support diagrammatic reasoning and categorical interpretations.
- Form the backbone of parallel and product-style relational constructions in formal methods.

Let $R \subseteq A \times B$ and $S \subseteq C \times D$ be arbitrary relations.

These operators build composite relations with synchronized domain/codomain behavior.

### KRONECKER OPERATOR $(R \otimes S)$

**Purpose:**  
Combine two relations into a "block" relation whose domain is $A \times C$ and codomain is $B \times D$.

**Definition (conceptual):**

$$
(a, c)\ (R \otimes S)\ (b, d) \iff a\, R\, b \ \text{AND}\ c\, S\, d
$$

**Structural properties:**

- Domain: ${dom}(R \otimes S) = {dom}(R) \times {dom}(S)$
- Codomain: ${cod}(R \otimes S) = {cod}(R) \times {cod}(S)$
- Composition distributes:

$$
(R_1 \otimes S_1) \cdot (R_2 \otimes S_2) = (R_1 \cdot R_2) \otimes (S_1 \cdot S_2)
$$

- Converse:

$$
(R \otimes S)^{\mathrm{T}} = R^{\mathrm{T}} \otimes S^{\mathrm{T}}
$$

**Interpretation:**  
Kronecker = parallel relational application on product spaces.

### STRICT FORK OPERATOR $(R \pitchfork S)$

**Purpose:**  
Combine two relations that share the SAME domain $A$ but may have different codomains $B$ and $C$.

**Definition (conceptual):**

$$
a\ (R \pitchfork S)\ (b, c) \iff a\, R\, b \ \text{AND}\ a\, S\, c
$$

**Structural properties:**

- Domain: ${dom}(R \pitchfork S) = {dom}(R) \cap {dom}(S)$
- Codomain: ${cod}(R \pitchfork S) = {cod}(R) \times {cod}(S)$
- Mapping behavior: If $R$ and $S$ are mappings, $R \pitchfork S$ is a mapping into $B \times C$.

**Interpretation:**  
Strict fork = synchronized output pairing from a shared input.

**Visual intuition:**

```
A ──R──▶ B
│
└─S──▶ C

becomes

A ──(R ⋔ S)──▶ B × C
```

### STRICT JOIN OPERATOR $(R \curlyvee S)$

**Purpose:**  
Dual of strict fork: combine relations that share the SAME codomain $B$ but may have different domains $A$ and $C$.

**Definition (conceptual):**

$$
(a, c)\ (R \curlyvee S)\ b \iff a\, R\, b \ \text{AND}\ c\, S\, b
$$

**Structural properties:**

- Domain: ${dom}(R \curlyvee S) = {dom}(R) \times {dom}(S)$
- Codomain: ${cod}(R \curlyvee S) = {cod}(R) \cap {cod}(S)$
- Converse duality:

$$
(R \curlyvee S)^{\mathrm{T}} = R^{\mathrm{T}} \pitchfork S^{\mathrm{T}}
$$

**Interpretation:**  
Strict join = synchronized input pairing that converges to a shared output.

**Visual intuition:**

```
A ──R──▶ B ◀──S── C

becomes

A × C ──(R ⋎ S)──▶ B
```

### RELATIONAL INVARIANTS

- All operators preserve relationality (remain binary relations).
- All operators respect domain/codomain alignment rules.
- Kronecker is the "product" operator.
- Strict fork is the "parallel outputs from same input" operator.
- Strict join is the "parallel inputs to same output" operator.

- Fork and join are dual under converse:

$$
(R \pitchfork S)^{\mathrm{T}} = R^{\mathrm{T}} \curlyvee S^{\mathrm{T}}
$$

$$
(R \curlyvee S)^{\mathrm{T}} = R^{\mathrm{T}} \pitchfork S^{\mathrm{T}}
$$

---

## VISUALIZATION & DIAGRAMS

### Relation as a directed bipartite graph

A binary relation $R \subseteq A \times B$ can be visualized as arrows from elements of $A$ to elements of $B$.

```
A-domain                 B-codomain
   a1   a2   a3   --->   b1   b2   b3

   a1 ---------> b2
   a2 ---------> b1
   a3 ---------> b3
```

### Converse $R^{\mathrm{T}}$

Flip all arrows.

```
Original R:          Converse Rᵀ:
a1 ---> b2           b2 ---> a1
a2 ---> b1           b1 ---> a2
a3 ---> b3           b3 ---> a3
```

### Composition $R \cdot S$

Follow arrows through an intermediate set.

```
A --R--> B --S--> C

a1 --R--> b2 --S--> c3
a2 --R--> b1 --S--> c1

Composition R·S:
a1 ---> c3
a2 ---> c1
```

### Kronecker $R \otimes S$

Parallel application on product domains.

```
R: A → B        S: C → D

Kronecker R ⊗ S:
(A × C) → (B × D)

(a,c) ---> (b,d)
iff a R b AND c S d

A: a1,a2        C: c1,c2
B: b1,b2        D: d1,d2

(a1,c1) ---> (b2,d1)
(a2,c2) ---> (b1,d2)
```

### Strict Fork $R \pitchfork S$

Two relations share the same domain, outputs paired.

```
A --R--> B
A --S--> C

Strict Fork R ⋔ S:
A ---> (B × C)

a ---> (b,c)
iff a R b AND a S c

Example:
a1 --R--> b2
a1 --S--> c3

Then:
a1 ---> (b2, c3)
```

### Strict Join $R \curlyvee S$

Two relations share the same codomain, inputs paired.

```
A --R--> B <--S-- C

Strict Join R ⋎ S:
(A × C) ---> B

(a,c) ---> b
iff a R b AND c S b

Example:
a2 --R--> b1
c3 --S--> b1

Then:
(a2,c3) ---> b1
```

### Domain and Codomain extraction

Domain picks out all “left nodes” with outgoing edges.

```
R:
a1 ---> b2
a2 ---> b1

dom(R):
a1, a2
```

Codomain picks out all “right nodes” with incoming edges.

```
cod(R):
b1, b2
```

---

## DOMAIN CONSTRUCTION MAPPING

- Extends relational algebra with operator-closed constructs.
- Provides a unified calculus for structured relational operators.
- Strengthens foundations for:
  - formal methods
  - program semantics
  - database theory
  - category-inspired relational reasoning

Given a relation $R \subseteq A \times B$:

$$
{dom}(R) = (R \cdot R^{\mathrm{T}}) \cap I_A
$$

where:

- $\cdot$ = relational composition
- $R^{\mathrm{T}}$ = converse
- $I_A$ = identity on $A$

### PRIMITIVE STRUCTURE

RDG treats every relation as a tri-mode object:

- $R$: (SID-mode) structural relation
- (PED-mode) power/evaluation/dynamics slice
- (Q-mode) moderation / admissibility

For domain construction, only SID is load-bearing:

$$
{SID}(R) : A \to B
$$

Identity in RDG:

$$
I_A = \text{SID-identity on } A
$$

$$
I_A(a,a') = 1 \iff a = a'
$$

```
LEFT-UNIQUENESS (MAPPING)         NON-MAPPING (ONE-TO-MANY)

   A        B                        A        B
  (a1)---->b1                       (a1)---->b1
  (a2)----/                         (a1)---->b2

  fᵀ · f ⊆ I_B                       fᵀ · f ⊈ I_B
  (Valid Mapping)                    (Violation)
```

### TRANSLATION OF OPERATORS

**Converse:**

$$
{SID}(R)^{\mathrm{T}} = \text{SID-converse (flip structural arrows)}
$$

**Composition:**

$$
{SID}(R) \circ {SID}(S) = \text{structural composition}
$$

**Intersection:**

$$
{SID}(X) \wedge {SID}(Y) = \text{structural meet (same as } \cap\text{)}
$$

Thus classical $R \cdot R^{\mathrm{T}}$ becomes:

$$
{SID}(R) \circ {SID}(R)^{\mathrm{T}}
$$

### DOMAIN OPERATOR (STRUCTURAL MODE)

Define the RDG-domain operator:

$$
{Dom}_{RDG}(R) := {SID}(R) \circ {SID}(R)^{\mathrm{T}} \wedge I_A
$$

This is a pure SID-mode object:

$$
{Dom}_{RDG}(R) : A \to A
$$

**Interpretation:**

- ${SID}(R) \circ {SID}(R)^{\mathrm{T}}$ produces all structurally reachable self-pairs $(a,a')$ via some $b$.
- Meeting with $I_A$ collapses to diagonal $(a,a)$.
- The diagonal entries encode the domain elements.

### PED-MODE CONSEQUENCE

PED does not alter domain extraction but annotates it:

$$
{PED}({Dom}_{RDG}(R)) = \text{Evaluation of which } a \in A \text{ have nonzero structural support.}
$$

In other words:

$$
a \in {dom}(R) \iff {PED}({Dom}_{RDG}(R))(a,a) > 0
$$

This gives a graded or moderated domain if Q-mode is active.

### Q-MODE (MODERATION / ADMISSIBILITY)

Q-mode can refine domain by admissibility constraints:

$$
{Dom}_{RDG}^{Q}(R) = \Gamma({SID}(R) \circ {SID}(R)^{\mathrm{T}}) \wedge I_A
$$

where $\Gamma$ is your moderation operator:  
$\Gamma$ filters structural pairs by dynamic admissibility.

Thus:

$$
a \in {dom}_Q(R) \iff a \text{ is structurally present AND } \Gamma \text{ admits the } (a,a) \text{ diagonal.}
$$

### FINAL FORM OF DOMAIN CONSTRUCTION

$$
{Dom}_{RDG}(R) = ({SID}(R) \circ {SID}(R)^{\mathrm{T}}) \wedge I_A
$$

$$
{Dom}_{RDG}^{Q}(R) = \Gamma({SID}(R) \circ {SID}(R)^{\mathrm{T}}) \wedge I_A
$$

Classical domain is the SID-only version.  
Moderated domain is the SID+Q version.  
PED annotates but does not change the structural domain.

### TRANSLATION OF KRONECKER, STRICT FORK, STRICT JOIN

Classical relational algebra defines three structured operators:

- Kronecker $R \otimes S$
- Strict Fork $R \pitchfork S$
- Strict Join $R \curlyvee S$

```
KRONECKER (⊗)            STRICT FORK (⋔)           STRICT JOIN (⋎)
Parallel Product           Shared Domain            Shared Codomain

(A×C) ---> (B×D)           A ---> (B × C)            (A × C) ---> B

  a ---R---> b               /---R---> b               a ---R---\
  c ---S---> d             a                           c ---S---> b
                             \---S---> c
```

RDG decomposes every relation into:

- ${SID}(R)$: structural arrow geometry
- ${PED}(R)$: power/evaluation/dynamics field

Translation requires mapping BOTH modes.

### KRONECKER OPERATOR $(R \otimes S)$

**CLASSICAL:**

$$
(a,c)\ (R \otimes S)\ (b,d) \iff a\, R\, b \ \text{AND}\ c\, S\, d
$$

**SID-MODE TRANSLATION:**

$$
{SID}(R \otimes S) = {SID}(R) \times {SID}(S)
$$

Domain: $A \times C$  
Codomain: $B \times D$

Structural rule:

$$
(a,c) \to (b,d) \iff {SID}(R)(a,b) = 1 \ \text{AND}\ {SID}(S)(c,d) = 1
$$

**PED-MODE TRANSLATION:**

$$
{PED}(R \otimes S) = {PED}(R) \otimes {PED}(S)
$$

Evaluation rule:

$$
{PED}(R \otimes S)((a,c),(b,d)) = {PED}(R)(a,b) \cdot {PED}(S)(c,d)
$$

**Interpretation:**  
Kronecker = parallel evaluation flow on product geometry.

### STRICT FORK OPERATOR $(R \pitchfork S)$

**CLASSICAL:**

$$
a\ (R \pitchfork S)\ (b,c) \iff a\, R\, b \ \text{AND}\ a\, S\, c
$$

**SID-MODE TRANSLATION:**

$$
{SID}(R \pitchfork S) = {SID}(R) \wedge {SID}(S) \quad \text{(synchronized domain)}
$$

Domain: ${dom}(R) \cap {dom}(S)$  
Codomain: $B \times C$

Structural rule:

$$
a \to (b,c) \iff {SID}(R)(a,b) = 1 \ \text{AND}\ {SID}(S)(a,c) = 1
$$

**PED-MODE TRANSLATION:**

$$
{PED}(R \pitchfork S)(a,(b,c)) = {PED}(R)(a,b) \cdot {PED}(S)(a,c)
$$

**Interpretation:**  
Fork = paired outputs from a shared structural input, with PED multiplying the evaluation strengths.

### STRICT JOIN OPERATOR $(R \curlyvee S)$

**CLASSICAL:**

$$
(a,c)\ (R \curlyvee S)\ b \iff a\, R\, b \ \text{AND}\ c\, S\, b
$$

**SID-MODE TRANSLATION:**

$$
{SID}(R \curlyvee S) = {SID}(R) \times {SID}(S) \quad \text{(synchronized codomain)}
$$

Domain: ${dom}(R) \times {dom}(S)$  
Codomain: ${cod}(R) \cap {cod}(S)$

Structural rule:

$$
(a,c) \to b \iff {SID}(R)(a,b) = 1 \ \text{AND}\ {SID}(S)(c,b) = 1
$$

**PED-MODE TRANSLATION:**

$$
{PED}(R \curlyvee S)((a,c),b) = {PED}(R)(a,b) \cdot {PED}(S)(c,b)
$$

**Interpretation:**  
Join = paired inputs converging to a shared structural output, with PED multiplying incoming evaluation flows.

### SID–PED DUALITY RELATIONS

**Converse duality:**

$$
(R \pitchfork S)^{\mathrm{T}} = R^{\mathrm{T}} \curlyvee S^{\mathrm{T}}
$$

$$
(R \curlyvee S)^{\mathrm{T}} = R^{\mathrm{T}} \pitchfork S^{\mathrm{T}}
$$

**SID-level:**

$$
{SID}((R \pitchfork S)^{\mathrm{T}}) = {SID}(R^{\mathrm{T}}) \curlyvee {SID}(S^{\mathrm{T}})
$$

$$
{SID}((R \curlyvee S)^{\mathrm{T}}) = {SID}(R^{\mathrm{T}}) \pitchfork {SID}(S^{\mathrm{T}})
$$

**PED-level:**

$$
{PED}((R \pitchfork S)^{\mathrm{T}}) = {PED}(R^{\mathrm{T}}) \cdot {PED}(S^{\mathrm{T}})
$$

$$
{PED}((R \curlyvee S)^{\mathrm{T}}) = {PED}(R^{\mathrm{T}}) \cdot {PED}(S^{\mathrm{T}})
$$

### INVARIANT SUMMARY

**KRONECKER:**

- SID: product geometry
- PED: parallel evaluation multiplication

**STRICT FORK:**

- SID: shared-domain synchronization
- PED: paired output evaluation

**STRICT JOIN:**

- SID: shared-codomain synchronization
- PED: paired input evaluation

All three operators preserve:

- SID structural coherence
- PED multiplicative evaluation
- Converse duality
- RDG tri-mode compatibility

---

## 7-MODE SUBSTRATE

The paper extends classical relation algebra with new operators (Kronecker, strict fork, strict join), new domain/codomain constructions, and a calculus for binary mappings.

In the 7-mode substrate, these become:

- **SID:** structural geometry of relations
- **PED:** power/evaluation/dynamics fields
- **Q:** moderation / admissibility
- **MFE:** bipolar momentum flux engine (local dynamics)
- **RME:** global evolution operator
- **Γ:** coarse-graining / moderation map
- **AUT:** automorphism group of the substrate

### DOMAIN / CODOMAIN CONSTRUCTION

**Classical:**

$$
{dom}(R) = (R \cdot R^{\mathrm{T}}) \cap I_A
$$

**7-mode translation:**

- **SID-domain:**

$$
{Dom}_{SID}(R) = ({SID}(R) \circ {SID}(R)^{\mathrm{T}}) \wedge I_A
$$

- **PED-domain:**

$$
{Dom}_{PED}(R)(a,a) = {PED}(R)(a,*) \text{ aggregated}
$$

- **Q-domain:**

$$
{Dom}_{Q}(R) = \Gamma({Dom}_{SID}(R))
$$

- **MFE-domain:** Local flux determines which domain nodes remain active.
- **RME-domain:** Long-term survival score filters domain membership.
- **AUT-domain:** Domain is invariant under automorphisms preserving $A$.

**Interpretation:**  
Domain is the diagonal SID-object, PED-weighted, Q-filtered, dynamically moderated by MFE, globally stabilized by RME.

### BINARY MAPPING CALCULUS

**Classical mapping condition:**

$$
f^{\mathrm{T}} \cdot f \subseteq I_A
$$

**7-mode translation:**

- **SID-mapping:** ${SID}(f^{\mathrm{T}}) \circ {SID}(f) \subseteq I_A$
- **PED-mapping:** ${PED}(f)$ enforces single-valuedness via evaluation collapse.
- **Q-mapping:** $\Gamma$ enforces admissibility of mapping constraints.
- **MFE-mapping:** Flux polarity determines whether mapping is stable.
- **RME-mapping:** Mapping is a fixed point of long-term evolution.
- **AUT-mapping:** Mapping constraints preserved under domain automorphisms.

**Interpretation:**  
A mapping is a relation whose SID-geometry is left-unique, whose PED-field is single-valued, and whose Q/MFE/RME layers stabilize that uniqueness across time.

### KRONECKER OPERATOR $(R \otimes S)$

**Classical:**

$$
(a,c) \to (b,d) \iff a\, R\, b \ \text{AND}\ c\, S\, d
$$

**7-mode translation:**

- **SID:** ${SID}(R \otimes S) = {SID}(R) \times {SID}(S)$
- **PED:** ${PED}(R \otimes S) = {PED}(R) \otimes {PED}(S)$
- **Q:** $\Gamma(R \otimes S) = \Gamma(R) \times \Gamma(S)$
- **MFE:** Flux fields combine as tensor product of local dynamics.
- **RME:** Global evolution acts componentwise on product geometry.
- **AUT:** Automorphisms act as product automorphisms.

**Interpretation:**  
Kronecker = parallel structural/dynamic evolution on product spaces across all 7 modes.

### STRICT FORK OPERATOR $(R \pitchfork S)$

**Classical:**

$$
a \to (b,c) \iff a\, R\, b \ \text{AND}\ a\, S\, c
$$

**7-mode translation:**

- **SID:** ${SID}(R \pitchfork S) = {SID}(R) \wedge {SID}(S)$ on shared domain
- **PED:** ${PED}(R \pitchfork S)(a,(b,c)) = {PED}(R)(a,b) \cdot {PED}(S)(a,c)$
- **Q:** $\Gamma$ enforces admissibility of paired outputs.
- **MFE:** Flux splits into two outgoing channels from same node.
- **RME:** Forked outputs contribute to long-term survival scoring.
- **AUT:** Domain automorphisms preserve fork structure.

**Interpretation:**  
Fork = synchronized multi-output relation with multiplicative PED evaluation and dual-channel MFE flux.

### STRICT JOIN OPERATOR $(R \curlyvee S)$

**Classical:**

$$
(a,c) \to b \iff a\, R\, b \ \text{AND}\ c\, S\, b
$$

**7-mode translation:**

- **SID:** ${SID}(R \curlyvee S) = {SID}(R) \times {SID}(S)$ with codomain meet
- **PED:** ${PED}(R \curlyvee S)((a,c),b) = {PED}(R)(a,b) \cdot {PED}(S)(c,b)$
- **Q:** $\Gamma$ filters admissible convergent inputs.
- **MFE:** Flux convergence from two sources into shared output.
- **RME:** Join contributes to global stability of shared codomain.
- **AUT:** Codomain automorphisms preserve join structure.

**Interpretation:**  
Join = synchronized multi-input relation with convergent PED evaluation and dual-source MFE flux.

### RELATIONAL DIAGRAMS (7-mode interpretation)

Classical diagrams become:

- **SID:** geometric arrows
- **PED:** weighted arrows
- **Q:** admissibility shading
- **MFE:** flux polarity markers
- **RME:** long-term stability contours
- **Γ:** coarse-grained overlays
- **AUT:** symmetry orbits

**Interpretation:**  
Every diagram in the paper becomes a 7-layer composite object.

### GLOBAL SIGNIFICANCE IN THE 7-MODE SUBSTRATE

- **SID:** new structural operators
- **PED:** multiplicative evaluation rules
- **Q:** admissibility constraints for domain/mapping operators
- **MFE:** dynamic interpretation of fork/join flows
- **RME:** long-term evolution of structured relations
- **Γ:** moderation of domain/codomain constructions
- **AUT:** symmetry constraints on all operators

### SUMMARY

- Domain is always a diagonal SID-object.
- PED provides evaluation of domain membership.
- Q-mode filters domain by admissibility.
- RDG preserves the classical formula exactly but embeds it into the tri-mode substrate.

---

## REFERENCES AND FURTHER READING

G. Schmidt, & Winter, H. (2014).  
"Relational Mathematics Continued." arXiv:1403.6957.  
https://arxiv.org/abs/1403.6957

G. Schmidt and T. Ströhlein,  
"Relations and Graphs: Discrete Mathematics for Computer Scientists."  
Springer, 1993.

G. Schmidt,  
"Relational Mathematics."  
Cambridge University Press, 2011.

G. Birkhoff,  
"Lattice Theory."  
American Mathematical Society, 3rd edition, 1967.

R. Maddux,  
"Relation Algebras."  
Elsevier, 2006.

A. Tarski,  
"On the Calculus of Relations."  
Journal of Symbolic Logic, vol. 6, 1941, pp. 73–89.

J. van Benthem,  
"The Logic of Time."  
Springer, 1983.

B. Jónsson and A. Tarski,  
"Boolean Algebras with Operators."  
American Journal of Mathematics, vol. 73, 1951, pp. 891–939.

G. Schmidt and H. Winter,  
"Relational Methods in Computer Science."  
Technical reports and lecture notes, Universität der Bundeswehr München,  
2000–2014.

G. Schmidt,  
"Scrapbook of Relational Calculus."  
Unpublished notes, 2008–2013.

T. Winter,  
"Diagrammatic Reasoning in Relational Algebra."  
Internal seminar notes, 2012–2014.
