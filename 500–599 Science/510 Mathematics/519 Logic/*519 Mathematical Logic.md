# Mathematical Logic
- 519 Mathematical Logic

This document gives a complete, orthodox reference set for classical logic — syntax, semantics, Hilbert systems, Gentzen LK, modal logics, metatheorems, and standard notation. Below is a compact but reasonably complete catalogue of the core **notation**, **formation rules**, **axiom schemas**, **inference rules**, **semantic clauses**, and **metatheorems** of classical mathematical logic (propositional, first-order, and the most common modal systems). Notation is standardized to the most widely used modern conventions; equivalent older symbols are noted where they still appear. 

This document is a formal object: a complete classical logic specification. Can present any foundational logic module, the same way prover software presents its core kernel. This list is the “working toolkit” that appears in virtually every textbook of mathematical logic. Many further systems (intuitionistic, linear, relevant, fuzzy, higher-order, infinitary, $\ldots$ reuse the same connective and quantifier notation and simply change the axioms or the structural rules of the sequent calculus.

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

## APPENDIX: Set Theory & Logic Symbols

```
Symbol          Meaning
------          -------
a ∈ A           Belongs to
A ∋ a           Contains
a ∉ A           Does not belong to
A ⊂ B           Proper Subset of
A ⊆ B           Improper Subset of (subset of)
A ⊃ B           Superset of
ℕ               Natural Numbers
ℤ               Integers
ℚ               Rational Numbers
ℝ               Real Numbers
𝔸 / A           Algebraic Numbers
ℂ               Complex Numbers
n(A)            Cardinality
ξ / 𝒰           Universal Set
∅               Null Set (Empty Set)
A \ B           Set Difference
A ∪ B           Union
A ∩ B           Intersection
A'              Complement Set
:               Such That
{a, b, c}       Set
∃               There exists
∄               There does not exist
∃!              Only one exists (unique existence)
A ⇒ B           Implies
A ⇔ B           If and only if (Mutually Implies)
A ⇏ B           Does not imply
¬A              Not
a ∨ b           Or
a ∧ b           And
A ⊢ B           Proves
A ⊬ B           Does not yield (does not prove)
∴               Therefore
∵               Because
∀               For all
□               End of Proof
⊈               Not a subset
⊉               Not a superset
⊻               XOR
⊼               NAND
⊽               NOR
↦               Maps to
↣               Injective function
↠               Surjective function
↪               Embedding
↩               Left hook (inclusion)
⊨               Semantic entailment
⊭               Not semantically entailed
≺≺             Elementary substructure
⊩              Forcing (set theory)
λx. f(x)        Lambda abstraction
∀x∈A            Bounded quantifier
∃x!             Unique existence (bounded form)
idₓ             Identity morphism
Hom(A,B)        Hom‑set
End(A)          Endomorphisms
Aut(A)          Automorphisms
⊗ᶜ             Monoidal tensor
⇒              Natural transformation
```

## APPENDIX: Logic, Type Theory & Formal Semantics 

```
Symbol                  Meaning
------                  -------
⊢                       Provability / syntactic entailment
⊬                       Not provable
⊨                       Semantic entailment
⊭                       Not semantically entailed

λx. e                   Lambda abstraction
λx:A. e                 Typed lambda abstraction
e₁ e₂                   Function application
e[x := v]               Substitution of x with v in expression e

α                       Type variable
β                       Type variable
τ                       Type
σ                       Type
Γ                       Typing context
Δ                       Constraint context

Γ ⊢ e : τ               Expression e has type τ under context Γ
Γ ⊢ τ₁ = τ₂             Type equality judgment
Γ ⊢ τ₁ <: τ₂            Subtyping judgment

∀x. P(x)                Universal quantification
∃x. P(x)                Existential quantification
∃!x. P(x)               Unique existence
∀x∈A. P(x)              Bounded universal quantifier
∃x∈A. P(x)              Bounded existential quantifier

→                       Function type
×                       Product type
+                       Sum type
⊕                       Disjoint sum type
⊤                       True / top type
⊥                       False / bottom type
¬                       Negation
∧                       Conjunction
∨                       Disjunction

μX. F(X)                Least fixed point
νX. F(X)                Greatest fixed point

⟦e⟧                    Denotational semantics of expression e
⟦e⟧ρ                   Semantics under environment ρ
⟨e⟩                    Syntactic form of expression e

e ↦ e'                  Evaluation step (small‑step semantics)
e ⇓ v                   Evaluation to value v (big‑step semantics)
e ⇑                    Divergence / non‑termination

≡β                     Beta equivalence
≡η                     Eta equivalence
≡α                     Alpha equivalence

→*                     Reflexive transitive closure of →
↦*                     Multi‑step reduction

□                      End of proof
```

## APPENDIX: Formal Logic, Proof Systems & Type Theory

``` 
Symbol                  Meaning
------                  -------
⊤                       True
⊥                       False
¬P                      Negation
P ∧ Q                   Conjunction
P ∨ Q                   Disjunction
P → Q                   Implication
P ↔ Q                   Biconditional

∀x P(x)                 Universal quantifier
∃x P(x)                 Existential quantifier
∃!x P(x)                Unique existence

⊢ P                     P is provable
Γ ⊢ P                   P is provable from assumptions Γ
⊨ P                     P is logically valid
Γ ⊨ P                   P is semantically entailed by Γ

MP                      Modus ponens
MT                      Modus tollens
P ⊢ P ∨ Q               Introduction rule
P ∧ Q ⊢ P               Elimination rule

⟨proof⟩                Proof object (generic)
derivation              Sequence of inference steps

SK                     Hilbert-style axiom system S–K
NK                     Natural deduction system

λx. t                   Lambda abstraction
t u                     Function application
(λx. t) u               Beta reduction
t →β t'                 Beta reduction step
η-reduction             Eta reduction

FV(t)                   Free variables of term t
BV(t)                   Bound variables of term t
α-equivalence           Renaming of bound variables

Type                    Generic type
A : Type                A is a type
t : A                   Term t has type A
Γ ⊢ t : A               Typing judgment

A → B                   Function type
A × B                   Product type
A + B                   Sum type
Unit                    Unit type
Void                    Empty type

Πx:A. B(x)              Dependent function type (Pi type)
Σx:A. B(x)              Dependent pair type (Sigma type)

Id_A(x,y)               Identity type
refl_x                  Reflexivity constructor

Curry–Howard            Proposition-as-type correspondence
P ↔ A                   Logical proposition P corresponds to type A
proof ↔ term            Proof corresponds to term inhabiting type

induction              Induction principle
recursion              Recursion principle

≡                       Definitional equality
=                       Propositional equality
≃                       Equivalence of types
≈                       Logical equivalence

⊢ P :: proof            P has a proof object
⊢ t : A                 t inhabits type A

□                       End of proof
qed                     End of proof (alternate)

model                   Structure interpreting logic
M ⊨ P                   Model M satisfies P

Kripke frame            Frame for modal logic
◇P                      Possibility
□P                      Necessity

μX. F(X)                Least fixed point
νX. F(X)                Greatest fixed point

normal form             Fully reduced term
canonical form          Canonical representative of type

context Γ               Typing or proof context
weakening               Add unused assumption
contraction             Merge duplicate assumptions
exchange                Reorder assumptions

cut rule                Sequent calculus cut rule
cut elimination         Cut-elimination theorem

⊢ Γ ⇒ Δ                 Sequent
⇒                       Sequent arrow
```

## APPENDIX: Formal Logic, Proof Theory & Deductive Systems 
```
Symbol                  Meaning
------                  -------
p, q, r                 Propositional variables
⊤                      Truth
⊥                      Falsehood
¬p                     Negation
p ∧ q                   Conjunction
p ∨ q                   Disjunction
p → q                   Implication
p ↔ q                   Biconditional

⊢                      Provability
⊨                      Semantic entailment
Γ ⊢ φ                  φ derivable from Γ
Γ ⊨ φ                  φ true in all models of Γ

∀x φ                   Universal quantifier
∃x φ                   Existential quantifier
φ(x)                   Predicate applied to x
R(x,y)                 Binary relation

term                   Element of domain
formula                Logical expression
free variable          Variable not bound by quantifier
bound variable         Variable bound by quantifier

=                      Equality predicate
≠                      Inequality

⊢ φ                    φ is a theorem
⊢ ¬φ                   φ is refutable

modus ponens           Inference rule
p, p→q ⊢ q             MP rule

modus tollens          Inference rule
¬q, p→q ⊢ ¬p           MT rule

intro/elimination      Introduction/elimination rules
∧-intro                Conjunction introduction
∧-elim                 Conjunction elimination
∨-intro                Disjunction introduction
→-intro                Implication introduction
→-elim                 Implication elimination

⊢ φ→ψ                  Deduction theorem
Γ, φ ⊢ ψ  ⇔  Γ ⊢ φ→ψ   Deduction equivalence

sequent calculus        Gentzen-style proof system
Γ ⊢ Δ                  Sequent
cut rule               Cut inference
cut elimination         Cut-elimination theorem

LK                     Classical sequent calculus
LJ                     Intuitionistic sequent calculus

natural deduction       Proof system with intro/elim rules
proof tree              Tree of inference steps

normal form             Normal proof form
β-reduction             Reduction of proof terms
η-expansion             Expansion of proof terms

λ-calculus              Formal system of functions
λx. t                  Lambda abstraction
t u                    Application
α, β, η                Lambda conversion rules

Curry–Howard           Correspondence between proofs and programs
type                   Proposition-as-type
term                   Proof-as-program

⊢ t : A                Term t has type A
A → B                  Function type
A × B                  Product type
A + B                  Sum type

induction              Proof by induction
structural induction    Induction on syntax
recursion              Recursive definition

fixed point            Fixed-point operator
μX. φ(X)               Least fixed point
νX. φ(X)               Greatest fixed point

modal logic            Logic with modalities
□φ                     Necessity
◇φ                     Possibility
Kripke frame           Structure for modal semantics
R                      Accessibility relation

temporal logic         Time-indexed logic
X φ                    Next operator
F φ                    Eventually
G φ                    Globally
U                      Until operator

μ-calculus             Modal fixed-point logic
μX. φ(X)               Least fixed point
νX. φ(X)               Greatest fixed point

soundness              All provable statements are valid
completeness           All valid statements are provable
compactness            Finite satisfiability implies satisfiability

consistency            No contradictions derivable
inconsistency          Contradiction derivable
⊢ ⊥                   Inconsistent theory

model                  Structure interpreting formulas
valuation              Assignment of truth values
satisfiable            Has a model
valid                  True in all models

Herbrand               Herbrand universe
Skolem                 Skolemization
prenex form            Quantifiers moved to front
CNF                    Conjunctive normal form
DNF                    Disjunctive normal form

resolution             Automated inference rule
p∨A, ¬p∨B ⊢ A∨B        Resolution step

proof complexity        Complexity of proofs
proof length            Number of inference steps
cut rank               Rank of cut formula

inference system        Set of rules
axiom                  Base rule
rule schema            Template for rules

provability logic       Logic of formal provability
□φ                     “φ is provable”
Löb                   Löb’s theorem

arithmetization         Encoding syntax into arithmetic
Gödel numbering         Numbering of formulas
incompleteness          Gödel incompleteness theorem
```
