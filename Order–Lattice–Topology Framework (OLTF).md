# Order–Lattice–Topology Framework (OLTF)

**Document type:** Technical specification  
**Status:** Normative baseline for shared terminology, constructions, and scope  
**Audience:** Mathematics, formal methods, domain theory, and software-library teams  

This document replaces the informal notes, diagrams, and slogans from the prior draft. It fixes notation, separates strict and non-strict orders, states reconstruction theorems only where they hold, and marks everything else as out of scope.

---

## 0. Control, purpose, and scope

### 0.1 Purpose
Define a single, implementable vocabulary for:

1. binary relations and their order-theoretic refinements;
2. lattice structure derived from posets;
3. topologies induced by orders, and orders induced by topologies;
4. the exact conditions under which an order–topology–order loop recovers the original relation.

### 0.2 Scope
**In scope**

- strict and non-strict orders on a single set;
- finite and infinite posets, semilattices, lattices, complete lattices, frames;
- Alexandrov, Scott, lower, upper, and order topologies;
- specialization preorders;
- reconstruction and non-reconstruction theorems.

**Out of scope (explicit exclusions)**

- metrics, uniformities, and bornologies;
- homotopy, homology, and sheaf cohomology;
- measure and integration;
- general $T_3$–$T_6$ separation theory except as needed for specialization;
- computational complexity of order algorithms.

### 0.3 Normative language
| Verb | Meaning |
|---|---|
| **shall** | mandatory requirement |
| **shall not** | prohibited |
| **should** | recommended default |
| **may** | optional |
| **equivalent** | inter-derivable under the stated axioms |

### 0.4 Conformance profiles
An implementation or text **conforms** only if it names the profile it uses:

| ID | Profile | Reconstructs original order via specialization? |
|---|---|---|
| P-SO | Strict-order classification | N/A (no topology) |
| P-LAT | Lattice algebra | N/A (no topology) |
| P-ALX | Alexandrov | Yes |
| P-SCT | Scott / dcpo | Yes |
| P-ORD | Order topology on a linear order | **No**, except degenerate cases |

A document **shall not** claim a single idempotent cycle across all profiles.

---

## 1. Notation and conversion rules

### 1.1 Sets and relations
Let $X$ be a set. A **binary relation** on $X$ is a subset $R \subseteq X \times X$. Write $x\,R\,y$ for $(x,y)\in R$.

### 1.2 Strict vs non-strict (mandatory conversion)
These two presentations **shall** be treated as interchangeable only through the rules below.

Given a **non-strict** relation $\le$:

$$
x < y \;\stackrel{\mathrm{def}}{\iff}\; x \le y \;\land\; x \neq y.
$$

Given a **strict** relation $<$:

$$
x \le y \;\stackrel{\mathrm{def}}{\iff}\; x < y \;\lor\; x = y.
$$

### 1.3 Dual
The **dual** of $\le$ is $\ge$, defined by $x \ge y \iff y \le x$. Every definition below has a dual; duals **need not** be restated unless they differ.

### 1.4 Forbidden conflation
The label **partial order** **shall** mean the non-strict package in §2.3.  
The label **strict partial order** **shall** mean the strict package in §2.4.  
The original diagram’s use of “Partial Order” for irreflexive + transitive **shall** be read as **strict partial order**.

---

## 2. Relations and orders

### 2.1 Primitive properties (non-strict $\le$)
On $X$, $\le$ may satisfy:

| Code | Name | Formula |
|---|---|---|
| R | reflexive | $\forall x.\; x \le x$ |
| T | transitive | $\forall x,y,z.\; (x\le y \land y\le z) \Rightarrow x\le z$ |
| AS | antisymmetric | $\forall x,y.\; (x\le y \land y\le x) \Rightarrow x=y$ |
| TO | total (linear) | $\forall x,y.\; x\le y \lor y\le x$ |

