# The HOL family
- 160 Logic
- 511 Symbolic logic
- 511.3 Mathematical logic

This a clear, structured comparison of the HOL family of theorem provers (Isabelle/HOL, HOL4, HOL Light), explaining their common logical foundations (LCF-style classical higher-order logic) and the practical differences in kernel design, type-system extensions, treatment of equality/extensionality, partiality, and automation philosophy.

The group of interactive theorem provers that all implement **classical higher‑order logic (HOL)** following the **LCF architecture**. They share a common logical core but differ in engineering philosophy, automation, libraries, and kernel size.  
The three major members are **Isabelle/HOL**, **HOL4**, and **HOL Light**.

---

## 🧠 What defines the HOL family?

### **LCF architecture**  
All HOL systems follow the LCF approach: a **small trusted kernel** implements the primitive inference rules of higher‑order logic, and all proofs must be constructed through kernel‑checked operations. This ensures soundness even in large systems.  


### **Classical higher‑order logic**  
HOL provers use **classical** simply‑typed higher‑order logic with:  
- Boolean-valued predicates  
- Lambda abstraction  
- Quantifiers  
- Functional extensionality  

### **ML-based implementation**  
All HOL systems are implemented in **Standard ML** or **OCaml**, continuing the tradition from LCF where ML was invented as the meta-language for theorem proving.  

---

## 🏛️ The three major HOL systems

### **Isabelle/HOL**  

- Built on the Isabelle framework, where HOL is an object logic.  
- Strong automation (simp, blast, Sledgehammer).  
- Document-oriented PIDE environment with parallel proof checking.  
- Large libraries and modern IDE support.  

### **HOL4**  

- Direct descendant of the original HOL88 line.  
- Traditional, explicit proof style with powerful libraries.  
- Implemented in Standard ML; kernel replaceable for virtualization.  

### **HOL Light**  

- Minimalistic design with an extremely small kernel.  
- Implemented in OCaml.  
- Focus on mathematical formalization and simplicity.  
- Equality is the only primitive notion; all inference rules built around it.  

---

## 🔍 Shared logical features

All three systems support:

