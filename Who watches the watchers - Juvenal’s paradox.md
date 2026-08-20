# **Who watches the watchers?**  
*A formal‑systems perspective on Juvenal’s paradox*

This note delineates how automated theorem provers can rigorously check syntactic correctness but are structurally blind to questions of legitimacy, authority, and real‑world fidelity. Formal systems compute provability (the least fixed point of a derivability operator) and produce ⊢ consequences, but they contain no internal operator to evaluate whether axioms are justified, whether maintainers are authoritative, or whether the formalization matches reality. Semantic consequence (models, satisfaction, ⊨) and soundness/completeness are meta‑level notions outside the prover. As a result, the real “watchers” are the human maintainers who choose, revise, and interpret axioms and rules — the accountability problem is merely relocated to that governance layer. The note closes with a modern restatement: technically, provers can’t prove legitimacy; publicly, distrust concerns stewards, not formalization per se.

---

Automated theorem provers can verify logical proofs but offer no mechanism to evaluate the legitimacy or trustworthiness of individuals who set the foundational axioms. Their domain is **syntactic correctness**, not **epistemic legitimacy**. They enforce structure, not stewardship.

The phrase *“Who watches the watchers?”* originates from Juvenal’s *Quis custodiet ipsos custodes?* (1st–2nd century CE). It asks a timeless question about accountability: **when power is granted to overseers, who ensures they themselves do not abuse it?**

Historically, the phrase highlights the difficulty of constraining those entrusted with enforcement. In modern contexts — government, law enforcement, organizational hierarchies, surveillance systems — it critiques concentrated authority and underscores the need for checks, transparency, and independent oversight.

Formalization does not eliminate discretion; it **relocates** it.  
In computational governance, the maintainers of the formal model become de facto interpreters of law. Public distrust is not about syntax — it is about **stewardship**.

A theorem prover’s scope is formal correctness, not the legitimacy or authority of the axioms’ authors. It can check proofs mechanically while remaining agnostic about who proposes or validates the underlying axioms.

---

## **What theorem provers cannot do**

They have no internal mechanism for assessing:

- **Axiom legitimacy** — whether the axioms are true, justified, or appropriate.  
- **Authority of axiom authors** — whether the people defining the system have legitimate epistemic standing.  
- **Faithfulness to reality** — whether the formalization captures the intended domain.  
- **Epistemic reliability** — whether the foundational choices cohere with evidence or sound reasoning.

These are questions of **epistemic legitimacy**, not formal derivability.

---

## **Syntactic correctness as an inductive closure operator**

Inside a formal system  

$$
\mathcal{F} = (\mathcal{L}, \mathcal{A}, \mathcal{R}),
$$  

the theorem prover computes the **least fixed point** of the derivability operator:

$$
D(S) = S \cup \mathcal{A} \cup 
\{\psi \mid \exists R \in \mathcal{R},\; R(\phi_1,\dots,\phi_k)=\psi,\; \phi_i \in S\}.
$$

The provable formulas are:

$$
\mathrm{Prov}(\mathcal{F}) = \mu S.\, D(S).
$$

A theorem prover’s entire job is checking:

$$
\phi \in \mathrm{Prov}(\mathcal{F}) \quad\text{that is,}\quad \vdash_{\mathcal{F}} \phi.
$$

This is **pure syntax**.

---

## **What the prover cannot see**  
*Formalizing the blindness*

There is **no operator** inside $\mathcal{F}$ that expresses:

- **Legitimacy of axioms**
  
$$
\mathrm{Legit}(\mathcal{A})
$$

- **Authority of maintainers**

$$
\mathrm{Auth}(a)
$$

- **Correspondence to reality**
  
$$
\mathcal{A} \models_{\text{world}} \text{“this matches reality”}
$$

None are definable in the object language $\mathcal{L}$.  
None appear in the inductive definition of $\mathrm{Prov}(\mathcal{F})$.  
None can be checked by the closure operator $D$.

This is the structural meaning of:

> A theorem prover can check proofs mechanically while remaining agnostic about who proposes or validates the underlying axioms.

---

## **Semantic consequence as a meta‑operator**

Semantic consequence lives outside the prover:

$$
\Gamma \models \phi
$$

requires:

- a class of models $\mathcal{M}$,  
- an interpretation function,  
- a satisfaction relation.

The prover computes only $\vdash$, never $\models$.

Soundness and completeness:

$$
\Gamma \vdash \phi \Rightarrow \Gamma \models \phi,
$$

$$
\Gamma \models \phi \Rightarrow \Gamma \vdash \phi,
$$

are **meta‑theorems**, not operations inside $\mathcal{F}$.

---

## **The governance‑layer consequence**

The theorem prover enforces:

$$
\vdash_{\mathcal{F}}
$$

but cannot evaluate:

$$
\mathrm{Legit}(\mathcal{A}),\quad \mathrm{Auth}(a),\quad \mathrm{Justified}(\mathcal{R}).
$$

Therefore:

### **The real “watchers” are the maintainers of $\mathcal{A}$ and $\mathcal{R}$.**

Juvenal’s question becomes:

> **Who governs the choice, revision, and interpretation of the axioms and rules?**

This limitation is not a flaw — it is intrinsic to formal systems.  
Axioms and logical frameworks remain **community responsibilities**, outside the machine’s checking power. The prover is deliberately **structurally blind** to those external judgments.

---

## **The modern restatement**

- **Technical‑systems version**  
  A theorem prover can prove theorems, but it cannot prove legitimacy. The maintainers of the formal model become a new governance class, and the accountability problem reappears one layer higher.

- **Public‑trust version**  
  People aren’t disillusioned because laws aren’t formalized — they’re disillusioned because they don’t trust the stewards. Any formal system still needs a credible way to oversee the overseers.

Formal systems can expose discretion, but they cannot eliminate it. Oversight remains a human responsibility — and relocation is not resolution.

In the end, formal systems give us impeccable mechanisms for verifying derivations, but no machinery for adjudicating the legitimacy of those who define the systems themselves. Theorem provers can certify that a conclusion follows from a rule, yet remain silent on whether the rule ought to exist, whether its authors should be trusted, or whether the formalization faithfully reflects the world it claims to model. This is the enduring force of Juvenal’s question: **oversight cannot be automated, only relocated**. The governance layer — those who choose, revise, and interpret axioms — remains the true locus of authority, and no amount of syntactic rigor can substitute for trustworthy stewards. **Relocation is not resolution**, and the responsibility for watching the watchers ultimately returns to human institutions, not formal logic.
