# Gödel Constructible Universe $L$

**Document type:** Formal mathematical specification  
**Subject:** Constructible hierarchy and constructible universe (Gödel, 1938)  
**Status:** Consolidated, internally consistent, implementation-oriented  
**Ambient theory:** ZF (AC is not assumed in $V$ unless a clause states otherwise)  
**Language:** First-order language $\mathcal{L}_\in=\{\in\}$ of set theory, unless a clause extends the language  

This document replaces informal notes with a single normative construction, aligned terminology, closed definitional gaps, and separately labeled definitions, invariants, theorems, and implementation limits.

---

## Scope and status of clauses

### .1 In scope
- The operator ${Def}$
- The hierarchy $\langle L_\alpha\mid\alpha\in{Ord}\rangle$
- The class $L$
- Constructible rank and the canonical well-order $<_L$
- Relativizations $L[A]$ and $L(A)$
- The axiom $V=L$
- Core structural theorems required to use $L$ as an inner model

### .2 Out of scope
- Jensen’s $J$-hierarchy and fine structure, except as a non-normative equivalent presentation
- Forcing over $L$, mice, or core models
- A full executable realization of the proper class $L$

### .3 Clause kinds
| Label | Meaning |
|---|---|
| **DEF** | Definition; binds a symbol |
| **INV** | Invariant that the construction must preserve |
| **THM** | Theorem of ZF about the defined objects |
| **AX** | Optional axiom that may be added to ZF |
| **IMPL** | Constraint on formalization or computation |

---

## Terms and symbols

| Symbol / term | Kind | Meaning |
|---|---|---|
| ${Ord}$ | class | von Neumann ordinals |
| $V$ | class | ambient universe |
| $V_\alpha$ | set | von Neumann rank-initial segment |
| ${HF}$ | set | hereditarily finite sets; $V_\omega=L_\omega$ |
| structure $(X,\in)$ | structure | $(X,\in\cap(X\times X))$ |
| formula | syntax | first-order $\mathcal{L}_\in$-formula, parameters allowed unless stated |
| definable over $X$ | relation | subset of $X$ defined in $(X,\in)$ by a formula with parameters from $X$ |
| $L_\alpha$ | set | constructible level (stage) of height $\alpha$ |
| $L$ | proper class | constructible universe |
| ${rank}_L(x)$ | ordinal | constructible rank of $x\in L$ |
| $<_L$ | class relation | canonical well-order of $L$ |
| inner model | class | transitive class model of ZF containing ${Ord}$ |
| $L[A]$ | class | constructibility relative to predicate $A$ |
| $L(A)$ | class | constructibility over parameter set $A$ |

**Normative naming**
- Use **level** or **stage** for $L_\alpha$, not “ rank-initial segment of $V$ ”.
- Use **constructible rank** for ${rank}_L$, not Mirimanoff / $V$ -rank.
- Use $L[A]$ only for extra-predicate constructibility.
- Use $L(A)$ only for the smallest inner model containing $A$ and all ordinals.
- Write ${Def}(X)\subseteq\mathcal{P}(X)$, never “ ${Def}\subset\mathcal{P}$ ” as an operator identity.

---

## Definable power set

### .1 DEF — satisfaction
For a set $X$, a formula $\varphi(v_0,\dots,v_n)$ of $\mathcal{L}_\in$, and $a_0,\dots,a_n\in X$,

$$
(X,\in)\models\varphi[a_0,\dots,a_n]
$$

means the standard Tarskian satisfaction of $\varphi$ in the structure $(X,\in\cap(X\times X))$ with those assignments.

Satisfaction for a fixed formula is absolute between transitive sets containing the relevant parameters in the usual sense of Lévy absoluteness for bounded formulas; the specification does not treat satisfaction as an extra primitive.

### .2 DEF — ${Def}(X)$
$$
{Def}(X)
:=
\{
Y\subseteq X
|
\text{there exist an }\mathcal{L}_\in\text{-formula }\varphi(v,v_1,\dots,v_n)
\text{ and }a_1,\dots,a_n\in X
\text{ such that }
Y=\{y\in X\mid (X,\in)\models\varphi[y,a_1,\dots,a_n]\}
\}.
$$

Equivalently: $Y\in{Def}(X)$ iff $Y\subseteq X$ and $Y$ is first-order definable over $(X,\in)$ with parameters from $X$.

