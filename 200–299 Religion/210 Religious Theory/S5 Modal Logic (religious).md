# S5 Modal Logic

S5 is the strongest of the standard normal systems of modal logic. In religious theory it is often employed because it treats necessity and possibility as absolute rather than relative, making it suitable for claims about the necessary existence or essential attributes of the divine. S5 is frequently used when theorizing about divine attributes that are held to hold necessarily (for example, necessary existence, essential goodness, or maximal greatness). Under S5, if a being with such attributes is possible, then it exists in every possible world. Weaker modal systems do not license this inference, so the choice of S5 is often a point of discussion when evaluating modal claims about the divine.

## Semantics

S5 is characterized by Kripke frames whose accessibility relation is an equivalence relation (reflexive, symmetric, and transitive). In the interpretation most commonly used in religious theory, accessibility is universal: every world is accessible from every other world. The frame therefore collapses to a single equivalence class of possible worlds.

- $\Box\phi$ means “$\phi$ is true in every possible world.”
- $\Diamond\phi$ means “$\phi$ is true in at least one possible world.”

## Core Axioms

S5 can be axiomatized in several equivalent ways. The most common is **KT5**:

1. **K** (Distribution)  
   $\Box(\phi \to \psi) \to (\Box\phi \to \Box\psi)$

2. **T** (Reflexivity)  
   $\Box\phi \to \phi$

3. **5** (Euclidean / characteristic S5 axiom)  
   $\Diamond\phi \to \Box\Diamond\phi$

## Quick Reference

| Axiom | Formula                                      | Intuitive meaning                        | Frame condition |
|-------|----------------------------------------------|------------------------------------------|-----------------|
| K     | $\Box(\phi\to\psi)\to(\Box\phi\to\Box\psi)$ | Necessitation distributes over implication | —               |
| T     | $\Box\phi\to\phi$                          | What is necessary is true                | Reflexive       |
| 4     | $\Box\phi\to\Box\Box\phi$                  | Necessity is itself necessary            | Transitive      |
| B     | $\phi\to\Box\Diamond\phi$                  | What is true is necessarily possible     | Symmetric       |
| 5     | $\Diamond\phi\to\Box\Diamond\phi$          | Possibility is itself necessary          | Euclidean       |

S5 comprises any axiomatization that generates all of the above.

Equivalent packages include:

- **K + T + 4 + B**  
  - **4** (Transitivity): $\Box\phi \to \Box\Box\phi$  
  - **B** (Symmetry): $\phi \to \Box\Diamond\phi$

- Or simply **K + T + 5**

From these axioms the following equivalences are derivable:

$$
\Box\phi \leftrightarrow \Box\Box\phi \leftrightarrow \Diamond\Box\phi
$$

$$
\Diamond\phi \leftrightarrow \Diamond\Diamond\phi \leftrightarrow \Box\Diamond\phi
$$

Once a proposition is possible it is necessarily possible, and once it is necessary it is necessarily necessary. Modal status does not vary across worlds.

