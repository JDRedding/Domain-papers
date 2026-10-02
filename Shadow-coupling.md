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
\mathrm{Flux}_{\mathrm{MFE}} := \text{$Q$-flow on } R\bigl(q\*,\,\mathrm{shadow}(q\square)\bigr)
$$

### SID / PED domains

$$
\begin{align*}
\text{SID domain} &= \{q\*,\,q\square\},\\
\text{PED domain} &= \{q\*,\,\mathrm{shadow}(q\square)\}.
\end{align*}
$$


