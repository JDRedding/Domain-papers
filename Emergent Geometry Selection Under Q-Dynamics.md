# Emergent Geometry Selection Under Q-Dynamics

These equations define the Q-substrate dynamics underlying the “*Emergent Geometry Selection Under Q-Dynamics*” simulations (with pairwise weights such as $w_{AB}$, $w_{BC}$, $w_{CA}$ evolving under different bias conditions that modulate $k$, $M$, or $g$). 

- Phase mismatch $\to$ interface clipping $\to$ transfer into $Q$
- Constructive alignment $\to$ extraction from $Q$ $\to$ manifest realization
- Total relational content remains conserved (nothing created or destroyed; only redistributed)

**Complete form**

$$
R = R_m + R_q, \qquad \frac{dR}{dt} = 0
$$

$$
\Delta\Phi = \Phi_A - \Phi_B
$$

$$
C = k \cdot M \cdot |\Delta\Phi|
$$

$$
X = g(A,B,Q)
$$

$$
\frac{dQ}{dt} = C - X, \qquad \frac{dR_m}{dt} = X - C
$$

$$
\frac{dR_m}{dt} + \frac{dQ}{dt} = 0
$$


**Notation (fundamental variables)**

- $A(t)$, $B(t)$: states of systems $A$ and $B$
- $Q(t)$: Q-substrate (latent relational reservoir)
- $R(t)$: total relational content
- $R_m(t)$: manifest relational content
- $R_q(t)$: latent relational content stored in $Q$
- $I(A,B)$: interaction boundary
- $\Phi_A(t)$, $\Phi_B(t)$: phases of $A$ and $B$
- $\Delta\Phi(t) = \Phi_A(t) - \Phi_B(t)$: phase difference
- $M(A,B)$: structural mismatch measure
- $C(t)$: clipping rate
- $X(t)$: extraction rate
- $k$: clipping coupling constant
- $g(A,B,Q)$: constructive extraction function

**Conservation law**

$$
R = R_m + R_q, \qquad \frac{dR}{dt} = 0
$$

$$
\frac{dR_m}{dt} + \frac{dR_q}{dt} = 0
$$

**Phase relations**

$$
\Delta\Phi(t) = \Phi_A(t) - \Phi_B(t)
$$

- Synchronization: $\Delta\Phi = 0$
- Mismatch: $\Delta\Phi \neq 0$

**Clipping function**

General form:

$$
C = f(|\Delta\Phi|)
$$

Simple form:

$$
C = k \cdot M
$$

Phase-sensitive form:

$$
C = k \cdot M \cdot |\Delta\Phi|
$$

**Q exchange equations**

Clipping into $Q$ (manifest $\to Q$):

$$
\frac{dR_q}{dt} = C, \qquad \frac{dR_m}{dt} = -C
$$

Extraction from $Q$ ($Q \to$ manifest):

$$
\frac{dR_q}{dt} = -X, \qquad \frac{dR_m}{dt} = X
$$

Full bidirectional model:

$$
\frac{dR_q}{dt} = C - X, \qquad \frac{dR_m}{dt} = X - C
$$

**Master Q equation**

$$
\frac{dQ}{dt} = C - X
$$

Expanded:

$$
\frac{dQ}{dt} = k \cdot M(A,B) \cdot |\Delta\Phi| - g(A,B,Q)
$$

**Tesla / gear analogy**

$$
\Delta T = T_A - T_B
$$

$$
C = k_c \cdot |\Delta T|
$$

- $\Delta T = 0$: perfect engagement
- $\Delta T \neq 0$: clipping region exists
