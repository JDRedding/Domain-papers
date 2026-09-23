# Relational Power, Evaluation, Dynamics
## **PED Mapping Rules — Core Summary**

**PED(G) = ( P(G), E(G), D(G) )**

with nesting:

**P(G) ⊆ E(G) ⊆ D(G) ⊆ G**

---

## **[1] Power Layer — P(G)**

**Definition:**  
P(G) contains all *energetic, causal, or influence‑bearing* relations that define what the system *can do* before any assessment or evolution.

**Include in P(G):**
- Field strengths, intensities, amplitudes  
- Resource levels (energy, momentum, flux)  
- Causal capacities (what can exert influence)  
- Primitive “push” relations (drives, sources)  
- Any quantity representing *potential to act*

**Formal rule:**  

$$
P(G)=\{\, r\in G \mid r\text{ expresses capacity, intensity, or causal potential}\,\}.
$$

---

## **[2] Evaluation Layer — E(G)**

**Definition:**  
E(G) contains all *assessment, comparison, and moderation* rules describing how power is interpreted, filtered, or judged.

**Include in E(G):**
- Stability checks (Q‑conditions, admissibility)  
- Moderation functions (thresholds, gates, filters)  
- Comparative relations (greater/less, balance, bias)  
- Diagnostic rules (health, score, viability)  
- Any mapping that *interprets* P(G)

**Formal rule:**  

$$
E(G)=\overline{P(G)}^{\,\mathrm{eval}}
$$

i.e. closure of P(G) under evaluation rules.

---

## **[3] Dynamics Layer — D(G)**

**Definition:**  
D(G) contains all *temporal, propagative, and outcome‑producing* relations driven by evaluated power.

**Include in D(G):**
- Update laws (state transitions, propagation)  
- Growth/decay (amplification, damping)  
- Outcome measures (scores, health changes, world‑state shifts)  
- Any relation requiring *evaluated power over time*

**Formal rule:**  
$$
D(G)=\overline{E(G)}^{\,\mathrm{dyn}}
$$

i.e. closure of E(G) under dynamic rules.

---

## **[4] PED Operator Rules**

- **Extensive:**
  
$$
P \subseteq E \subseteq D
$$

- **Idempotent:**
  
$$
P(P(G))=P(G),\quad E(E(G))=E(G),\quad D(D(G))=D(G)
$$

- **Monotone:**
  
$$
G\subseteq H \Rightarrow
P(G)\subseteq P(H),\;
E(G)\subseteq E(H),\;
D(G)\subseteq D(H)
$$

- **Compatible:**
  
$$
P \text{ constrains } E,\qquad
E \text{ constrains } D
$$

---

## **[5] Mapping Algorithm (Practical Use)**

Given any symbol $X$:

1. If $X$ expresses *capacity, intensity, or causal potential* → **P**  
2. If $X$ expresses *assessment, moderation, or comparison* → **E**  
3. If $X$ expresses *temporal unfolding or outcome* → **D**  
4. Enforce nesting: $P \subseteq E \subseteq D$  
5. Enforce idempotence and monotonicity  

---

## **[6] Purpose of PED**

PED cleanly separates:

- What the system *can exert* → **P**  
- How that exertion is *interpreted or moderated* → **E**  
- How interpreted power *drives evolution* → **D**  

This ensures RDG objects remain causally coherent, evaluatively consistent, and dynamically admissible.

---

# **APPENDIX: Mathematical Statements**  
PED rules notation.

### Core object

$$
\mathrm{PED}(G)=\bigl(P(G),\,E(G),\,D(G)\bigr)
$$

with nesting

$$
P(G)\subseteq E(G)\subseteq D(G)\subseteq G.
$$

### Layer definitions

**Power**

$$
P(G)=\{r\in G\mid r\text{ expresses causal capacity or intensity}\}.
$$

**Evaluation**

$$
E(G)=\overline{P(G)}^{\,\mathrm{eval}}
$$

**Dynamics**

$$
D(G)=\overline{E(G)}^{\,\mathrm{dyn}}
$$

### Operator axioms

**Extensive**

$$
P\subseteq E\subseteq D.
$$

**Idempotent**

$$
P(P(G))=P(G),\quad
E(E(G))=E(G),\quad
D(D(G))=D(G).
$$

**Monotone**

$$
G\subseteq H\Rightarrow
P(G)\subseteq P(H),\;
E(G)\subseteq E(H),\;
D(G)\subseteq D(H).
$$

**Compatible**

$$
P\text{ constrains }E,\qquad
E\text{ constrains }D.
$$

### Classification rule for a symbol $X$

$$
X\mapsto
\begin{cases}
P & X\text{ expresses capacity or intensity}\\
E & X\text{ expresses assessment or moderation}\\
D & X\text{ expresses evolution or outcome}
\end{cases}
$$

subject to

$$
P\subseteq E\subseteq D.
$$
