## **Event Space / Narrative Space**
Formal Model for History and Historical Studies

### 1. Event Space

$$
E = \{e_1, e_2, \dots, e_n\}
$$

(the set of historical events under consideration).

Each event is a tuple

$$
e_i = (x_i, t_i, a_i, w_i),
$$

where
- $x_i$ is geographic location,
- $t_i$ is time,
- $a_i$ is the set of actors involved,
- $w_i$ collects event attributes (type, scale, material traces, documentary status, etc.).

Thus

$$
E = \{(x, t, a, w)\}
$$

(a spacetime-event collection).

### 2. Selection

$$
S : E \to E_S, \qquad E_S \subseteq E.
$$

$S$ extracts the subset of events admitted into a given historical narrative (archival, evidentiary, or theoretical selection).

### 3. Ordering

$$
O : E_S \to \mathbb{N}
$$

assigns each selected event a narrative position. The chronological special case is

$$
t_i < t_j \implies O(e_i) < O(e_j).
$$

### 4. Narrative Space as Graph

$$
N = (V, L),
$$

where

$$
V = E_S, \qquad L \subseteq V \times V.
$$

Vertices are selected events; edges are interpretive links (causal, thematic, symbolic, memorial, or other). An edge $(e_i, e_j)$ need not respect geographic or chronological proximity.

### 5. Emplotment

$$
P : N \to N'
$$

transforms the event graph into a coherent narrative structure. Classic examples (following White) include

$$
N_{\mathrm{tragic}} = P_T(N), \quad
N_{\mathrm{comic}} = P_C(N), \quad
N_{\mathrm{romance}} = P_R(N).
$$

The underlying events remain fixed; only the relational structure changes.

### 6. Spatial Densities
Event density (what occurred where):

$$
\rho(x) = \sum_i \delta(x - x_i).
$$

Narrative importance (what a given narrative highlights):

$$
\nu(x) = \sum_i \alpha_i \delta(x - x_i),
$$

where $\delta$ is the Dirac delta and $\alpha_i$ is the narrative weight produced by the composition of $S$, $O$, and $P$. Maxima of $\rho$ and $\nu$ need not coincide.

### 7. Compact Composition

$$
N = (P \circ O \circ S)(E)
$$

or, more briefly,

$$
\text{Narrative Space} = \Gamma(\text{Selected Event Space}).
$$

### 8. Relational Reformulation (Optional)
An event may be treated as a relational intersection

$$
e = (R_S, R_T, R_A, R_C),
$$

where the components are spatial, temporal, actor, and contextual relations respectively. Then

$$
E_R = \{R\}, \qquad \Gamma : E_R \to N_R.
$$

### 9. Mapping to Quantitative Methods
- GIS coordinates $\leftrightarrow x_i$
- Kernel density estimation $\leftrightarrow \rho(x)$
- Network / graph analysis $\leftrightarrow N = (V, L)$
- Space syntax $\leftrightarrow$ structural context of locations used by $S$ or $L$
- Agent-based simulation $\leftrightarrow$ dynamic generation of events
- Narrative operators $\leftrightarrow S$, $O$, $P$ (historiographical construction)

---

### Refined Model

**Core composition**

$$
N = (P \circ O \circ S)(E).
$$

Disagreements among historians typically localize to a single operator: identical $E$, $S$, and $O$ but distinct emplotments $P_A \neq P_B$ yield different meanings from the same evidence; identical $P$ and $O$ but distinct selections $S_A \neq S_B$ produce disputes of inclusion or omission.

**Scale operator (Braudel-style)**  
Let $\sigma \in \Sigma$ be an observational scale. Then

$$
S_\sigma : E \to E_{S,\sigma}, \qquad
N_\sigma = (P_\sigma \circ O_\sigma \circ S_\sigma)(E).
$$

Illustrative values:
- $\sigma_{\mathrm{individual}}$ — personal correspondence, micro-events;
- $\sigma_{\mathrm{conjunctural}}$ — medium-term cycles;
- $\sigma_{\mathrm{civilization}}$ — *longue durée*, demographic or trade systems.

**Narrative competition (phase space)**

$$
\mathfrak{N} = \{N_1, N_2, \dots, N_k\}, \qquad
N_i = (P_i \circ O_i \circ S_i)(E).
$$

A graph distance $d(N_i, N_j) = d_G(N_i, N_j)$ measures relative proximity without presupposing unique correctness.

**Constraint operator (Ricœur-style intelligibility)**  
Let $\Omega$ be the set of admissible link configurations. Require $L \in \Omega$. Emplotment is then restricted:

$$
P : \Omega \to N'
$$

rather than an unrestricted map on arbitrary graphs. Not every configuration of events constitutes a recognizable historical narrative.

**Category-theoretic view (optional)**  
Treat event configurations as objects of a category $E$. A narrative is a morphism

$$
\eta : E_1 \to E_2.
$$

Objects are event structures; morphisms are structure-preserving (or distinction-suppressing) maps; interpretation is a functorial operation.

**Relational / distinction form**  
Events as relational configurations

$$
e = (R_S, R_T, R_A, R_C).
$$

Narrative as a distinction generator

$$
D : (R_S, R_T, R_A, R_C) \mapsto (R'_S, R'_T, R'_A, R'_C), \qquad
N = D(E).
$$

Event space is a field of potential distinctions; narrative space is a realized distinction structure.

**Compact research-level form**

$$
N_\sigma = (P_{\Omega,\sigma} \circ O_\sigma \circ S_\sigma)(E),
$$

where
- $E$ is event space,
- $S_\sigma$ is scale-dependent selection,
- $O_\sigma$ is scale-dependent ordering,
- $P_{\Omega,\sigma}$ is constrained (intelligible) emplotment at scale $\sigma$,
- $N_\sigma$ is the resulting narrative space at that scale.

### Compatibility Notes
- GIS / kernel density $\leftrightarrow \rho(x)$ versus $\nu(x)$ (weighted narrative emphasis).
- Network analysis $\leftrightarrow$ graph $N = (V, L)$ with distances $d_G$.
- Space syntax $\leftrightarrow$ structural accessibility of locations used by $S$ or $L$.
- Multiple historians $\leftrightarrow$ elements of the phase space $\mathfrak{N}$.
- White’s emplotment $\leftrightarrow$ distinct operators $P$.
- Ricœur’s mediation $\leftrightarrow$ constraint set $\Omega$ together with morphisms.
- Braudel’s scales $\leftrightarrow$ the family $\{N_\sigma\}$.