### 2.2 Primitive properties (strict $<$)
| Code | Name | Formula |
|---|---|---|
| IR | irreflexive | $\forall x.\; \neg(x < x)$ |
| T$_{<}$ | transitive | $\forall x,y,z.\; (x<y \land y<z) \Rightarrow x<z$ |
| AY | asymmetric | $\forall x,y.\; x<y \Rightarrow \neg(y<x)$ |
| TR | trichotomous | $\forall x,y.\; x<y \lor x=y \lor y<x$ |

**Lemma 2.2.1.** IR + T$_{<}$ **implies** AY.  
**Lemma 2.2.2.** Under the conversion of §1.2:  
R+T+AS $\iff$ IR+T$_{<}$, and TO $\iff$ TR.

### 2.3 Partial order (poset) — normative
A **partial order** is a relation $\le$ satisfying R, T, and AS.  
The pair $(X,\le)$ is a **poset**.

### 2.4 Strict partial order — normative
A **strict partial order** is a relation $<$ satisfying IR and T$_{<}$.

### 2.5 Preorder
A **preorder** is a relation $\le$ satisfying R and T (AS not required).  
The associated quotient poset is $X{/}{\sim}$ where $x\sim y \iff x\le y \land y\le x$.

### 2.6 Cover relation (replaces the informal “unique successors” slogan)
Define the **cover** (immediate successor) relation $\prec$ by:

$$
x \prec y \;\stackrel{\mathrm{def}}{\iff}\;
x < y \;\land\; \neg\exists z.\; (x < z \land z < y).
$$

**Immediate-successor property (local):** $y$ is *an* immediate successor of $x$ iff $x \prec y$.

**Global unique-successor axiom (GUS)** — the formula from the original diagram:

$$
\forall x\;\exists y.\; \bigl( x < y \;\land\; \forall z.\; (x < z \Rightarrow (z=y \lor y < z)) \bigr).
$$

GUS **shall** be recorded as an optional extra axiom. It implies:

- every element has at least one cover;
- that cover is unique;
- $X$ has **no maximal element**.

GUS is **independent** of well-foundedness and of totality.  
GUS is **incompatible** with density on any set with at least two comparable elements.

### 2.7 Density
$X$ is **dense** (with respect to $<$) iff

$$
\forall x,y.\; \bigl( x < y \Rightarrow \exists z.\; (x < z \land z < y) \bigr).
$$

Equivalent: $\prec$ is empty.

### 2.8 Well-foundedness
$X$ is **well-founded** with respect to $<$ iff there is no sequence

$$
x_0 > x_1 > x_2 > \cdots
$$

with $x_{n+1} < x_n$ for all $n\in\mathbb{N}$.

**Equivalent formulation (requires Dependent Choice for the equivalence):** every nonempty subset of $X$ has a $<$-minimal element.

A specification **shall** state which formulation it uses. Implementations in ZF without choice **shall** use the minimal-element form or the inductively well-founded form:

$$
\forall A\subseteq X.\; \bigl( \forall x.\; ((\forall y{<}x.\; y\in A) \Rightarrow x\in A) \bigr) \Rightarrow A=X.
$$

### 2.9 Well-order
A relation is a **well-order** iff it is a well-founded **total** order (equivalently: every nonempty subset has a least element).

Well-order **does not** require GUS. Finite well-orders violate GUS. $\mathbb{N}$ satisfies GUS; any successor ordinal $\alpha+1$ violates GUS at the top element.

---

## 3. Classification of strict orders (Profile P-SO)

### 3.1 Inheritance (normative tree)
The following is the corrected hierarchy. Each child **adds** axioms; children of the same parent are **independent** unless noted.

```
Strict partial order          IR + T_<
        /                         \
       /                           \
Total (trichotomous)           Well-founded
TR + IR + T_<                  IR + T_< + WF
       /         \                     \
      /           \                     \
  Dense         Cover-discrete        Well-order
  (no covers)   (optional GUS)        TR + WF
```

### 3.2 Independence requirements
A description **shall not** draw a parent/child edge from GUS to well-order.  
A description **shall not** present Dense and GUS as jointly satisfiable on a pair $x<y$.

