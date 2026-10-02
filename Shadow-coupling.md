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
   - $q*$ belongs to SID and is directly PED-inspectable.
   - $q\square$ belongs to SID but is PED-visible only through its reflection–projection shadow.
   - Formally: SID domain $\{q*, q\square\}$; PED domain $\{q*, \mathrm{shadow}(q\square)\}$.

SID says both poles exist and interact. PED says only $q*$ and the shadow of $q\square$ can be evaluated and decided upon.