- **Primitive tuples**  
  Built-in product types and tuple constructors (documented in HOL Light tutorial).  
    [hol-light.github.io](https://hol-light.github.io/tutorial/HTML/tutorial.html)

- **Primitive relations**  
  Relations are simply predicates of type `α → β → bool` in HOL.

- **Extensional equality**  
  HOL Light’s kernel explicitly includes congruence and abstraction rules supporting functional extensionality.  

- **Classical logic**  
  All HOL systems use classical higher‑order logic.  

- **Partial functions**  
  Modeled via option types, underspecification, or domain-theoretic extensions (e.g., Isabelle/HOLCF).  
  (HOL Light tutorial shows option-based partiality.)  
    [hol-light.github.io](https://hol-light.github.io/tutorial/HTML/tutorial.html)

---

## 📘 Comparison Table

| System | Logic | Kernel Size | Automation | Libraries | Implementation |
|-------|-------|-------------|------------|-----------|----------------|
| **Isabelle/HOL** | Classical HOL | Medium | Very high | Very large | Poly/ML + Scala |
| **HOL4** | Classical HOL | Medium-small | Moderate | Large | Standard ML |
| **HOL Light** | Classical HOL | Very small | Low–moderate | Medium | OCaml |

**Core takeaway:**  
The three major HOL systems — **Isabelle/HOL**, **HOL4**, and **HOL Light** — share *the same underlying logic*: **classical simply‑typed higher‑order logic with functional extensionality**, but they differ in *how that logic is packaged, engineered, and exposed to the user*.  
Below is a precise, structured comparison of their logical foundations.

---

## 🧩 What all HOL systems share (the common foundation)

- **Simple type theory** — Church-style types, no dependent types.  
- **Classical logic** — law of excluded middle, classical quantifier rules.  
- **Higher‑order quantification** — quantifiers range over functions and predicates.  
- **Functional extensionality** — two functions are equal if they agree on all inputs.  
- **LCF-style kernel** — small trusted core implementing primitive inference rules.  
- **Total functions at the logic level** — partiality is modeled via options or underspecification.  
- **Primitive equality** — equality is built-in, not defined.  

These shared foundations mean that a theorem proved in one HOL system is *logically* portable to the others (though not syntactically).

---

## 🏛️ Key differences in logical foundations

### 1. **Treatment of equality and extensionality**
- **HOL Light**  
  Equality is *the* primitive logical constant. All other logical connectives are defined from it.  
  Extensionality is built into the kernel via specific inference rules.

- **HOL4**  
  Similar to HOL Light, but with a slightly richer primitive rule set.  
  Extensionality is an axiom schema.

- **Isabelle/HOL**  
  Equality is primitive, but Isabelle’s meta-logic adds an additional layer: object-level equality vs meta-level equality.  
  Extensionality is provided as a derived rule and integrated with type classes.

**Impact:** Isabelle’s two-level logic gives it more flexibility in defining new logics, while HOL4/HOL Light stay closer to the original HOL kernel.

---

### 2. **Meta-logic vs object logic**
- **Isabelle/HOL**  
  HOL is *embedded* inside Isabelle’s general logical framework.  
  The meta-logic provides:  
  - Implication and quantification at the meta-level  
  - Structured proof language (Isar)  
  - Type classes and locales  

- **HOL4 / HOL Light**  
  HOL *is* the only logic. No meta-logic layer.  
  Proofs are sequences of kernel-checked inference steps.

**Impact:** Isabelle/HOL supports more expressive proof structuring and modular reasoning; HOL4/HOL Light are more minimalistic and direct.

---

### 3. **Primitive logical constants**
- **HOL Light**  
  Only equality is primitive. Everything else is defined.

- **HOL4**  
  Primitive constants include equality, boolean connectives, and quantifiers.

- **Isabelle/HOL**  
  Primitive constants include equality, implication, quantifiers, and type-class machinery.

**Impact:** HOL Light has the smallest kernel; Isabelle/HOL has the richest logical infrastructure.

---

### 4. **Type system extensions**
- **Isabelle/HOL**  
  - Type classes  
  - Overloading  
  - Ad-hoc polymorphism  
  - Locales for structured assumptions  

- **HOL4**  
  - Limited overloading  
  - No type classes  
  - Polymorphism is ML-style only  

- **HOL Light**  
  - No type classes  
  - Very strict, minimal type system  

**Impact:** Isabelle/HOL is more expressive for algebraic hierarchies; HOL Light is more predictable and minimal.

---

### 5. **Partial functions**
All HOL systems are based on total functions, but partiality is modeled differently:

- **Isabelle/HOL**  
  - Option types  
  - Domain theory via **HOLCF**  
  - Partial function package with well-foundedness automation  

- **HOL4 / HOL Light**  
  - Option types  
  - Underspecified constants  
  - No built-in domain theory  

**Impact:** Isabelle/HOL has the most sophisticated support for partiality and recursion.

## 📘 Summary 

| Feature | **Isabelle/HOL** | **HOL4** | **HOL Light** |
|--------|------------------|----------|---------------|
| Logic | Classical HOL inside meta-logic | Classical HOL | Classical HOL |
| Kernel size | Medium | Small | Very small |
| Primitive constants | Equality, implication, quantifiers | Equality + booleans | Equality only |
| Extensionality | Derived rule | Axiom schema | Kernel rule |
| Type system | Type classes, locales | ML-style polymorphism | Minimal polymorphism |
| Partial functions | Option + HOLCF | Option | Option |
| Philosophy | Rich infrastructure | Traditional HOL | Minimalistic HOL |

**Short takeaway:**  
All HOL provers share the same logical core, but their **automation philosophies diverge sharply**.  
**Isabelle/HOL** is built for *heavy automation*, **HOL4** for *controlled, explicit automation*, and **HOL Light** for *minimalistic, predictable automation*.  
Below is a deep, structured comparison tailored to your analytical style.

---

## ⚙️ The core tension: automation vs kernel trust  
All HOL systems follow the **LCF model**, meaning *only the kernel can create theorems*.  
Automation is therefore always a layer **on top** of the kernel, and each system chooses a different balance between:

- **Automation power**  
- **Predictability**  
- **Kernel minimality**  
- **Proof script readability**  

This is the fundamental axis along which the HOL family diverges.

---

## 🧠 1. Isabelle/HOL — *Automation powerhouse*

**Summary:** Isabelle/HOL is the most automated HOL system by a wide margin.

### Key automation mechanisms
- **Sledgehammer**  
  Integrates external ATPs (E, Vampire, Z3, CVC5).  
  Automatically reconstructs proofs inside Isabelle’s kernel.

- **simp** and **auto**  
  Powerful rewriting + classical reasoning + congruence rules.

- **blast**  
  Tableau-style classical prover.

- **metis**  
  First-order proof reconstruction engine.

- **Nitpick**  
  Counterexample generator using Kodkod.

### Automation philosophy
- *Automation-first*: users expect automation to solve most subgoals.  
- *Proofs are declarative*: Isar proofs describe *what* is true, not *how* to prove it.  
- *Heavy use of type classes and locales* to guide automation.

### Strengths
- Extremely high automation success rate.  
- Ideal for large-scale formalizations (e.g., seL4, CakeML proofs).  
- Proofs are short and readable.

### Weaknesses
- Automation can obscure low-level details.  
- Harder to predict performance in very large goals.

---

## 🧠 2. HOL4 — *Controlled, explicit automation*

**Summary:** HOL4 provides automation, but it is intentionally limited and predictable.

### Key automation mechanisms
- **MESON**  
  First-order prover with limited search.

- **REWRITE_TAC**, **SIMP_TAC**, **ASM_SIMP_TAC**  
  Rewriting and simplification tactics.

- **Classical reasoning tactics**  
  e.g., `PROVE_TAC`, `METIS_TAC` (less powerful than Isabelle’s Metis).

### Automation philosophy
- *User-guided automation*: automation is used sparingly.  
- *Proofs are explicit*: users write ML scripts that specify the proof path.  
- *Predictability*: automation rarely performs deep search.

### Strengths
- Very predictable behavior.  
- Good for industrial verification where explicit control matters.  
- Proof scripts are transparent.

### Weaknesses
- More manual work.  
- Harder to scale to very large formalizations without custom automation.

---

## 🧠 3. HOL Light — *Minimalistic, foundational automation*

**Summary:** HOL Light has the smallest kernel and the most minimal automation.

### Key automation mechanisms
- **REWRITE_TAC**, **SIMP_TAC**, **ARITH_TAC**  
  Basic rewriting and arithmetic.

- **MESON_TAC**  
  A lightweight first-order prover.

- **REAL_ARITH**, **INT_ARITH**  
  Decision procedures for arithmetic.

### Automation philosophy
- *Minimalism*: automation should be simple and mathematically clean.  
- *Kernel purity*: avoid complex automation that risks soundness.  
- *User responsibility*: users build custom automation for large projects.

### Strengths
- Extremely small trusted base.  
- Very predictable and transparent.  
- Ideal for foundational mathematics (e.g., Flyspeck project).

### Weaknesses
- Least automated of the three.  
- Large proofs require custom automation infrastructure.

---

## 📊 Comparison Table — Automation Foundations

| Feature | **Isabelle/HOL** | **HOL4** | **HOL Light** |
|--------|---------------------------|---------------------------|---------------------------|
| Automation level | Very high | Moderate | Low |
| External ATP integration | Extensive (Sledgehammer) | Limited | None |
| Rewriting | Highly engineered | Strong | Minimal |
| Classical reasoning | Strong (blast, auto) | Moderate | Basic |
| Proof style | Declarative | Procedural | Procedural |
| Predictability | Medium | High | Very high |
| Kernel size | Medium | Small | Very small |

---

## 🔍 Insight  
The **real difference** is not the automation *tools* but the **automation philosophy**:

- **Isabelle/HOL**: automation is the *default*, manual proofs are the exception.  
- **HOL4**: automation is a *helper*, manual proofs are the norm.  
- **HOL Light**: automation is a *convenience*, foundational clarity is the priority.

This philosophical divergence explains why Isabelle/HOL excels in large-scale engineering proofs, HOL4 in industrial verification, and HOL Light in foundational mathematics.

**Concise takeaway:**  
All HOL provers share the same *logical* foundation, but their **kernel designs** differ radically in *size*, *primitives*, *trust model*, and *engineering philosophy*.  
HOL Light has the **smallest, purest kernel**, HOL4 has a **traditional but slightly richer kernel**, and Isabelle/HOL has a **layered kernel** due to its meta‑logic framework.

---

## 🧩 What a “HOL kernel” actually is  
A HOL kernel is the **trusted core** that implements the primitive inference rules of classical higher‑order logic.  
It is responsible for:

- Constructing **theorems**  
- Checking **inference rules**  
- Enforcing **typing**  
- Maintaining **soundness**  

Everything else—automation, tactics, proof scripts—is *untrusted* and must call the kernel to produce theorems.

This is the essence of the **LCF architecture**.

---

## 🧠 1. HOL Light — *The minimal kernel*

HOL Light’s kernel is famously tiny: **~400 lines of OCaml**.  
It is the closest living descendant of the original LCF philosophy.

### Kernel characteristics
- **Only equality is primitive**  
- All logical connectives (`∧`, `∨`, `¬`, `⇒`) are *defined*  
- Very small set of primitive inference rules  
- No derived rules baked into the kernel  
- Extremely strict term and type checking  
- No overloading, no type classes, no meta-logic

### Impact
- Maximum trust: tiny kernel = tiny trusted base  
- Predictable behavior  
- Ideal for foundational mathematics (e.g., Flyspeck)  
- Automation must be built externally

---

## 🧠 2. HOL4 — *The traditional HOL kernel*

HOL4’s kernel is larger than HOL Light’s but still compact and faithful to the original HOL88 design.

### Kernel characteristics
- Primitive constants include equality, boolean connectives, quantifiers  
- Extensionality is an **axiom schema**  
- More inference rules are primitive compared to HOL Light  
- ML-style polymorphism  
- Limited overloading  
- No meta-logic layer

### Impact
- More convenient than HOL Light for engineering proofs  
- Still highly trustworthy and explicit  
- Automation is predictable but less minimalistic  
- Good balance between usability and kernel purity

---

## 🧠 3. Isabelle/HOL — *The layered kernel*

Isabelle’s kernel is **not a HOL kernel**.  
It is a kernel for a **generic meta-logic**, and HOL is implemented *on top* of it as an object logic.

### Kernel characteristics
- Meta-logic provides:  
  - Meta-level implication  
  - Meta-level quantification  
  - Proof terms  
  - Contextual reasoning  
- HOL is encoded using Isabelle’s logical framework  
- Type classes, locales, and overloading are supported at the meta-level  
- Extensionality is a **derived rule**, not primitive

### Impact
- Most expressive of the HOL family  
- Supports declarative proofs (Isar)  
- Enables powerful automation (simp, blast, Sledgehammer)  
- Trusted base is larger and more complex  
- HOL is not “hardwired” into the kernel

---

## 📊 Comparison Table — Kernel Design

| Feature | **HOL Light** | **HOL4** | **Isabelle/HOL** |
|--------|-------------------------|-------------------------|-------------------------|
| Kernel size | Very small (~400 LOC) | Small–medium | Medium–large |
| Primitive constants | Equality only | Equality + booleans + quantifiers | Equality + implication + quantifiers (meta-level) |
| Extensionality | Kernel rule | Axiom schema | Derived rule |
| Logic implementation | Direct | Direct | Encoded in meta-logic |
| Overloading | None | Limited | Extensive |
| Type classes | No | No | Yes |
| Proof style | Procedural | Procedural | Declarative (Isar) |
| Trust base | Smallest | Small | Largest |

---

## 🔍Insight  
The **real difference** is not kernel size but **kernel philosophy**:

- **HOL Light**: “Trust as little as possible.”  
- **HOL4**: “Trust a bit more for convenience.”  
- **Isabelle/HOL**: “Trust a framework that can host many logics.”

This explains why Isabelle/HOL excels at automation and modular reasoning, HOL4 at industrial verification, and HOL Light at foundational mathematics.
