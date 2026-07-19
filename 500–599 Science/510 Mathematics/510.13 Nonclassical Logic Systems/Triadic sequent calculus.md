# Triadic sequent calculus

### Sequent form

A **triadic sequent** is written:

$$\Gamma \;\vdash_{\tau}\; \Delta$$

- **$$\(\Gamma\)$$**: multiset of formulas (antecedent)  
- **$$\(\Delta\)$$**: multiset of formulas (succedent)  
- **$$\(\tau \in [0,1]\)$$**: *triadic validity grade* (how strongly $$\(\Gamma\)$$ supports $$\(\Delta\))$$

Classical sequents are the special case $$\(\tau = 1\)$$.

---

### Semantic clause (core idea)

Given truth space $$\(\mathcal{T} = \{0,1\} \cup [0.1,0.9]\)$$:

For a sequent $$\(\Gamma \vdash_{\tau} \Delta\)$$:

- Evaluate each formula $$\(A \in \Gamma \cup \Delta\) to a value \(v(A) \in \mathcal{T}\)$$.  
- Define:

$$
V_{\Gamma} = \min_{A \in \Gamma} v(A), \quad
V_{\Delta} = \max_{B \in \Delta} v(B)
$$

Then the **sequent validity grade** is:

$$
\text{Val}(\Gamma \vdash \Delta) = 
\begin{cases}
1 & V_{\Gamma} \le V_{\Delta} \\
1 - (V_{\Gamma} - V_{\Delta}) & V_{\Gamma} > V_{\Delta}
\end{cases}
$$

The sequent holds at level $$\(\tau\)$$ iff:

$$
\text{Val}(\Gamma \vdash \Delta) \ge \tau
$$

---

### Structural rules (triadic versions)

All structural rules preserve or *lower* $$\(\tau\)$$, never raise it.

**Weakening:**

- **Left:** $$\(\Gamma \vdash_{\tau} \Delta \Rightarrow \Gamma, A \vdash_{\tau} \Delta\)$$
  
- **Right:** $$\(\Gamma \vdash_{\tau} \Delta \Rightarrow \Gamma \vdash_{\tau} \Delta, B\)$$

**Contraction:**

- **Left:**  $$\(\Gamma, A, A \vdash_{\tau} \Delta \Rightarrow \Gamma, A \vdash_{\tau} \Delta\)$$ 
- **Right:**  $$\(\Gamma \vdash_{\tau} \Delta, B, B \Rightarrow \Gamma \vdash_{\tau} \Delta, B\)$$

**Exchange:** usual permutation on both sides.

---

### Logical rules (matching connectives)

Use triadic operators as the semantic backbone.

#### Negation (¬)

**Left ¬:**

From $$\(\Gamma \vdash_{\tau} \Delta, A\)$$ infer $$\(\neg A, \Gamma \vdash_{\tau'} \Delta\)$$ with $$\(\tau' \le \tau\)$$ determined by:

$$
v(\neg A) = 1 - v(A)
$$

#### Conjunction (∧)

**Left ∧:**

From $$\(\Gamma, A \land B \vdash_{\tau} \Delta\)$$ infer $$\(\Gamma, A, B \vdash_{\tau'} \Delta\)$$ with:

$$
v(A \land B) = \min(v(A), v(B))
$$

**Right ∧:**

From $$\(\Gamma \vdash_{\tau_1} \Delta, A\)$$ and $$\(\Gamma \vdash_{\tau_2} \Delta, B\)$$ infer:

$$
\Gamma \vdash_{\tau'} \Delta, A \land B
$$

with $$\(\tau' \le \min(\tau_1, \tau_2)\)$$.

#### Disjunction (∨)

**Left ∨:**

From $$\(\Gamma, A \vdash_{\tau_1} \Delta\)$$ and $$\(\Gamma, B \vdash_{\tau_2} \Delta\)$$ infer:

$$
\Gamma, A \lor B \vdash_{\tau'} \Delta
$$

with $$\(\tau' \le \min(\tau_1, \tau_2)\)$$.

**Right ∨:**

From $$\(\Gamma \vdash_{\tau} \Delta, A, B\)$$ infer:

$$
\Gamma \vdash_{\tau'} \Delta, A \lor B
$$

with:

$$
v(A \lor B) = \max(v(A), v(B))
$$

#### Implication (→)

**Right → (triadic modus ponens core):**

From $$\(\Gamma, A \vdash_{\tau_1} \Delta, B\)$$ infer:

$$
\Gamma \vdash_{\tau'} \Delta, A \to B
$$

with:

$$
v(A \to B) =
\begin{cases}
1 & v(A) = 0 \text{ or } v(A) \le v(B) \\
1 - (v(A) - v(B)) & v(A) > v(B)
\end{cases}
$$

**Left → (triadic MT‑style):**

From $$\(\Gamma \vdash_{\tau_1} \Delta, A\)$$ and $$\(\Gamma, B \vdash_{\tau_2} \Delta\)$$ infer:

$$
\Gamma, A \to B \vdash_{\tau'} \Delta
$$

with $$\(\tau' \le \min(\tau_1, \tau_2)\)$$.

---

### Identity and cut

**Identity (Ax):**

$$
A \vdash_{1} A
$$

for all formulas $$\(A\)$$.

**Cut (graded):**

From $$\(\Gamma \vdash_{\tau_1} \Delta, A\)$$ and $$\(\Gamma, A \vdash_{\tau_2} \Delta\)$$ infer:

$$
\Gamma \vdash_{\tau'} \Delta
$$

with $$\(\tau' \le \min(\tau_1, \tau_2)\)$$.

---

### Summary

- Sequents carry a **validity grade** $$\(\tau\)$$ in $$\([0,1]\)$$.  
- Validity is computed from min(antecedent), max(succedent) using the triadic implication profile.  
- Structural rules preserve or lower $$\(\tau\)$$.  
- Logical rules are directly induced by triadic connectives (¬, ∧, ∨, →).  
- Classical sequent calculus is recovered when all values are in $$\(\{0,1\}\)$$ and $$\(\tau = 1\)$$.