### 3.3 Reference examples
| Structure | Total | Dense | GUS | WF | Well-order |
|---|---|---|---|---|---|
| $(\mathbb{N},<)$ | yes | no | yes | yes | yes |
| $(\{0,1,\dots,n\},<)$ | yes | no | no | yes | yes |
| $(\mathbb{Z},<)$ | yes | no | yes | no | no |
| $(\mathbb{Q},<)$ | yes | yes | no | no | no |
| $(\mathbb{R},<)$ | yes | yes | no | no | no |
| finite Boolean lattice, strict | no | no | no | yes | no |
| $(\mathcal{P}(\mathbb{N}),\subsetneq)$ | no | no | no | no | no |

---

## 4. Lattices (Profile P-LAT)

### 4.1 Bounds in a poset
Let $(P,\le)$ be a poset and $S\subseteq P$.

- A **lower bound** of $S$ is $a$ with $a\le s$ for all $s\in S$.
- The **infimum** $\bigwedge S$ (meet of $S$) is the greatest lower bound, if it exists.
- An **upper bound** and **supremum** $\bigvee S$ (join) are dual.

Binary case: $a\wedge b := \bigwedge\{a,b\}$, $a\vee b := \bigvee\{a,b\}$.

### 4.2 Semilattices and lattices — order form
| Structure | Requirement |
|---|---|
| Meet-semilattice | every pair has $a\wedge b$ |
| Join-semilattice | every pair has $a\vee b$ |
| Lattice | every pair has both |
| Bounded lattice | lattice with bottom $0=\bigwedge P$ and top $1=\bigvee P$ |
| Complete lattice | every subset has $\bigwedge S$ and $\bigvee S$ |

### 4.3 Lattices — algebraic form
A **lattice algebra** is a set with operations $\wedge,\vee$ that **shall** satisfy, for all $a,b,c$:

1. commutative: $a\wedge b=b\wedge a$, $a\vee b=b\vee a$;
2. associative: $(a\wedge b)\wedge c=a\wedge(b\wedge c)$, and dual for $\vee$;
3. idempotent: $a\wedge a=a$, $a\vee a=a$;
4. absorption: $a\vee(a\wedge b)=a$ and $a\wedge(a\vee b)=a$.

**Theorem 4.3.1.** Order-lattices and lattice algebras are equivalent via

$$
a\le b \iff a\wedge b=a \iff a\vee b=b.
$$

An implementation **may** store either presentation; it **shall** expose both.

### 4.4 Extra identities
| Name | Axiom |
|---|---|
| Distributive | $a\wedge(b\vee c)=(a\wedge b)\vee(a\wedge c)$ (the dual then follows in lattices) |
| Modular | $a\le c \Rightarrow a\vee(b\wedge c)=(a\vee b)\wedge c$ |
| Complemented (bounded) | $\forall a\;\exists a'.\; a\wedge a'=0 \land a\vee a'=1$ |
| Boolean algebra | bounded, distributive, complemented |
| Heyting algebra | bounded lattice with a binary $\to$ such that $a\wedge b\le c \iff a\le(b\to c)$ |
| Frame / locale | complete lattice that distributes finite meets over arbitrary joins: $a\wedge\bigvee S=\bigvee\{a\wedge s:s\in S\}$ |

### 4.5 Directed completeness (needed by P-SCT)
A subset $D\subseteq P$ is **directed** iff it is nonempty and every pair in $D$ has an upper bound in $D$.  
A **dcpo** is a poset in which every directed set has a supremum.  
A **complete lattice** is a dcpo; the converse is false.

### 4.6 Reference examples
| Object | Class |
|---|---|
| $(\mathcal{P}(X),\subseteq,\cap,\cup)$ | complete Boolean algebra, frame |
| subspaces of a vector space, ordered by inclusion | complete modular lattice; not always distributive |
| $\Omega(X)$, open sets of a space $X$ | frame |
| finite chains | complete distributive lattices |

---

## 5. Topologies induced by orders

### 5.1 Specialization preorder (any topology)
Let $(X,\tau)$ be a topological space. The **specialization preorder** $\le_\tau$ is

$$
x \le_\tau y \;\stackrel{\mathrm{def}}{\iff}\; x\in\overline{\{y\}}
$$

