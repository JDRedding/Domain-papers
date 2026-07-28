# The HOL family
Group of interactive theorem provers that all implement **classical higher‑order logic (HOL)** following the **LCF architecture**. They share a common logical core but differ in engineering philosophy, automation, libraries, and kernel size.  
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