### .3 INV — elementary properties of ${Def}$
For every set $X$:
1. ${Def}(X)$ is a set and ${Def}(X)\subseteq\mathcal{P}(X)$.
2. If $X$ is transitive, then $X\subseteq{Def}(X)$. In particular $X\in{Def}(X)$ may fail; what holds is that every element of $X$, being a subset of $X$, is definable by the formula $v\in a$ with parameter $a\in X$.
3. Every finite subset of $X$ belongs to ${Def}(X)$.
4. If $X$ is infinite, then $|{Def}(X)|=|X|$.  
   *Justification:* there are countably many formulas and $|X|^{<\omega}=|X|$ many finite parameter tuples. The equality $|X|^{<\omega}=|X|$ uses well-orderability of $X$ or AC in $V$; inside $L$ it will hold because $<_L$ well-orders every level.

### .4 IMPL — making ${Def}$ formal
A formalization SHALL treat formulas as coded sets (Gödel numbers) and SHALL define a satisfaction class or a recursive truth predicate for $(X,\in)$ sufficient to collect all definable subsets. The metatheoretic schema “each formula defines a set in ${Def}(X)$” is not itself a single ZF theorem; the coded satisfaction definition is.

---

## Constructible hierarchy

### .1 DEF — recursion
By transfinite recursion on $\alpha\in{Ord}$:

$$
\begin{align*}
L_0 &:= \emptyset,\\
L_{\alpha+1} &:= {Def}(L_\alpha),\\
L_\lambda &:= \bigcup_{\beta<\lambda} L_\beta && \text{$\lambda$ limit}.
\end{align*}
$$

### .2 DEF — constructible universe
$$
L := \bigcup_{\alpha\in{Ord}} L_\alpha.
$$

$L$ is a proper class.

### .3 DEF — constructible rank
For $x\in L$,

$$
{rank}_L(x)
:=
\text{the least ordinal }\alpha\text{ such that }x\in L_{\alpha+1}.
$$

Thus $x$ first appears as an element of the successor level $L_{\alpha+1}$, not of $L_\alpha$.

### .4 THM — unfolding of rank
For every $\alpha$,

$$
L_\alpha = \{x\in L\mid {rank}_L(x)<\alpha\}.
$$

In particular $x\in L_\alpha$ iff ${rank}_L(x)<\alpha$.

---

## Required structural invariants

The following are theorems of ZF and SHALL be preserved by any equivalent presentation of the hierarchy.

### .1 THM — transitivity and cumulativity
For all ordinals $\alpha\le\beta$:
1. $L_\alpha$ is transitive.
2. $L_\alpha\subseteq L_\beta$.
3. If $\alpha<\beta$, then $L_\alpha\in L_\beta$.
4. $L_\alpha\in L_{\alpha+1}$.

### .2 THM — ordinals on the diagonal
For every ordinal $\alpha$:
1. $L_\alpha\cap{Ord}=\alpha$.
2. $\alpha\in L_{\alpha+1}$ and ${rank}_L(\alpha)=\alpha$.
3. ${Ord}\subseteq L$.

### .3 THM — comparison with $V$
For every $\alpha$:
1. $L_\alpha\subseteq V_\alpha$.
2. $L_\alpha=V_\alpha$ for all $\alpha\le\omega$.
3. $L_\omega={HF}=V_\omega$.
4. $L_{\omega+1}$ is the set of subsets of ${HF}$ that are arithmetical (first-order definable over $({HF},\in)$ with parameters). Hence $L_{\omega+1}\subsetneq V_{\omega+1}$.

### .4 THM — cardinality of levels
1. If $\alpha<\omega$, then $L_\alpha$ is finite.
2. If $\alpha\ge\omega$, then $|L_\alpha|=|\alpha|$.

### .5 THM — $L$ is an inner model
1. $L$ is transitive.
2. ${Ord}\subseteq L\subseteq V$.
3. $L$ is almost universal: if $x\subseteq L$, then there exists $\alpha$ with $x\subseteq L_\alpha\in L$.
4. $L$ is closed under first-order definability: if $Y\subseteq L_\alpha$ and $Y\in{Def}(L_\alpha)$, then $Y\in L_{\alpha+1}\subseteq L$.
5. $L\models\mathrm{ZF}$.
6. $L\models\mathrm{AC}$, because $<_L$ well-orders $L$.
7. Therefore $L\models\mathrm{ZFC}$.

### .6 THM — minimality
If $M$ is a transitive class model of ZF with ${Ord}\subseteq M$, then $L\subseteq M$.  
Hence $L$ is the smallest inner model of ZF containing all ordinals.

### .7 THM — internal constructibility
$L\models V=L$.  
If $\delta$ is a limit ordinal, then $L_\delta\models V=L$ in the sense appropriate to that set structure (every set of $L_\delta$ appears at some level $L_\alpha$ with $\alpha<\delta$).

---

