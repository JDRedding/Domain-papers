# Hamiltonian Game Theory

Jinshan Wu’s *Hamiltonian Formalism of Game Theory* rewrites game theory in the language of **density matrices**, **Hermitian payoff operators**, and **statistical‑mechanical equilibrium**, turning classical and quantum games into a single unified operator framework. It recasts a game as a pair $(\rho_S,\{H_i\})$: a density matrix on the joint strategy space and a collection of Hermitian payoff operators. Expected payoff is the quantum-mechanical expectation

$$
u_i={Tr}(\rho_S H_i).
$$

Classical mixed strategies sit on the diagonal of $\rho_S$; classical correlation appears as a non-factorizable but still diagonal joint density matrix; quantum coherence and strategy entanglement occupy the off-diagonal blocks. When the physical objects being manipulated are themselves quantum, the same operators $H_i$ are induced by the usual composition of strategy unitaries with an initial object state, recovering a version of traditional quantum game theory (TQG) as a special case.

---

## 🧠 Core matrices
: Replace probability distributions with density matrices  

In classical game theory, a player’s mixed strategy is a **probability distribution** over actions.  
Wu replaces this with a **density matrix** ρ:

- diagonal entries → classical probabilities  
- off‑diagonal entries → quantum coherence / correlations  
- entangled joint density matrices → correlated or coalitional strategies

This immediately generalizes:

- **Independent players** → product density matrices  
- **Correlated players** → classically correlated density matrices  
- **Quantum‑entangled players** → entangled density matrices (a new type of “strategy entanglement,” distinct from entanglement of game objects) 

### 🧩 Unification 

The state space is a density matrix:

- Classical mixed strategies → diagonal density matrices  
- Classical correlated strategies → diagonal but non‑factorizable density matrices  
- Quantum strategies → full density matrices with off‑diagonal terms  
- Quantum entangled strategies → non‑separable density matrices across players

Thus **non‑cooperative**, **correlated**, and **coalitional** games all become special cases of the same operator formalism. 

---

## Equilibrium-finding algorithm 
Thermodynamic / pseudo-dynamical process

The procedure is a discrete, finite-temperature analogue of best-response dynamics that copies the Boltzmann construction of statistical mechanics.

**Inputs.** Payoff operators $\{H_i\}$, inverse-temperature (rationality) parameter $\beta\ge 0$, initial product state $\rho_S(0)=\bigotimes_i\rho_i(0)$.

**Iteration (one full sweep).**

1. For each player $i$ compute the *reduced payoff operator* by partial trace over everyone else:

$$
H_i^R={Tr}_{-i}\Bigl(\Bigl(\bigotimes_{j\neq i}\rho_j\Bigr)H_i\Bigr).
$$

2. Replace that player’s strategy by the thermal state of the reduced operator:

$$
\rho_i\leftarrow\frac{e^{\beta H_i^R}}{{Tr}(e^{\beta H_i^R})}.
$$

   (Some earlier notes of Wu insert an extra multiplicative factor of the old $\rho_i$; the later Hamiltonian paper uses the pure Boltzmann replacement above.)
3. Reassemble the joint state $\rho_S=\bigotimes_i\rho_i$ (or keep a correlated/entangled joint state if one is working in the coalitional setting).

**Termination.** Iterate until the map reaches a fixed point (or a cycle whose time-average is recorded). As $\beta\to\infty$ the thermal state concentrates on the maximizers of $H_i^R$, so a fixed point of the infinite-$\beta$ map is a Nash equilibrium of the original game. Finite $\beta$ yields a smoothed, bounded-rationality equilibrium. The Prisoner's-Dilemma example in the paper converges to the unique classical NE $(D,D)$ for large $\beta$; a figure traces the cooperation probability versus iteration number for several values of $\beta$.

---

### ⚙️ Payoff 
- Hermitian operator 

The same loop works, with only notational changes, when $\rho_S$ is permitted to be non-product (correlated or entangled strategies). In that case the partial traces still produce reduced operators, but the update is performed on the joint state or on coalition blocks.

Each player i has a payoff operator $H_i$.  
The expected payoff is:

$$
u_i = \mathrm{Tr}(H_i \rho)
$$

This mirrors quantum expectation values and allows payoff evaluation to be treated as a measurement on the strategy state. 

---

### 🔥 Hamiltonian evolution toward equilibrium  
Wu proposes a **thermodynamic‑style evolution** of the strategy density matrix:

- Inspired by Liouville–von Neumann evolution and Metropolis dynamics  
- Drives the system toward a fixed point  
- Fixed points correspond to **Nash equilibria**

This is not the usual best‑response or replicator dynamics.  
It is a **pseudo‑dynamical process** that mimics how statistical mechanics finds equilibrium distributions.  

## 🔮 Relation to “Traditional Quantum Game Theory” (TQG)  
Wu argues that TQG (Eisert–Wilkens–Lewenstein, etc.) mixes two concepts:

- entanglement of **game objects** (e.g., entangled qubits)  
- entanglement of **player strategies**

His formalism distinguishes them cleanly:

- Strategy entanglement = entanglement in the density matrix describing players  
- Object entanglement = entanglement in the physical system being manipulated

This yields a more general quantum game theory.  

### 🔧 When quantum games reduce to classical games  
If all payoff operators commute:

$$
[H_i, H_j] = 0
$$

then they share a common eigenbasis, and the density matrix can be diagonalized in that basis.  
The game becomes equivalent to a classical game with a standard payoff matrix.  
Thus classical game theory is a **special case** of the Hamiltonian formalism.  