equivalently: every open neighbourhood of $x$ contains $y$.

| Separation | Effect on $\le_\tau$ |
|---|---|
| none | preorder |
| $T_0$ | partial order (antisymmetric) |
| $T_1$ | equality (discrete order) |
| Hausdorff | equality |

**Requirement.** Any claim that “topology regenerates order” **shall** name $\le_\tau$ and the separation class. On $T_1$ spaces, $\le_\tau$ **shall not** be described as recovering a nontrivial order.

### 5.2 Upper and lower sets
In a preorder: $U$ is an **upper set** iff $x\in U$ and $x\le y$ imply $y\in U$. Dual: **lower set**.

### 5.3 Alexandrov topology (Profile P-ALX)
On a preorder $(X,\le)$, the **Alexandrov topology** $\mathcal{A}(\le)$ has as open sets **all upper sets**.

Properties that **shall** be treated as definitional:

- arbitrary unions of opens are open;
- **arbitrary intersections** of opens are open;
- $\le_{\mathcal{A}(\le)}\;=\;\le$ (reconstruction);
- $\mathcal{A}(\le)$ is the finest topology on $X$ whose specialization preorder is $\le$.

**Scope limit.** A space is Alexandrov iff its open sets are closed under arbitrary intersections. Ordinary Euclidean spaces **shall not** be treated as Alexandrov.

### 5.4 Lower and upper interval topologies
On a poset:

- **upper topology**: subbasis $\{P\setminus{\downarrow}x : x\in P\}$;
- **lower topology**: subbasis $\{P\setminus{\uparrow}x : x\in P\}$;
- **interval topology**: join of lower and upper.

These are coarser than $\mathcal{A}(\le)$ in general. Reconstruction via specialization **may** fail.

### 5.5 Scott topology (Profile P-SCT)
On a dcpo $P$, a set $U\subseteq P$ is **Scott open** iff

1. $U$ is an upper set;
2. if $D\subseteq P$ is directed and $\bigvee D\in U$, then $D\cap U\neq\emptyset$.

Write $\sigma(P)$ for this topology.

**Theorem 5.5.1.** For a dcpo $P$, $\le_{\sigma(P)}\;=\;\le_P$.

Scott topology is the correct default for domain theory. It **shall not** be defined on an arbitrary poset unless directed suprema used in clause (2) are specified.

### 5.6 Order topology (Profile P-ORD)
Let $(X,<)$ be a **total** strict order. The **order topology** $\tau(<)$ has subbasis

$$
\{ \{x : x < a\} : a\in X \} \;\cup\; \{ \{x : a < x\} : a\in X \}.
$$

Facts that **shall** be stated when this profile is used:

- on $\mathbb{R}$ it coincides with the Euclidean topology;
- connectedness holds iff the order is Dedekind-complete;
- compactness holds iff the order is complete and bounded (closed interval theorem);
- if the space is $T_1$ (equivalently: the order has no adjacent pairs that collapse separation — in particular $\mathbb{Q},\mathbb{R}$), then $\le_{\tau(<)}$ is **equality**, not $<$.

**Normative ban.** Profile P-ORD **shall not** be listed as an instance of an idempotent specialization cycle.

The original order is still encoded in $\tau(<)$ by cuts and by the total order of the connected components of complements of points; that encoding is **not** specialization.

---

## 6. Reconstruction theorems (the cycle, restricted)

### 6.1 Allowed cycles
The only loops that **shall** be called reconstructive are the following.

**ALX cycle**

$$
\text{preorder }\le
\;\longrightarrow\;
\mathcal{A}(\le)
\;\longrightarrow\;
\le_{\mathcal{A}}
\;=\;
\le.
$$

**SCT cycle**

$$
\text{dcpo }(P,\le)
\;\longrightarrow\;
\sigma(P)
\;\longrightarrow\;
\le_{\sigma}
\;=\;
\le.
$$

### 6.2 Partial lattice cycle
Opens of any space form a frame $\Omega(X)$.  
A frame $L$ is **spatial** iff $L\cong\Omega(X)$ for some space $X$.  
The spectrum functor and $\Omega$ give an adjunction, not an equivalence, between spaces and locales.  
Non-spatial frames exist. Therefore