## Canonical well-order

### .1 DEF — $<_L$
There is a class well-order $<_L$ of $L$, definable over $L$, constructed recursively as follows.

Assume $<_L$ already well-orders $L_\alpha$. Order $L_{\alpha+1}$ by the lexicographic data of a definition of $Y\in{Def}(L_\alpha)$:
1. Gödel number of the defining formula $\varphi$;
2. the finite parameter tuple $\langle a_1,\dots,a_n\rangle$, ordered by the already defined well-order of $L_\alpha$;
3. among equivalent definitions, take the $<_L$-least code.

At limit levels take the union of the previous well-orders. This yields a well-order of each $L_\alpha$ and of the class $L$.

### .2 INV
1. $<_L$ is a well-order of the class $L$.
2. $<_L\cap(L_\alpha\times L_\alpha)$ well-orders $L_\alpha$.
3. $<_L$ is definable over $L$ without extra parameters.
4. AC holds in $L$ via this well-order: every nonempty $x\in L$ has a $<_L$-least element.

---

## Condensation and GCH

These clauses are part of the standard usable specification of $L$, not optional commentary.

### .1 THM — condensation lemma
Let $\alpha$ be a limit ordinal and let $X\prec L_\alpha$ (elementary submodel of $(L_\alpha,\in)$). Let $\pi\colon X\to N$ be the Mostowski collapse of $X$. Then there exists $\beta\le\alpha$ such that $N=L_\beta$.

If $X$ is already transitive, then $X=L_\beta$.

A $\Sigma_1$-elementary version is sufficient for the usual GCH argument.

### .2 THM — GCH in $L$
$L\models\mathrm{GCH}$.  
In particular, for every infinite ordinal $\alpha\in L$,

$$
L\models 2^{|\alpha|}=|\alpha|^+.
$$

Sketch of the required mechanism: if $X\subseteq\omega_\kappa^L$ and $X\in L$, condensation plus Skolem hulls of size $\omega_\kappa$ place $X$ in some $L_\beta$ with $|\beta|=\omega_\kappa$, hence $X\in L_{\omega_\kappa^+}$, so $\mathcal{P}(\omega_\kappa)^L\subseteq L_{\omega_\kappa^+}$ and $|\mathcal{P}(\omega_\kappa)^L|\le\omega_\kappa^+$.

### .3 THM — further regularity (informative, not exhaustive)
Under $V=L$, or internally in $L$:
- $\lozenge_\kappa$ holds for every uncountable regular $\kappa$
- there is no measurable cardinal in $L$
- $\square_\kappa$ holds for every infinite $\kappa$

These are consequences, not part of the definition of $L$.

---

## Axiom of constructibility

### .1 AX — $V=L$
$$
V=L
:\iff
\forall x\,\exists\alpha\in{Ord}\,(x\in L_\alpha).
$$

### .2 THM
1. ZF proves $L\models V=L$.
2. $V=L$ is independent of ZFC (relative consistency both ways, via inner models and forcing).
3. $\mathrm{ZF}+V=L\vdash\mathrm{ZFC}+\mathrm{GCH}$.

---

## Relativized constructions

The two relativizations SHALL NOT be identified.

### .1 DEF — $L[A]$ (extra predicate)
Let $A$ be a class (usually a set). Language $\mathcal{L}_{\in,A}=\{\in,A\}$ with $A$ a unary predicate interpreted as membership in $A$.

$$
{Def}_A(X)
:=
\{
Y\subseteq X
|
Y\text{ is definable over }(X,\in,A\cap X)
\text{ with parameters from }X
\}.
$$

$$
\begin{align*}
L_0[A] &:= \emptyset,\\
L_{\alpha+1}[A] &:= {Def}_A(L_\alpha[A]),\\
L_\lambda[A] &:= \bigcup_{\beta<\lambda} L_\beta[A],\\
L[A] &:= \bigcup_{\alpha\in{Ord}} L_\alpha[A].
\end{align*}
$$

**Required facts**
1. $L[A]$ is an inner model of ZFC.
2. $A\cap L[A]$ is definable over $L[A]$ from the predicate.
3. $A\in L[A]$ can fail. If $A\subseteq{Ord}$, then $A\in L[A]$.
4. If $A\in L$, then $L[A]=L$.

### .2 DEF — $L(A)$ (parameters)
Let $A$ be a set. Let ${trcl}(\{A\})$ be the smallest transitive set containing $A$ as an element.

$$
\begin{align*}
L_0(A) &:= {trcl}(\{A\}),\\
L_{\alpha+1}(A) &:= {Def}(L_\alpha(A)),\\
L_\lambda(A) &:= \bigcup_{\beta<\lambda} L_\beta(A),\\
L(A) &:= \bigcup_{\alpha\in{Ord}} L_\alpha(A).
\end{align*}
$$

