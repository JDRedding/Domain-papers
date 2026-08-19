# **Throwaway API pattern**
**Formalization**

This is exactly the mathematical characterization of the throwaway pattern: an ephemeral projection $M:D\times P\to A$ with no underlying durable contract $F$, so the whole “API strategy” is bound to the volatility of the agent ecosystem $P$. The notation is already precise; the only optional extension is to introduce an explicit versioning operator on $F$ (e.g. $F_v$) to make the contrast with foundational APIs even sharper. The notation is clear and correctly captures the structural distinction. Here is a tightened, self-contained version with consistent symbols and a few clarifying additions.

### 1. Setup

Let:

- $D$ = domain model (resources, operations, invariants)
- $F$ = foundational API (durable, versioned, documented contract, e.g. OpenAPI/GraphQL schema)
- $M$ = MCP server (agent-facing projection)
- $P$ = agent protocol / runtime (MCP version + agent framework specifics)
- ${SDK}(X)$ = generated client stubs for surface $X$

**Throwaway strategy** (no foundational layer):

$$
F = \varnothing, \qquad
S_{\text{throwaway}} = \{M,\; {SDK}(M,P)\}
$$

**Foundational strategy** (for contrast):

$$
S_{\text{foundational}} = \{F,\; M,\; {SDK}(F),\; {SDK}(M,P)\}
$$

where $M$ is only a thin, optional projection over $F$.

### 2. MCP server as ephemeral projection

$$
M : D \times P \to A
$$

where $A$ is the agent-action surface (tools, resources, prompts, handles) exposed by the MCP server.

Key dependency:

$$
P \neq P' \implies M(D,P) \neq M(D,P')
$$

(there is no $P$-independent contract).

In the throwaway case there is no stable mapping

$$
C : D \to \text{Clients}
$$

that survives changes in $P$.

### 3. Generated SDKs

$$
{SDK}(M,P) : A \to \text{ClientCode}
$$

Validity condition:

$$
{valid}\bigl({SDK}(M,P)\bigr)
\;\iff\;
M\text{ and }P\text{ are unchanged}
$$

Any evolution of the pair forces regeneration:

$$
(M,P)\to(M',P')
\;\implies\;
{SDK}(M,P)\to{SDK}(M',P')
$$

### 4. Stability

Define stability of a strategy $S$ at time $t$:

$$
{Stable}(S,t)
\;\iff\;
\forall\text{ clients }c,\;
\text{the contract of }S\text{ remains usable by }c\text{ at }t.
$$

Then:

$$
{Stable}(S_{\text{foundational}},t)
\;\approx\;
{Stable}(F,t)
$$

(even while $M$ or $P$ change),

while

$$
{Stable}(S_{\text{throwaway}},t)
\;\le\;
{Stable}(P,t).
$$

Because agent protocols $P$ evolve rapidly, $S_{\text{throwaway}}$ is intrinsically short-lived.

### 5. Pattern summary

- Absence of durable contract: $F=\varnothing$
- Entire public surface is agent-dependent:

  $$
  {API}(S_{\text{throwaway}}) = M(D,P)
  $$

- Client coupling:

$$
\forall c(c\text{ uses }{SDK}(M,P))
\;\implies\;
c\text{ is tightly coupled to }(M,P)
$$

- Fragility:

$$
(M,P)\to(M',P')
\;\implies\;
\forall c,\;c\text{ must adapt or break}
$$

