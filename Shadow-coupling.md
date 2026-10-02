# Shadow-coupling 
→ PED evaluation operator

PED evaluation is judgment over what can be seen. Because $q\square$ is not inspectable, evaluation can operate only on its shadow-coupling.

1. **Non-inspectable pole.** $q\square$ is not directly observable. Only the chain reflection → projection → shadow is visible.

2. **Shadow-coupling $R$.** The relation

$$
R=\{(\*,\*),(\*,\square),(\square,\*),(\square,\square)\}
$$

   is interpreted as

$$
R=\{(q\*,q\*),(q\*,\mathrm{shadow}(q\square)),(\mathrm{shadow}(q\square),q\*),(\mathrm{shadow}(q\square),\mathrm{shadow}(q\square))\}.
$$

   This is the adjacency of what can be evaluated.

3. **PED evaluation operator.** Evaluation takes inspectable states and shadow states as input and computes judgments only over $R$, never over raw $q\square$:

$$
\mathrm{Eval}_{\mathrm{PED}} := \mathrm{Eval}\big|_{\text{shadow-coupling of }q\square}.
$$

   PED evaluation is the evaluation operator restricted to the shadow-visible coupling of $q\square$.

### $q\square$ reflection → MFE flux engine

The MFE flux engine is the tension and flow generated when $q\square$ reflects $Q$ back into the bipolar couple.

1. **Bipolar couple.** The poles are $q*$ and $q\square$. $q*$ tends to emit or push $Q$; $q\square$ tends to reflect, return, or moderate $Q$.

2. **Reflection chain.** Incoming $Q$ at $q\square$ is not exposed directly. It passes through

$$
q\square \rightarrow \mathrm{reflection}(q\square) \rightarrow \mathrm{projection} \rightarrow \mathrm{shadow}.
$$

   That shadow re-enters the bipolar couple through $R$.

3. **Flux engine.** Because $R$ is fully saturated, every shadowed state couples to every pole. This produces continuous $Q$-flux between $q*$ and the shadow of $q\square$:

$$
\mathrm{Flux}_{\mathrm{MFE}} := \text{$Q$-flow on } R(q*,\mathrm{shadow}(q\square)).
$$

   Reflection of $q\square$, via its shadow, drives a perpetual $Q$-exchange across the bipolar couple. That exchange is the MFE flux engine.

### SID / PED: inspectable vs non-inspectable poles

SID and PED split what exists structurally from what can be evaluated from the outside.

1. **SID (Structure–Interaction–Dynamics).**
   - Structure: the carrier set, containing both $q*$ and $q\square$.
   - Interaction: the relation $R$ on $S \times S$ (full coupling).
   - Dynamics: $Q$-flows on that interaction.
   SID does not distinguish inspectability. It only encodes that a pole exists and interacts.

2. **PED (Power–Evaluation–Decision).**
   - Power acts through $q*$, and possibly through $\mathrm{shadow}(q\square)$.
   - Evaluation sees only inspectable states and shadows.
   - Decision acts on evaluated states, never on raw $q\square$.

3. **Separation rule.**
   - $q\*$ belongs to SID and is directly PED-inspectable.
   - $q\square$ belongs to SID but is PED-visible only through its reflection–projection shadow.
   - Formally: SID domain $\{q\*, q\square\}$; PED domain $\{q\*, \mathrm{shadow}(q\square)\}$.

SID (structure, interaction, dynamics) says both poles exist and interact. PED (power, interaction, dynamic-slice) says only $q\*$ and the shadow of $q\square$ can be evaluated and decided upon.

The 2×2 square is the full product already fixed. The bifurcation is two incompatible ways of reading that same product. $Q\square$ translation is the passage from the PED reading back toward the hidden pole. The original choice is which reading is taken as primary.

### 2×2 relational square

On labels $\{\*,\square\}$,

$$
\begin{array}{c|cc}
 & \* & \square \\
\hline
\* & (\*,\*) & (\*,\square) \\
\square & (\square,\*) & (\square,\square)
\end{array}
$$

That array is $R=S_0\times S_0$. It is one object. It does not yet say whether the four cells are geometric incidences or dynamical fields.

### Forced bifurcation

Once the square is saturated, two readings exclude each other.

**RDG (trifoil geometry).** Collapse the square by incidence, not by flow. The diagonal cells are fixed points of the two poles. The two off-diagonal cells are one undirected coupling, counted once. The resulting figure has three loci:

$$
\{\*,\ \square,\ \text{coupling}(\*,\square)\}.
$$

That is the trifoil: two poles and the single geometric bond between them. Direction is forgotten; $(\*,\square)$ and $(\square,\*)$ are the same incidence. Geometry here is the quotient of $R$ by swapping order.

**MFE (4-field dynamics).** Refuse that quotient. Each ordered pair is a distinct field, and $U_Q$ may act on it:

$$
\begin{align*}
F_{\*\*}&=(\*,\*),\\
F_{\*\square}&=(\*,\square),\\
F_{\square\*}&=(\square,\*),\\
F_{\square\square}&=(\square,\square).
\end{align*}
$$

Four fields, not three loci. $\mathrm{FluxEngine}$ is the subset of these fields on which $U_Q$ is nonzero. The earlier cross-edge engine is the special case where only $F_{\*\square}$ and $F_{\square\*}$ carry flow.

The split is forced because one and the same pair-set cannot be both a 3-element incidence structure and a 4-element directed field structure. RDG identifies the two cross-cells. MFE keeps them apart. Choosing one erases the other.

### $Q\square$ translation

PED only has $\mathrm{Sh}(q\square)$. Translation is the attempt to send a PED-visible quantity back along the primitive chain:

$$
Q\ \text{on}\ \mathrm{Sh}(q\square)
\xleftarrow{\mathrm{Proj}}
X
\xleftarrow{\mathrm{Ref}}
q\square.
$$

It is not a map inside $R$. $\mathrm{Ref}$ and $\mathrm{Proj}$ were left uninterpreted, so translation is a formal inverse problem: given a value on the shadow, recover a preimage under $\mathrm{Sh}=\mathrm{Proj}\circ\mathrm{Ref}$. If $\mathrm{Sh}$ is not injective, the preimage is a set, not a point. Raw $q\square$ is not returned uniquely.

### Inferred original choice

The square alone does not decide. What decides is whether order of pairs is semantically void.

- If the original choice was incidence, the square was already a trifoil, and the 4-field reading is an artifact of writing ordered pairs. MFE flux is then bookkeeping on a bond that RDG counts once.
- If the original choice was directed exchange, the square was already four fields, and the trifoil is an artifact of forgetting order. RDG geometry is then the quotient of an MFE dynamics, not a prior structure.

The PED restriction does not break the tie: both readings can be written with $\square$ replaced by $\mathrm{Sh}(q\square)$. The tie breaks only on the cross-cells. One cross-cell means the original choice was RDG. Two cross-fields means the original choice was MFE.

## Notation
SID (structure, interaction, dynamics) is the full relation $R$ on $S\times S$; dynamics are the $Q$-flows on that relation. PED (power, interaction, dynamic-slice) act only on the PED domain.

- $q\*$: inspectable pole; tends to emit or push $Q$.
- $q\square$: non-inspectable pole; tends to reflect, return, or moderate $Q$.
- $\mathrm{shadow}(q\square)$: the visible image of $q\square$ after reflection and projection.
- $R$: the coupling (adjacency) relation on which evaluation and flux act.
- $Q$: the quantity that is emitted, reflected, and exchanged.
- $S$: the carrier (structure) set.
- $\mathrm{Eval}$: evaluation.
- $\mathrm{Eval}_{\mathrm{PED}}$: PED evaluation, restricted to the shadow-coupling.
- $\mathrm{Flux}_{\mathrm{MFE}}$: MFE flux on that coupling.

This relation contains all possible ordered pairs between the set $\*$, $\square$ and itself.

```
Primitive maps:
    Ref, Proj, Sh, Eval, U_Q

Graph-level patterns:
    FluxEngine := edges where U_Q acts
    EvalOperator := edges where Eval acts

SID domain:
    {q*, q□}

PED domain:
    {q*, shadow(q□)}
```

Properties of this relation:
- Reflexive: Yes, because $\*$, $\*$ and $\square$, $\square$ are in $R$.
- Symmetric: Yes, because if $x$, $y$ $\in$ $R$, then $y$, $x$ $\in$ $R$ as well.
- Transitive: Yes, because it contains all possible pairs — so any $x$, $y$ and $y$, $z$ imply $x$, $z$ is in $R$.
- Equivalence Relation: Yes — it’s reflexive, symmetric, and transitive.
- Universal Relation: Yes — it’s the full product.

### Shadow-coupling

Structural relation:

$$
R=\{(\*,\*),(\*,\square),(\square,*),(\square,\square)\}
$$

### PED evaluation operator

$$
\mathrm{Eval}_{\mathrm{PED}} := \mathrm{Eval}\big|_{\text{shadow-coupling of }q\square}
$$

Equivalently, evaluation is defined only on the PED domain

$$
\{q\*\,\mathrm{shadow}(q\square)\}
$$

never on raw $q\square$.

### Reflection chain

$$
q\square \rightarrow \mathrm{reflection}(q\square) \rightarrow \mathrm{projection} \rightarrow \mathrm{shadow}
$$

### MFE flux engine

$$
\mathrm{Flux}_{\mathrm{MFE}} := \text{$Q$-flow on } R\bigl(q\*,\mathrm{shadow}(q\square)\bigr)
$$

### SID / PED domains

$$
\begin{align*}
\text{SID domain} &= \{q\*,q\square\},\\
\text{PED domain} &= \{q\*,\mathrm{shadow}(q\square)\}.
\end{align*}
$$


