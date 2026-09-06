# Hamiltonian Game Theory

Jinshan Wu’s *Hamiltonian Formalism of Game Theory* rewrites game theory in the language of **density matrices**, **Hermitian payoff operators**, and **statistical‑mechanical equilibrium**, turning classical and quantum games into a single unified operator framework.  

---

## 🧠 Core
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

### ⚙️ Payoff 
- Hermitian operator 

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

---

## 🧭 Relational systems

- Density matrix = global relational state  
- Payoff operators = Power‑side evaluators  
- Evolution toward equilibrium = Quotient‑layer admissible dynamics  
- Entangled strategy states = Structural‑level relational coupling between players

---

## Future work

- **Map Wu’s formalism into relational notation**  
- **Extract the equilibrium‑finding algorithm step‑by‑step**  
- **Compare this to Eisert–Wilkens–Lewenstein quantum games**  
- **Show how strategy entanglement differs from object entanglement**
