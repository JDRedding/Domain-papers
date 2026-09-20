# Von Neumann Universe (Cumulative Hierarchy)

**Document type:** Formal specification  
**Status:** Ready for implementation and cross-team use  
**Subject:** Pure well-founded sets constructed by transfinite recursion on the ordinals  
**Intended use:** Shared reference for definitions, construction rules, invariants, and ZFC alignment

---

## Purpose and scope

### Purpose
This specification defines the von Neumann universe $V$ and the cumulative hierarchy $\langle V_\alpha \mid \alpha \in \mathrm{Ord}\rangle$ so that:
- terminology is uniform;
- construction rules are unambiguous and implementable by transfinite recursion;
- rank, stage membership, and class/set distinctions are uniquely determined;
- the relationship to ZFC (especially Foundation) is explicit.

### Scope
In scope:
- pure sets (no urelements);
- von Neumann ordinals;
- the standard power-set hierarchy $V_{\alpha+1}=\mathcal{P}(V_\alpha)$;
- rank and stage characterizations;
- the statement that $V$ is a proper class.

Out of scope:
- urelement hierarchies;
- the constructible hierarchy $L$;
- non-well-founded set theories;
- large-cardinal hypotheses beyond what ZFC already requires to form the stages.

### Assumptions
The background theory is ZFC, or ZF plus whatever fragment is needed to justify transfinite recursion (Power Set, Union, Replacement, Separation). Foundation is isolated as the axiom that identifies $V$ with the class of all sets.

---

## Terms and definitions

**.1 Set.**  
An object of the background set theory. In the presence of Foundation, every set is an element of some stage $V_\alpha$.

**.2 Class.**  
A collection of sets defined by a formula of the language of set theory (possibly with parameters). A class may or may not be equal to a set.

**.3 Proper class.**  
A class that is not a set.

**.4 Empty set.**  
The unique set with no elements, written $\emptyset$.

**.5 Subset.**  
$Y\subseteq X$ if and only if $\forall z\,(z\in Y\to z\in X)$.

**.6 Power set.**  

$$
\mathcal{P}(X)=\{Y\mid Y\subseteq X\}.
$$

By the Power Set axiom, $\mathcal{P}(X)$ is a set whenever $X$ is a set.

**.7 Transitive set.**  
A set $X$ is transitive if $\forall y\in X\,(y\subseteq X)$, equivalently $\forall y\forall z\,(z\in y\in X\to z\in X)$.

**.8 Well-ordering.**  
A linear order in which every nonempty subset has a least element.

**.9 Von Neumann ordinal.**  
A set $\alpha$ that is transitive and well-ordered by $\in$. Equivalently: $\alpha$ is transitive and every element of $\alpha$ is transitive.

**.10 Class of ordinals.**  
$\mathrm{Ord}$ (also written $\mathrm{On}$) is the proper class of all von Neumann ordinals.

**.11 Successor ordinal.**  
$\alpha+1=\alpha\cup\{\alpha\}$. An ordinal is a successor if it is of this form for some ordinal $\alpha$.

**.12 Limit ordinal.**  
A nonzero ordinal that is not a successor. Equivalently: $\lambda\neq 0$ and $\bigcup\lambda=\lambda$.

**.13 Least infinite ordinal.**  
$\omega$ is the least limit ordinal; its elements are the finite ordinals $0,1,2,\ldots$.

**.14 Stage (rank-initial segment).**  
For each $\alpha\in\mathrm{Ord}$, the set $V_\alpha$ defined.

**.15 Von Neumann universe.**  
The class

$$
V=\bigcup_{\alpha\in\mathrm{Ord}}V_\alpha.
$$

**.16 Rank.**  
Not to be confused with the stage index $\alpha$ itself.

**.17 Hereditarily finite set.**  
A set whose transitive closure is finite. These are exactly the elements of $V_\omega$.

---

## Notation

| Symbol | Meaning |
|---|---|
| $\emptyset$ | empty set |
| $\mathcal{P}(X)$ | power set of $X$ |
| $\bigcup_{\beta<\alpha}X_\beta$ | union of the family $\{X_\beta\mid\beta<\alpha\}$ |
| $\mathrm{Ord}$ | class of von Neumann ordinals |
| $V_\alpha$ | stage indexed by $\alpha$ |
| $V$ | von Neumann universe (proper class) |
| ${rank}(x)$ | rank of $x$ |
| $\subseteq$, $\in$ | subset, membership |

The empty union is $\emptyset$. Thus for $\alpha=0$ is a special case of the limit.

---

## Construction requirements (normative)

The hierarchy shall be defined by transfinite recursion on $\mathrm{Ord}$ as follows.

### Base / empty stage

$$
V_0=\emptyset.
$$

### Successor stage
For every ordinal $\alpha$,

$$
V_{\alpha+1}=\mathcal{P}(V_\alpha).
$$

### Limit stage
For every limit ordinal $\lambda$,

$$
V_\lambda=\bigcup_{\beta<\lambda}V_\beta.
$$

### Equivalent unified (normative alternative)
The three shall be treated as equivalent to the single equation

$$
V_\alpha=\bigcup_{\beta<\alpha}\mathcal{P}(V_\beta)
$$