---

## 📌 Example games in the paper  
Wu provides:

- **Penny Flipping Game** → classical example  
- **Spin Rotating Game** → quantum example  
- **Nash equilibrium computation** via thermodynamic evolution  
- **Reduction of commutative quantum games** to classical games

**Penny Flipping (classical).** Object starts in $|+\rangle$. Strategies $\{I,X\}$. The two payoff operators are diagonal in the product basis $\{II,IX,XI,XX\}$ and recover the usual matching-pennies bimatrix.

**Spin Rotating (quantum).** Same object, now a spin-½; strategy basis $\{I,X,Y,Z\}$ (or the Hermitian basis $\{I,iX,iY,iZ\}$ to keep coefficients real). The resulting $H_1,H_2$ are $16\times16$ matrices containing both diagonal classical payoffs and off-diagonal interference terms. Parameterizing a general product density matrix and setting derivatives of $u_1$ and $u_2$ to zero produces a family of Nash states whose diagonal blocks already illustrate the extra freedom that coherence supplies.

Both examples can be fed directly into the thermodynamic iteration; the paper records the Prisoner's-Dilemma trajectory explicitly.

The formalism therefore supplies a single operator language in which classical mixed strategies, correlated equilibria, coalitional arrangements, object-entangled quantum games and strategy-entangled quantum games are simply different choices of the pair $(\rho_S,\{H_i\})$.

---

## Strategy versus entanglement
: Strategy entanglement versus object entanglement

- **Object entanglement** (the ingredient used by Eisert–Wilkens–Lewenstein and most of TQG) lives in the Hilbert space of the *physical systems* that the players act upon—two qubits prepared in $J|00\rangle$, an entangled pair of pennies, etc. It changes the numerical entries of the payoff operators $H_i$ but does not change the *strategy* description itself.
 
- **Strategy entanglement** lives in the Hilbert space whose basis vectors are the players’ *actions* (or elementary operators $I,X,Y,Z,\dots$). A joint density matrix $\rho_S\neq\bigotimes_i\rho_i$ means the players have chosen a correlated or quantum-entangled *plan*. Wu treats this as a primitive that unifies non-cooperative, correlated-equilibrium and coalitional games inside one operator language. An earlier companion paper constructs an artificial two-player game whose only equilibrium is an entangled strategy state; destroying the off-diagonal blocks strictly lowers both payoffs, so the entanglement functions as a binding agreement.

The two notions commute: one can have classical (diagonal) strategies acting on an entangled object, or entangled strategies acting on a classical object, or both at once.

---

## Comparison with the EWL protocol
: Eisert–Wilkens–Lewenstein (EWL) protocol

| | EWL / TQG | Wu Hamiltonian |
|---|---|---|
| Strategy object | Unitary $U\in\mathrm{SU}(2)$ (or a probability measure on unitaries) applied to a player’s qubit | Density matrix on a finite operator basis $\{I,X,Y,Z\}$ (or a larger basis) |
| Entanglement | Injected by a referee gate $J$ acting on the *object* qubits | Can appear either in the object (via the map that builds $H_i$) *or* in the joint strategy density matrix |
| Payoff evaluation | Measure the final object state in the computational basis, look up a classical bimatrix | Direct trace ${Tr}(\rho_S H_i)$ |
| Equilibrium concept | Nash in the space of unitaries / mixed unitaries | Fixed point of the thermodynamic map (recovers Nash as $\beta\to\infty$) |
| Classical limit | Restrict unitaries to a one-parameter subgroup that reproduces the classical mixed-strategy simplex | Restrict $\rho_S$ and all $H_i$ to be simultaneously diagonalizable (i.e., $[H_i,H_j]=0$ and product eigenbasis) |

Wu’s criticism is that TQG conflates the two entanglement sites and that a probability distribution over an infinite set of unitaries does not respect the operator algebra (inner product $\langle A|B\rangle={Tr}(A^\dagger B)$). The density-matrix formulation automatically encodes those algebraic relations and makes the classical theory a literal special case rather than an external limit.

When all payoff operators commute they share a common eigenbasis. If that basis is a product basis, every off-diagonal element of $\rho_S$ can be set to zero without changing payoffs, and the game collapses to an ordinary classical bimatrix (or multimetric) game. The Penny-Flipping game is exactly the commutative sub-game of the Spin-Rotating game obtained by discarding the $Y$ and $Z$ directions.

---

## 🧭 Relational systems

- Density matrix = global relational state  
- Payoff operators = Power‑side evaluators  
- Evolution toward equilibrium = Quotient‑layer admissible dynamics  
- Entangled strategy states = Structural‑level relational coupling between players

### Relational vocabulary mapping 

- Density matrix $\rho_S$ $\leftrightarrow$ global relational state (the complete web of probabilistic and coherent relations among all players’ actions).

- Hermitian operators $H_i$ $\leftrightarrow$ power-side evaluators (each player’s private measurement of the same relational state).

- Thermodynamic iteration $\rho\mapsto e^{\beta H^R}/Z$ $\leftrightarrow$ quotient-layer admissible dynamics (a discrete, contractive flow that is guaranteed to exist on the compact convex set of density matrices and whose attractors are the admissible equilibria).

- Non-separable $\rho_S$ $\leftrightarrow$ structural-level relational coupling (strategy entanglement as a primitive correlation that cannot be reduced to independent marginals).

The same dictionary turns the classical–quantum reduction into a statement about when the relational state can be simultaneously diagonalized by all evaluators.