$$
\text{lattice of opens}\;\longrightarrow\;\text{space}
$$

**shall not** be treated as invertible.

### 6.3 Prohibited slogan
The sentence

> orders generate lattices of opens; lattices generate topologies; topologies regenerate orders

**shall** appear only with the qualifier:  
*under Profile P-ALX or P-SCT, and only for spatial frames when a point-set space is required.*

---

## 7. Closed inconsistencies and remaining obligations

| ID | Prior draft issue | Resolution in this spec |
|---|---|---|
| I-1 | “Partial order” written with IR + transitivity | Renamed **strict partial order** (§1.4, §2.4) |
| I-2 | Well-order drawn under unique successors | Split: well-order = total + WF; GUS optional and independent (§2.6–2.9, §3) |
| I-3 | GUS formula forces no maxima | Documented; finite well-orders excluded from GUS |
| I-4 | Dense and GUS drawn as sibling refinements without incompatibility | Incompatibility stated (§2.6, §3.2) |
| I-5 | Order topology claimed to regenerate $<$ by specialization | Denied for P-ORD (§5.6, §6.3) |
| I-6 | One cycle claimed for all constructions | Split into profiles (§0.4, §6) |
| I-7 | WF via “no infinite chains” vs “minimal elements” | DC/choice note (§2.8) |
| I-8 | Scott topology used on raw posets | Restricted to dcpos (§4.5, §5.5) |
| I-9 | Frames identified with spaces | Spatiality required (§6.2) |
| I-10 | Strict tree mixed with non-strict lattice axioms | Conversion rules mandatory (§1.2) |

### 7.1 Known gaps left open (not silently filled)
1. Lawson topology and the patch topology on domains — optional extension, not required for conformance.
2. Choice-free constructive reformulation of well-foundedness beyond the inductive clause in §2.8.
3. Algorithmic representation of infinite complete lattices.
4. Ordered topological spaces (pospaces) with a topology not generated by the order.

An extension **shall** add a new profile ID rather than mutate P-ALX, P-SCT, or P-ORD.

---

## 8. Wording and terminology register (mandatory)

Use the left column in all team documents.

| Standard term | Do not use as synonym |
|---|---|
| strict partial order | partial order, poset |
| partial order / poset | strict order |
| total order / linear order | complete order |
| Dedekind-complete | complete lattice |
| complete lattice | complete order (ambiguous) |
| well-founded | well-order |
| well-order | well-founded poset |
| cover / immediate successor | unique successor (unless GUS is named) |
| GUS | unique successors (unqualified) |
| specialization preorder | the order |
| Alexandrov topology | order topology |
| Scott topology | Alexandrov topology |
| frame | complete Heyting algebra used as a space |
| locale | spatial frame |
| reconstructs | induces |

---

## 9. Minimal implementation checklist

A library or formalization **conforms** if it provides:

1. types `StrictOrder`, `Poset`, `Preorder` with explicit conversion (§1.2);
2. predicates `total`, `dense`, `gus`, `wellFounded`, `wellOrder` matching §2–§3;
3. operations `meet`, `join` with algebraic axioms tested or proven (§4.3);
4. constructors `alexandrov`, `scott`, `orderTopology` tagged with profile IDs;
5. a function `specialization` that is **not** advertised as an inverse of `orderTopology`;
6. tests from the table in §3.3 and the reconstruction equalities in §6.1.

---

## 10. Short reference card

```
Relation packages
  preorder          R + T
  poset             R + T + AS
  strict poset      IR + T_<
  linear / total    + TO / TR
  well-founded      + WF
  well-order        total + WF

Lattice upgrades
  semi → lattice → bounded → complete
  + distributive / modular / Boolean / Heyting / frame

Topology profiles
  P-ALX  Alexandrov     specialization inverse = yes
  P-SCT  Scott (dcpo)   specialization inverse = yes
  P-ORD  order topology specialization inverse = no (typically T1)
```