**Required facts**
1. $A\in L(A)$ always.
2. $L(A)$ is the smallest inner model of ZF containing $A$ and all ordinals.
3. $L(A)$ need not satisfy AC. Typical example: $L(\mathbb{R})$ after adding enough random or Cohen reals, or AD models of the form $L(\mathbb{R})$.
4. If $A\in L$, then $L(A)=L$.

### .3 Alignment table
| | Starts from | Definable using | Contains $A$? | AC? |
|---|---|---|---|---|
| $L$ | $\emptyset$ | $\in$ only | — | yes |
| $L[A]$ | $\emptyset$ | $\in$ and predicate $A$ | not always | yes |
| $L(A)$ | ${trcl}(\{A\})$ | $\in$ only | always | not always |

---

## Initial levels (normative values)

$$
\begin{align*}
L_0 &= \emptyset,\\
L_1 &= \{\emptyset\},\\
L_2 &= \{\emptyset,\{\emptyset\}\},\\
L_3 &= \{\emptyset,\{\emptyset\},\{\{\emptyset\}\},\{\emptyset,\{\emptyset\}\}\},\\
L_n &= V_n && (n<\omega),\\
L_\omega &= {HF} = V_\omega,\\
L_{\omega+1} &= \{Y\subseteq{HF}\mid Y\text{ is first-order definable over }({HF},\in)\text{ with parameters}\}.
\end{align*}
$$

These identities SHALL be used as test vectors for any implementation of finite stages.

---

## Equivalent presentations (non-normative, interoperability)

The following constructions SHALL be treated as interchangeable only after a proof of level-by-level or eventual agreement, which must be recorded.

1. **Gödel operations.** Close under a finite list of rudimentary/Gödel functions and intersect with $\mathcal{P}(L_\alpha)$. Levels need not coincide with ${Def}$-levels, but the unions at limits of cofinality $>\omega$ can be aligned.
2. **$J$-hierarchy.** Jensen levels $J_\alpha$ satisfy $L=\bigcup_\alpha J_\alpha$ and $J_{\alpha+\omega}=L_{\omega\alpha}$ under the usual indexing. Fine structure is not required to define $L$.

The normative object of this specification is the ${Def}$-hierarchy.

## Implementation and conformance

### .1 What “implementation” may mean
An implementation conforming to this specification is one of:
1. a formalization in a proof assistant of DEF/INV/THM clauses;
2. a computer program that computes $L_n$ exactly for all $n\le N<\omega$;
3. a bounded-complexity approximation of ${Def}(\mathrm{HF})$, i.e. a fragment of $L_{\omega+1}$.

No implementation is required to enumerate $L$ or even $L_{\omega_1}$.

### .2 Conformance tests
A finite-stage implementation SHALL satisfy:
- $L_0=\emptyset$
- $L_{n+1}={Def}(L_n)$ for $n<N$
- transitivity and $L_n\cap{Ord}=n$
- $L_n=V_n$ for $n\le\omega$ when the runtime reaches $\omega$ only as a limit of finite stages
- every finite subset of $L_n$ appears in $L_{n+1}$

A proof-assistant formalization SHALL provide:
- coded satisfaction
- the recursion
- proofs of 5.1, 5.2, 5.5, 5.6, 5.7
- a construction of $<_L$
- statements of condensation and GCH, with proofs if the development claims completeness

### .3 Non-requirements
- Deciding arbitrary membership in $L$ for sets given as $V$-objects
- Computing ${Def}(X)$ for infinite $X$ in full
- Identifying $L[A]$ with $L(A)$

---

## Quick reference

$$
\begin{align*}
L_0&=\emptyset,\\
L_{\alpha+1}&={Def}(L_\alpha),\\
L_\lambda&=\bigcup_{\beta<\lambda}L_\beta,\\
L&=\bigcup_{\alpha\in{Ord}}L_\alpha,\\
{rank}_L(x)&=\min\{\alpha\mid x\in L_{\alpha+1}\},\\
V=L&\iff\forall x\,\exists\alpha\,(x\in L_\alpha).
\end{align*}
$$

**Invariants to keep visible in any derived document:**  
transitive; cumulative; $L_\alpha\cap{Ord}=\alpha$; $L_\alpha\subseteq V_\alpha$; $|L_\alpha|=|\alpha|$ for $\alpha\ge\omega$; $L$ smallest inner model; $L\models\mathrm{ZFC}+\mathrm{GCH}+V=L$.
