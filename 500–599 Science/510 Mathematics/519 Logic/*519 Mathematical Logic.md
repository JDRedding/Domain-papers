# Mathematical Logic
- 519 Mathematical Logic

This document gives a orthodox reference set for classical logic — syntax, semantics, Hilbert systems, Gentzen LK, modal logics, metatheorems, and standard notation. Below is a compact but reasonably complete catalogue of the core **notation**, **formation rules**, **axiom schemas**, **inference rules**, **semantic clauses**, and **metatheorems** of classical mathematical logic (propositional, first-order, and the most common modal systems). Notation is standardized to the most widely used modern conventions; equivalent older symbols are noted where they still appear. 

This document is a formal object: a classical logic specification. Can present any foundational logic module, the same way prover software presents its core kernel. This list is the “working toolkit” that appears in virtually every textbook of mathematical logic. Many further systems (intuitionistic, linear, relevant, fuzzy, higher-order, infinitary, $\ldots$ reuse the same connective and quantifier notation and simply change the axioms or the structural rules of the sequent calculus.

---

## 1. Syntax

Connectives, strongest to weakest binding (common convention; parentheses still win):

$$
\lnot,\quad \land,\quad \lor,\quad \to,\quad \leftrightarrow
$$

Definitions:

$$
\top \;\equiv\; p\lor\lnot p,\qquad
\bot \;\equiv\; p\land\lnot p,\qquad
\varphi\leftrightarrow\psi \;\equiv\; (\varphi\to\psi)\land(\psi\to\varphi).
$$

Existential quantifier, if not primitive:

$$
\exists x\,\varphi \;\equiv\; \lnot\forall x\,\lnot\varphi.
$$

**Terms.** Variables and constants are terms; if $f$ is $n$-ary and $t_1,\dots,t_n$ are terms, so is $f(t_1,\dots,t_n)$.

**Formulas.** Atoms are $t_1=t_2$ and $P(t_1,\dots,t_n)$. Closed under $\lnot$, binary connectives, and $\forall x$, $\exists x$.

**Substitution.** $\varphi[t/x]$ is legitimate only when $t$ is *free for* $x$ in $\varphi$ (no free variable of $t$ becomes bound).

**Sequent.** $\Gamma\vdash\Delta$ means: the conjunction of $\Gamma$ yields the disjunction of $\Delta$.

---

## 2. Propositional Hilbert system

A complete Łukasiewicz-style basis with primitive $\to,\lnot$:

$$
\begin{align*}
\text{(A1)}&\quad \varphi\to(\psi\to\varphi)\\
\text{(A2)}&\quad (\varphi\to(\psi\to\chi))\to((\varphi\to\psi)\to(\varphi\to\chi))\\
\text{(A3)}&\quad (\lnot\psi\to\lnot\varphi)\to(\varphi\to\psi)
\end{align*}
$$

Rule: modus ponens

$$
\frac{\varphi\qquad\varphi\to\psi}{\psi}
$$

Mendelson’s third axiom is different but also complete with (A1)–(A2):

$$
(\lnot\varphi\to\lnot\psi)\to((\lnot\varphi\to\psi)\to\varphi).
$$

**Deduction theorem.**

$$
\Gamma,\varphi\vdash\psi \quad\iff\quad \Gamma\vdash\varphi\to\psi.
$$

---

## 3. First-order Hilbert extension

Quantifier axioms (Enderton/Mendelson style):

$$
\begin{align*}
\text{(Q1)}&\quad \forall x\,\varphi\to\varphi[t/x]
&&\text{$t$ free for $x$ in $\varphi$}\\
\text{(Q2)}&\quad \forall x\,(\varphi\to\psi)\to(\varphi\to\forall x\,\psi)
&&\text{$x$ not free in $\varphi$}
\end{align*}
$$

If $\exists$ is primitive:

$$
\varphi[t/x]\to\exists x\,\varphi
\qquad\text($t$ free for $x$).
$$

Equality:

$$
x=x,\qquad
x=y\to\bigl(\varphi\to\varphi[y/x]\bigr)
\quad\text{($\varphi$ atomic; then extend by replacement).}
$$

Rules: MP and generalization

$$
\frac{\varphi}{\forall x\,\varphi}
$$

Side condition if $\Gamma$ may contain open formulas: $x$ not free in any undischarged assumption from $\Gamma$.

---

## 4. Tarski semantics

A structure $\mathfrak{M}$ has nonempty domain $|\mathfrak{M}|$ and interpretations of the nonlogical symbols. An assignment $s$ maps variables into $|\mathfrak{M}|$.

$$
\begin{align*}
\mathfrak{M}\models t_1=t_2[s]
&\iff t_1^{\mathfrak{M},s}=t_2^{\mathfrak{M},s},\\
\mathfrak{M}\models P(t_1,\dots,t_n)[s]
&\iff (t_1^{\mathfrak{M},s},\dots,t_n^{\mathfrak{M},s})\in P^{\mathfrak{M}},\\
\mathfrak{M}\models\lnot\varphi[s]
&\iff \mathfrak{M}\not\models\varphi[s],\\
\mathfrak{M}\models(\varphi\land\psi)[s]
&\iff \mathfrak{M}\models\varphi[s]\text{ and }\mathfrak{M}\models\psi[s],
\end{align*}
$$

and likewise for $\lor,\to$. Quantifiers:

$$
\begin{align*}
\mathfrak{M}\models\forall x\,\varphi[s]
&\iff \forall a\in|\mathfrak{M}|,\;
\mathfrak{M}\models\varphi[s(x\mapsto a)],\\
\mathfrak{M}\models\exists x\,\varphi[s]
&\iff \exists a\in|\mathfrak{M}|,\;
\mathfrak{M}\models\varphi[s(x\mapsto a)].
\end{align*}
$$

$$
\models\varphi \iff \text{every structure and assignment satisfies $\varphi$},\qquad
\Gamma\models\varphi \iff \text{every model of $\Gamma$ models $\varphi$}.
$$

---

## 5. Sequent calculus LK

**Identity.**

$$
\varphi\vdash\varphi
$$

**Cut.**

$$
\frac{\Gamma\vdash\Delta,\varphi \qquad \varphi,\Sigma\vdash\Pi}{\Gamma,\Sigma\vdash\Delta,\Pi}
$$

**Logical rules.**

$$
\begin{align*}
(\land\mathrm{L})&\quad
\frac{\Gamma,\varphi\vdash\Delta}{\Gamma,\varphi\land\psi\vdash\Delta}
\quad
\frac{\Gamma,\psi\vdash\Delta}{\Gamma,\varphi\land\psi\vdash\Delta}
\\
(\land\mathrm{R})&\quad
\frac{\Gamma\vdash\Delta,\varphi \qquad \Gamma\vdash\Delta,\psi}{\Gamma\vdash\Delta,\varphi\land\psi}
\\
(\lor\mathrm{L})&\quad
\frac{\Gamma,\varphi\vdash\Delta \qquad \Gamma,\psi\vdash\Delta}{\Gamma,\varphi\lor\psi\vdash\Delta}
\\
(\lor\mathrm{R})&\quad
\frac{\Gamma\vdash\Delta,\varphi}{\Gamma\vdash\Delta,\varphi\lor\psi}
\quad
\frac{\Gamma\vdash\Delta,\psi}{\Gamma\vdash\Delta,\varphi\lor\psi}
\\
(\to\mathrm{L})&\quad
\frac{\Gamma\vdash\Delta,\varphi \qquad \Sigma,\psi\vdash\Pi}{\Gamma,\Sigma,\varphi\to\psi\vdash\Delta,\Pi}
\\
(\to\mathrm{R})&\quad
\frac{\Gamma,\varphi\vdash\Delta,\psi}{\Gamma\vdash\Delta,\varphi\to\psi}
\\
(\lnot\mathrm{L})&\quad
\frac{\Gamma\vdash\Delta,\varphi}{\Gamma,\lnot\varphi\vdash\Delta}
\\
(\lnot\mathrm{R})&\quad
\frac{\Gamma,\varphi\vdash\Delta}{\Gamma\vdash\Delta,\lnot\varphi}
\\
(\forall\mathrm{L})&\quad
\frac{\Gamma,\varphi[t/x]\vdash\Delta}{\Gamma,\forall x\,\varphi\vdash\Delta}
\\
(\forall\mathrm{R})&\quad
\frac{\Gamma\vdash\Delta,\varphi[y/x]}{\Gamma\vdash\Delta,\forall x\,\varphi}
\quad\text{\(y\) eigenvariable: not free in the conclusion}
\\
(\exists\mathrm{L})&\quad
\frac{\Gamma,\varphi[y/x]\vdash\Delta}{\Gamma,\exists x\,\varphi\vdash\Delta}
\quad\text{\(y\) eigenvariable}
\\
(\exists\mathrm{R})&\quad
\frac{\Gamma\vdash\Delta,\varphi[t/x]}{\Gamma\vdash\Delta,\exists x\,\varphi}
\end{align*}
$$

**Structural rules.** Weakening, contraction, exchange on either side.

**Hauptsatz.** Every LK-derivation converts to a cut-free one.

LJ (intuitionistic) is LK with at most one formula on the right.

---

## 6. Normal modal logics

$$
\Diamond\varphi \;\equiv\; \lnot\Box\lnot\varphi.
$$

**K:** classical tautologies +

$$
\Box(\varphi\to\psi)\to(\Box\varphi\to\Box\psi)
$$

plus MP and necessitation $\vdash\varphi\Rightarrow\vdash\Box\varphi$.

| Axiom | Schema | Frame condition |
|---|---|---|
| T | $\Box\varphi\to\varphi$ | reflexive |
| D | $\Box\varphi\to\Diamond\varphi$ | serial |
| 4 | $\Box\varphi\to\Box\Box\varphi$ | transitive |
| B | $\varphi\to\Box\Diamond\varphi$ | symmetric |
| 5 | $\Diamond\varphi\to\Box\Diamond\varphi$ | Euclidean |

$$
\text{T}=\text{K}+\text{T},\quad
\text{S4}=\text{K}+\text{T}+4,\quad
\text{S5}=\text{K}+\text{T}+5
\;(\equiv\; \text{K}+\text{T}+4+\text{B}).
$$

Kripke:

$$
\begin{align*}
\mathfrak{M},w\models\Box\varphi
&\iff \forall v\,(wRv\Rightarrow \mathfrak{M},v\models\varphi),\\
\mathfrak{M},w\models\Diamond\varphi
&\iff \exists v\,(wRv\land \mathfrak{M},v\models\varphi).
\end{align*}
$$

S5: $R$ is an equivalence relation.

---

## 7. Metatheorems (classical FOL)

**Soundness.** $\Gamma\vdash\varphi\implies\Gamma\models\varphi$.

**Completeness (Gödel 1929).** $\Gamma\models\varphi\implies\Gamma\vdash\varphi$.  
Equivalently: a set of sentences is consistent iff it has a model.

**Compactness.** $\Gamma\models\varphi$ already for some finite $\Gamma_0\subseteq\Gamma$.  
Equivalently: if every finite subset of $\Gamma$ has a model, so does $\Gamma$.

**Löwenheim–Skolem.**  
Downward: a countable theory with an infinite model has a countably infinite model (countable language is the real hypothesis).  
Upward: an infinite model yields models of every larger infinite cardinality.

**First incompleteness.** If $T$ is consistent, recursively axiomatizable, and interprets enough arithmetic ($Q$ or PA), there is a sentence $G_T$ with

$$
T\nvdash G_T\qquad\text{and}\qquad T\nvdash\lnot G_T.
$$

If $T$ is sound, $G_T$ is true in $\mathbb{N}$.

**Second incompleteness.** $T\nvdash\mathrm{Con}(T)$, where $\mathrm{Con}(T)=\lnot\mathrm{Prov}_T(\ulcorner 0=1\urcorner)$, provided $T$ is consistent and strong enough for the Hilbert–Bernays–Löb derivability conditions.

**Diagonal lemma.** For any $\psi(x)$ there is $\varphi$ with

$$
T\vdash\varphi\leftrightarrow\psi(\ulcorner\varphi\urcorner).
$$

---

## Future Work
- Natural deduction (NJ/NK), prenex/Skolem/Herbrand, resolution, interpolation (Craig), definability (Beth), and the distinction between *theories of sentences* vs open-formula deduction with Gen.
- **Downward LS** needs a countable *language*, not merely a “countable theory” in the informal sense.
- **Second incompleteness** needs representability of the provability predicate and the derivability conditions, not only “extension of $Q$”.

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