for every ordinal $\alpha$.

### Universe

$$
V=\bigcup_{\alpha\in\mathrm{Ord}}V_\alpha.
$$

### Existence of stages
For each ordinal $\alpha$, $V_\alpha$ shall be a set. (Justified in ZFC by Power Set, Union, and Replacement.)

### $V$ is a proper class
$V$ shall not be a set. If $V$ were a set, then $\mathcal{P}(V)$ would be a set and $V\in V_{\alpha+1}$ for some $\alpha$, contradicting Foundation or yielding Russell-type inconsistency for the class of all sets.

---

## Mandatory properties

The following shall hold for the hierarchy defined.

**P1. Cumulativity.**  
If $\alpha\le\beta$, then $V_\alpha\subseteq V_\beta$.

**P2. Transitivity of stages.**  
Each $V_\alpha$ is a transitive set.

**P3. Supertransitivity of successor stages.**  
If $x\in V_{\alpha+1}$, then $\mathcal{P}(x)\subseteq V_{\alpha+1}$. Equivalently, $x\subseteq V_\alpha\Rightarrow\mathcal{P}(x)\subseteq V_{\alpha+1}$.

**P4. Stage characterization by rank.** 

$$
V_\alpha=\{x\mid{rank}(x)<\alpha\}.
$$

Consequently:
- $x\in V_{\alpha+1}\Leftrightarrow{rank}(x)\le\alpha\Leftrightarrow x\subseteq V_\alpha$;
- $x\in V_\alpha\setminus\bigcup_{\beta<\alpha}V_\beta$ if and only if ${rank}(x)+1=\alpha$ when $\alpha$ is a successor.

**P5. Ordinals sit on the diagonal.** 

$$
V_\alpha\cap\mathrm{Ord}=\alpha,\qquad{rank}(\alpha)=\alpha.
$$

**P6. Membership raises rank.**  
If $y\in x$, then ${rank}(y)<{rank}(x)$.

**P7. No stage contains itself.**  
$V_\alpha\notin V_\alpha$. In fact $V_\alpha\in V_{\alpha+1}$ and ${rank}(V_\alpha)=\alpha$.

---

## Rank (normative)

### Recursive definition

$$
{rank}(x)=\sup\{{rank}(y)+1\mid y\in x\},
$$

with the convention $\sup\emptyset=0$. In particular ${rank}(\emptyset)=0$.

### Stage definition 
${rank}(x)$ is the least ordinal $\alpha$ such that $x\subseteq V_\alpha$, equivalently the least ordinal $\alpha$ such that $x\in V_{\alpha+1}$.

### Well-definedness
Under Foundation, every set has a unique rank. Without Foundation, rank is defined on the class of well-founded sets, which is exactly $V$.

---

## Relationship to ZFC

**R1.** The construction of $\langle V_\alpha\rangle$ is formalizable in ZF (Power Set + Union + Replacement suffice for the recursion).

**R2.** The Axiom of Foundation is equivalent to the statement

$$
\forall x\,\exists\alpha\in\mathrm{Ord}\,(x\in V_\alpha),
$$

i.e., the class of all sets equals $V$.

**R3.** $V$ satisfies all ZFC axioms as a class model (with class-sized interpretations of the axioms). Individual stages generally do not:  
- $V_\omega$ models ZFC minus Infinity;  
- $V_{\omega+\omega}$ and many other $V_\lambda$ fail Replacement.

**R4.** This hierarchy replaces a single universal set. There is no set of all sets.

---

## Initial stages (informative, required to match the recursive)

$$
\begin{align*}
V_0&=\emptyset,\\
V_1&=\{\emptyset\},\\
V_2&=\{\emptyset,\{\emptyset\}\},\\
V_3&=\{\emptyset,\{\emptyset\},\{\{\emptyset\}\},\{\emptyset,\{\emptyset\}\}\},\\
V_\omega&=\bigcup_{n<\omega}V_n=\text{the set of all hereditarily finite sets}.
\end{align*}
$$

Cardinalities for finite stages:

$$
|V_0|=0,\quad |V_{n+1}|=2^{|V_n|}.
$$

Thus $|V_4|=16$, $|V_5|=2^{16}=65536$, $|V_6|=2^{65536}$.

---

## History (informative)

- von Neumann (1923–1928) introduced the now-standard ordinals and the use of transfinite recursion on them.
- Zermelo (1930, *Über Grenzzahlen und Mengenbereiche*) published the cumulative stages in essentially the modern form (allowing urelements).
- The hierarchy is named for von Neumann because the indexing and recursion rest on his ordinals.
- The construction implements the iterative conception of set: a set is formed only after its elements have already been formed.

---

## Conformance

An implementation, formalization, or exposition conforms to this specification if and only if it:
1. uses the definition of $V_\alpha$;
2. uses the rank conventions so that ${rank}(\emptyset)=0$ and $V_\alpha=\{x\mid{rank}(x)<\alpha\}$;
3. treats $V$ as a proper class;
4. states Foundation as the axiom that $V$ exhausts the universe of sets;
5. preserves P1–P7.

Optional but recommended: exhibit $V_0$ through $V_3$ and $V_\omega$ exactly.
