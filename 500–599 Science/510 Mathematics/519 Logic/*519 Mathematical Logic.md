# Mathematical Logic
- 519 Mathematical Logic

Below is a compact but reasonably complete catalogue of the core **notation**, **formation rules**, **axiom schemas**, **inference rules**, **semantic clauses**, and **metatheorems** of classical mathematical logic (propositional, first-order, and the most common modal systems). Notation is standardized to the most widely used modern conventions; equivalent older symbols are noted where they still appear. This list is the “working toolkit” that appears in virtually every textbook of mathematical logic. Many further systems (intuitionistic, linear, relevant, fuzzy, higher-order, infinitary, $\ldots$ reuse the same connective and quantifier notation and simply change the axioms or the structural rules of the sequent calculus.

---

### 1. Shared syntactic building blocks

**Propositional connectives** (in decreasing binding strength):

$$
\lnot,\quad \land,\quad \lor,\quad \to,\quad \leftrightarrow
$$

Older/alternate symbols: $\sim$ or $\neg$ for $\lnot$; $\cdot$, $K$ for $\land$; $\lor$, $+$, $A$ for $\lor$; $\supset$, $\Rightarrow$, $C$ for $\to$; $\equiv$, $\Leftrightarrow$, $E$ for $\leftrightarrow$.

**Constants**: $\top$ (verum), $\bot$ (falsum).  
Usual definitions:

$$
\top \;\equiv\; p\lor\lnot p,\qquad
\bot \;\equiv\; p\land\lnot p,\qquad
\varphi\leftrightarrow\psi \;\equiv\; (\varphi\to\psi)\land(\psi\to\varphi).
$$

**First-order extra symbols**: variables $x,y,z,\dots$; constant symbols $c,d,\dots$; function symbols $f,g,\dots$ of given arities; predicate (relation) symbols $P,R,\dots$; equality $=$; quantifiers $\forall,\exists$.

**Terms** (inductive):

- every variable and constant is a term;
- if $t_1,\dots,t_n$ are terms and $f$ is $n$-ary, then $f(t_1,\dots,t_n)$ is a term.

**Formulas** (inductive):

- $t_1=t_2$ and $P(t_1,\dots,t_n)$ are atomic formulas;
- if $\varphi,\psi$ are formulas then so are $\lnot\varphi$, $(\varphi\land\psi)$, $(\varphi\lor\psi)$, $(\varphi\to\psi)$;
- if $\varphi$ is a formula and $x$ a variable then $\forall x\,\varphi$ and $\exists x\,\varphi$ are formulas.

**Free/bound occurrence**, **substitutability** (“$t$ is free for $x$ in $\varphi$”), and the substitution notation $\varphi[t/x]$ or $\varphi(x\mapsto t)$ are the usual ones.

**Sequent**: $\Gamma\vdash\Delta$ (or $\Gamma\Rightarrow\Delta$) means “the conjunction of the (finite) set $\Gamma$ entails the disjunction of the (finite) set $\Delta$”.

---

### 2. Propositional logic — Hilbert-style systems

A common minimal complete set of axiom *schemas* (Łukasiewicz / Mendelson style) plus modus ponens:

$$
\begin{align*}
\text{(A1)}\quad &\varphi\to(\psi\to\varphi)\\
\text{(A2)}\quad &(\varphi\to(\psi\to\chi))\to((\varphi\to\psi)\to(\varphi\to\chi))\\
\text{(A3)}\quad &(\lnot\psi\to\lnot\varphi)\to(\varphi\to\psi)
\end{align*}
$$

**Rule**:
$$
\frac{\varphi\qquad\varphi\to\psi}{\psi}\qquad\text{(MP)}
$$

An equivalent three-schema system that treats $\lnot$ and $\to$ as primitive and recovers the third connective by definition is often written with the third axiom

$$
(\lnot\varphi\to\lnot\psi)\to((\lnot\varphi\to\psi)\to\varphi).
$$

Systems that take all connectives as primitive add schemas such as

$$
\begin{align*}
\varphi\to(\psi\to(\varphi\land\psi)),&\quad
(\varphi\land\psi)\to\varphi,\quad
(\varphi\land\psi)\to\psi,\\
\varphi\to(\varphi\lor\psi),&\quad
\psi\to(\varphi\lor\psi),\\
(\varphi\to\chi)\to((\psi\to\chi)\to((\varphi\lor\psi)\to\chi)),\\
(\varphi\to\psi)\to((\varphi\to\lnot\psi)\to\lnot\varphi),\\
\lnot\lnot\varphi\to\varphi.
\end{align*}
$$

**Deduction theorem** (syntactic):

$$
\Gamma,\varphi\vdash\psi\quad\iff\quad\Gamma\vdash\varphi\to\psi.
$$

---

### 3. First-order logic — Hilbert-style extension

Add the two (or three) quantifier schemas and the rule of generalization. A standard set (Enderton / Mendelson style) is:

$$
\begin{align*}
\text{(Q1)}\quad &\forall x\,\varphi\to\varphi[t/x]
&&\text{($t$ free for $x$ in $\varphi$)}\\
\text{(Q2)}\quad &\forall x\,(\varphi\to\psi)\to(\varphi\to\forall x\,\psi)
&&\text{($x$ not free in $\varphi$)}
\end{align*}
$$

If $\exists$ is primitive rather than defined by $\exists x$ $\varphi$ $\equiv$ $\lnot$ $\forall x$ , $\lnot$ $\varphi$ :

$$
\varphi[t/x]\to\exists x\,\varphi
\qquad\text{($t$ free for $x$)}.
$$

**Equality axioms** (when = is logical):

$$
\begin{align*}
x&=x,\\
x&=y\to\bigl(\varphi\to\varphi[y/x]\bigr)
&&\text{($\varphi$ atomic, or by replacement)}.
\end{align*}
$$

**Rules**:

$$
\frac{\varphi\qquad\varphi\to\psi}{\psi}\quad\text{(MP)},
\qquad
\frac{\varphi}{\forall x\,\varphi}\quad\text{(Gen)}.
$$

(The usual side-condition on Gen: if one works with open formulas from a set $\Gamma$, $x$ must not occur free in any undischarged member of $\Gamma$.)

---

### 4. Semantics (Tarski)

A *structure* (model) $\mathfrak{M}$ for a first-order language $\mathcal{L}$ consists of a non-empty domain $|\mathfrak{M}|$ together with interpretations $c^\mathfrak{M}$, $f^\mathfrak{M}$, $P^\mathfrak{M}$ of the non-logical symbols.

An *assignment* $s$ maps variables to $|\mathfrak{M}|$. The value of a term $t^{\mathfrak{M},s}$ is defined by recursion in the obvious way.

**Satisfaction** $\mathfrak{M}\models\varphi[s]$ (or $\mathfrak{M},s\models\varphi$):

$$
\begin{align*}
\mathfrak{M}\models t_1=t_2[s]
&\iff t_1^{\mathfrak{M},s}=t_2^{\mathfrak{M},s},\\
\mathfrak{M}\models P(t_1,\dots,t_n)[s]
&\iff (t_1^{\mathfrak{M},s},\dots,t_n^{\mathfrak{M},s})\in P^\mathfrak{M},\\
\mathfrak{M}\models\lnot\varphi[s]
&\iff\mathfrak{M}\not\models\varphi[s],\\
\mathfrak{M}\models(\varphi\land\psi)[s]
&\iff\mathfrak{M}\models\varphi[s]\text{ and }\mathfrak{M}\models\psi[s],
\end{align*}
$$

and likewise for $\lor,\to$; for quantifiers:

$$
\begin{align*}
\mathfrak{M}\models\forall x\,\varphi[s]
&\iff\text{for every }a\in|\mathfrak{M}|,\ 
\mathfrak{M}\models\varphi[s(x\mapsto a)],\\
\mathfrak{M}\models\exists x\,\varphi[s]
&\iff\text{there exists }a\in|\mathfrak{M}|,\ 
\mathfrak{M}\models\varphi[s(x\mapsto a)].
\end{align*}
$$

**Validity / entailment**:

$$
\begin{align*}
\models\varphi
&\iff\text{every structure and assignment satisfies }\varphi,\\
\Gamma\models\varphi
&\iff\text{every model of }\Gamma\text{ is a model of }\varphi.
\end{align*}
$$

For propositional logic the same clauses are written with truth-value assignments $v:\{p_i\}\to\{0,1\}$ and the usual truth tables.

---

### 5. Sequent calculus LK (Gentzen)

**Axiom**:

$$
\varphi\vdash\varphi
$$

**Cut**:

$$
\frac{\Gamma\vdash\Delta,\varphi\qquad\varphi,\Sigma\vdash\Pi}{\Gamma,\Sigma\vdash\Delta,\Pi}
$$

**Logical rules** (principal formula displayed; contexts $\Gamma,\Delta$ omitted for brevity in some presentations):

$$
\begin{align*}
\frac{\Gamma,\varphi\vdash\Delta}{\Gamma,\varphi\land\psi\vdash\Delta}
&\quad \frac{\Gamma,\psi\vdash\Delta}{\Gamma,\varphi\land\psi\vdash\Delta}
&&(\land\text{L})\\ \frac{\Gamma\vdash\Delta,\varphi\qquad\Gamma\vdash\Delta,\psi}{\Gamma\vdash\Delta,\varphi\land\psi} &&(\land\text{R}) \frac{\Gamma,\varphi\vdash\Delta\qquad\Gamma,\psi\vdash\Delta}{\Gamma,\varphi\lor\psi\vdash\Delta}
&&(\lor\text{L})\\ \frac{\Gamma\vdash\Delta,\varphi}{\Gamma\vdash\Delta,\varphi\lor\psi}
&\quad \frac{\Gamma\vdash\Delta,\psi}{\Gamma\vdash\Delta,\varphi\lor\psi} &&(\lor\text{R}) \frac{\Gamma\vdash\Delta,\varphi\qquad\Sigma,\psi\vdash\Pi}{\Gamma,\Sigma,\varphi\to\psi\vdash\Delta,\Pi}
&&(\to\text{L})\\ \frac{\Gamma,\varphi\vdash\Delta,\psi}{\Gamma\vdash\Delta,\varphi\to\psi} &&(\to\text{R}) \frac{\Gamma\vdash\Delta,\varphi}{\Gamma,\lnot\varphi\vdash\Delta} &&(\lnot\text{L})\\ \frac{\Gamma,\varphi\vdash\Delta}{\Gamma\vdash\Delta,\lnot\varphi} &&(\lnot\text{R}) \frac{\Gamma,\varphi[t/x]\vdash\Delta}{\Gamma,\forall x\,\varphi\vdash\Delta} &&(\forall\text{L})\\ \frac{\Gamma\vdash\Delta,\varphi[y/x]}{\Gamma\vdash\Delta,\forall x\,\varphi} &&(\forall\text{R},\ y\text{ eigenvariable}) \frac{\Gamma,\varphi[y/x]\vdash\Delta}{\Gamma,\exists x\,\varphi\vdash\Delta} &&(\exists\text{L},\ y\text{ eigenvariable})\\ \frac{\Gamma\vdash\Delta,\varphi[t/x]}{\Gamma\vdash\Delta,\exists x\,\varphi} &&(\exists\text{R}) \end{align*}
$$

**Structural rules**: weakening (thinning), contraction, exchange (permutation) on either side.

Cut-elimination (Gentzen’s Hauptsatz) says every LK-derivation can be transformed into a cut-free one.

---

### 6. Normal modal propositional logics

Language: add unary operators $\Box$ (“necessarily”) and $\Diamond$ (“possibly”), with

$$
\Diamond\varphi\;\equiv\;\lnot\Box\lnot\varphi.
$$

**System K** (smallest normal modal logic):

- all classical tautologies (or a Hilbert basis for them);
- axiom **K**:
  
$$
\Box(\varphi\to\psi)\to(\Box\varphi\to\Box\psi);
$$
  
- rules MP and **Necessitation**:

$$
\frac{\vdash\varphi}{\vdash\Box\varphi}.
$$

Additional axiom schemas and the systems they generate:

$$
\begin{align*}
\text{T (or M)}\quad &\Box\varphi\to\varphi
&&\text{(reflexive frames)}\\
\text{D}\quad &\Box\varphi\to\Diamond\varphi
&&\text{(serial frames)}\\
\text{4}\quad &\Box\varphi\to\Box\Box\varphi
&&\text{(transitive frames)}\\
\text{B}\quad &\varphi\to\Box\Diamond\varphi
&&\text{(symmetric frames)}\\
\text{5 (or E)}\quad &\Diamond\varphi\to\Box\Diamond\varphi
&&\text{(Euclidean frames)}
\end{align*}
$$

Standard combinations:

$$
\begin{align*}
\text{T} &= \text{K}+\text{T},\\
\text{S4} &= \text{K}+\text{T}+4,\\
\text{S5} &= \text{K}+\text{T}+5
\quad\text{(equivalently K+T+4+B)}.
\end{align*}
$$

**Kripke semantics**: a frame $(W,R)$; a model $\mathfrak{M}=(W,R,V)$.  

$$
\begin{align*}
\mathfrak{M},w\models\Box\varphi
&\iff\forall v\,(wRv\Rightarrow\mathfrak{M},v\models\varphi),\\
\mathfrak{M},w\models\Diamond\varphi
&\iff\exists v\,(wRv\land\mathfrak{M},v\models\varphi).
\end{align*}
$$

Correspondence: T $\leftrightarrow$ reflexivity of $R$, 4 $\leftrightarrow$ transitivity, 5 $\leftrightarrow$ Euclidean, S5 $\leftrightarrow$ $R$ an equivalence relation.

---

### 7. Principal metatheorems (classical first-order logic)

**Soundness**:

$$
\Gamma\vdash\varphi\quad\implies\quad\Gamma\models\varphi.
$$

**Gödel’s completeness theorem** (1929):

$$
\Gamma\models\varphi\quad\implies\quad\Gamma\vdash\varphi
$$

(equivalently: a set of sentences is consistent if and only if it has a model).

**Compactness**:

$$
\Gamma\models\varphi\quad\implies\quad
\text{some finite }\Gamma_0\subseteq\Gamma\text{ satisfies }\Gamma_0\models\varphi.
$$

Equivalently: if every finite subset of $\Gamma$ has a model, then $\Gamma$ has a model.

**Löwenheim–Skolem** (downward): if a countable theory has an infinite model, it has a countably infinite model.  

(Upward): if it has an infinite model, it has models of every larger infinite cardinality.

**Gödel’s first incompleteness theorem** (informal statement):  

If $T$ is a consistent, recursively axiomatizable extension of a sufficiently strong fragment of arithmetic (e.g. Robinson arithmetic $Q$ or Peano arithmetic), then there exists a sentence $G_T$ (the Gödel sentence) such that

$$
T\nvdash G_T\qquad\text{and}\qquad T\nvdash\lnot G_T.
$$

($G_T$ is true in the standard model $\mathbb{N}$ if $T$ is sound.)

**Gödel’s second incompleteness theorem**:

$$
T\nvdash{Con}(T),
$$

where ${Con}(T)$ is the arithmetized consistency statement $\lnot{Prov}_T(\ulcorner 0=1\urcorner)$.

**Diagonal lemma** (used in the proofs):
for any formula $\psi(x)$ there is a sentence $\varphi$ with

$$
T\vdash\varphi\leftrightarrow\psi(\ulcorner\varphi\urcorner).
$$

---
