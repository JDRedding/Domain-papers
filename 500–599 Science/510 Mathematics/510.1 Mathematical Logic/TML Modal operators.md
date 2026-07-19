# Modal operators
Triadic modal logic extension

---
Language extends with:

- **□A** — triadic necessity  
- **◇A** — triadic possibility  

Both evaluated over the truth space $$\(\mathcal{T} = \{0,1\} \cup [0.1,0.9]\)$$.

---

## Triadic Kripke frame

A **triadic modal frame** is:

$$
\mathcal{F} = \langle W, R, v \rangle
$$

- **$$\(W\)$$**: set of worlds  
- **$$\(R \subseteq W \times W\)$$**: accessibility relation (can be non‑symmetric, non‑transitive—quantum/triadic friendly)  
- **$$\(v: W \times \text{Formulas} \to \mathcal{T}\)$$**: valuation in each world

---

## Semantics of □ and ◇

At world $$\(w\)$$:

- **Necessity:**

$$
v(w, \Box A) = \min_{w' : w R w'} v(w', A)
$$

- **Possibility:**

$$
v(w, \Diamond A) = \max_{w' : w R w'} v(w', A)
$$

So:

- □A is as true as the *least* true instance of A in accessible worlds  
- ◇A is as true as the *most* true instance of A in accessible worlds  

This matches triadic ∧/∨ (min/max) and stays continuous.

---

## Triadic modal axioms (graded)

Can keep K‑style patterns, but now **graded**:

- **K□ (distribution):**

$$
\Box(A \to B) \land \Box A \to \Box B
$$

evaluated with the triadic → and ∧.

- **Duality:**

$$
\Diamond A \leftrightarrow \neg \Box \neg A
$$

using the triadic ¬ and ↔.

- Optional frame conditions (T, 4, 5) become **constraints on R** plus **inequalities on v** (e.g. reflexivity → $$\(v(w,\Box A) \le v(w,A)\))$$.

---

### Triadic modal sequent style

Extend sequents:

$$
\Gamma \vdash_{\tau} \Delta
$$

with rules:

**□‑Right:** From $$\(\Gamma \vdash_{\tau} \Delta, A\)$$ in all $$\(w'\)$$ with $$\(w R w'\)$$, infer:

$$\Gamma \vdash_{\tau'} \Delta, \Box A$$

with $$\(\tau' \le \tau\)$$ based on the min over worlds.

**◇‑Left:** From $$\(\Gamma, A \vdash_{\tau} \Delta\)$$ in some $$\(w'\)$$ with $$\(w R w'\)$$, infer:

$$\Gamma, \Diamond A \vdash_{\tau'} \Delta$$

with $$\(\tau' \le \tau\)$$ based on the max over worlds.

---

## Summary

- □ uses **min over accessible worlds** (triadic necessity).  
- ◇ uses **max over accessible worlds** (triadic possibility).  
- Everything stays inside $$\(\mathcal{T}\)$$, respects min/max connectives, and embeds classical modal logic when values are {0,1}.
