# **Game: Mass–Geometry Relations**  

Milad Ghadimi’s *A Timeless Game: A Game-Theoretic Model of Mass–Geometry Relations* proposes a static, game‑theoretic formalism where **mass** and **geometry** behave as players in a normal‑form game. The Nash equilibria of this “Curvature Clash” game reproduce intuitive GR‑like pairings (“light → flat”, “heavy → curved”), and the philosophical thrust is that **time need not appear in the global description**—temporal flow emerges only for embedded observers through coarse‑graining and informational asymmetry.   

## Overview

The global description can be a static constraint (consistency of mass and curvature). Apparent temporal flow is assigned to embedded observers via informational asymmetry, coarse-graining, and records. The paper places this in the usual lineage: McTaggart, Barbour, block-universe GR, Wheeler–DeWitt “problem of time,” Page–Wootters, thermal time. It does not derive any of those mechanisms; it only says they are compatible with a timeless constraint picture.

This paper is part of a broader movement exploring **timeless formulations of physics**, where:

- Geometry and matter are relational constraints.  
- “Dynamics” is emergent from how observers parse static global structure.  
- Time becomes a derived concept rather than a fundamental variable.

It provides a compact, mathematically clean demonstration of how **mass–geometry coupling can be represented without temporal evolution**, using only game theory.

### 🧠 Philosophical Contribution

The model is **timeless**:  

- No explicit temporal parameter appears.  
- Nash equilibria represent **static global configurations**, analogous to stationary solutions in physics. 
- **Temporal flow** for observers arises from:  
  - informational asymmetry  
  - coarse‑graining  
  - records  
  - embedded perspective  

This echoes Barbour’s timeless physics, block‑universe interpretations, and Wheeler–DeWitt‑style timelessness. 

It treats mass (“Object”) and geometry (“Space”) as two players in a one-shot normal-form game whose payoffs are heuristic *consistency scores*, not dynamical utilities. No $t$ appears. Nash equilibria are then read as self-consistent mass–geometry pairings.

In the $2\times 2$ “Curvature Clash” game the payoff matrix is

$$
\begin{array}{c|cc}
 & F & C \\
\hline
L & (5,5) & (3,2) \\
H & (2,3) & (4,4)
\end{array}
$$

Mutual best replies give two pure Nash equilibria: $(L,F)$ and $(H,C)$. That is the “light–flat / heavy–curved” correspondence.

In the continuous version the utilities are matching quadratics

$$
u_{\mathsf{O}}=-(s_{\mathsf{O}}-\alpha s_{\mathsf{S}})^2+\beta,\qquad
u_{\mathsf{S}}=-(s_{\mathsf{S}}-\gamma s_{\mathsf{O}})^2+\delta.
$$

Best replies are $s_{\mathsf{O}}=\alpha s_{\mathsf{S}}$ and $s_{\mathsf{S}}=\gamma s_{\mathsf{O}}$. If $\alpha\gamma\neq 1$ the only interior equilibrium is the origin; if $\alpha\gamma=1$ there is a ray of matching equilibria. Adding linear benefit and quadratic self-cost terms generically produces a unique interior crossing instead. That is the whole formal content.

---

### 🧩 Core Idea: Mass and Geometry as Game‑Theoretic Players
The paper models:

- **Player 1:** *Object* → mass distribution  
- **Player 2:** *Space* → geometric curvature  

Each chooses a strategy (e.g., low vs high mass; flat vs curved geometry).  
Utilities do **not** represent dynamical payoffs but **mutual consistency**—a configuration is “stable” if mass and geometry agree on what each demands of the other.

This reframes the Einsteinian relation  

$$
\text{mass-energy} \leftrightarrow \text{curvature}
$$  

as a **static compatibility game** rather than a dynamical evolution law.

The interesting move is modest: Einstein’s relation $G_{\mu\nu}=8\pi T_{\mu\nu}$ is already a *constraint* on a 4-geometry plus matter, not a Newtonian “force law in time.” Recoding that constraint as mutual best response makes the “no external $t$ needed for the global pairing” thesis very clean. The price is that almost all of GR’s content—how the pairing is *implemented* by a differential equation, causal structure, energy conditions, gravitational waves, cosmology—is put outside the model.

---

## 🎯 Key Results

- **2×2 toy model:**  
  Two pure Nash equilibria emerge:  
  - **light–flat**  
  - **heavy–curved**  
  These mirror the intuitive GR correspondence between small mass and weak curvature vs large mass and strong curvature.  

- **Continuous variant:**  
  Best‑response analysis shows two regimes:  
  - Only a **trivial interior equilibrium** (mass and curvature minimally interacting).  
  - A **continuum of equilibria** along a matching ray (mass and curvature scale together).  
  This resembles how certain GR solutions form families parameterized by mass or curvature.


### 🧪 Scope and Limitations
The author emphasizes the model is deliberately austere:  

- Payoffs are heuristic stability scores, **not** derived from an action principle. Payoffs are not obtained from an Einstein–Hilbert action, ADM Hamiltonian, or any constraint algebra.
- No quantum constraints. There is no locality, no diffeomorphism invariance, no stress-energy tensor, no quantum constraint.
- Not intended as a physical theory—only a **representational framework** showing how mass–geometry relations can be encoded without time. 
- Equilibrium *selection* is left open: two discrete equilibria, or a trivial point versus a continuum, depending on parameter fine-tuning.
- The two-player reduction erases the field-theoretic character of both matter and geometry.

The author states this explicitly: it is an austere representational framework, not a physical theory.

## Future work 

### Open questions

1. Can the payoff be derived from a constraint functional (Hamiltonian constraint, York–Lichnerowicz matching, or a shape-dynamics potential) rather than chosen by hand?
2. Can “players” be local patches or modes, so that Nash consistency becomes a field equation?
3. Does equilibrium selection correspond to anything like a mass parameter or a family of Schwarzschild/FLRW solutions?

### Related topics

- mass–geometry coupling  
- timeless physics  
- Nash equilibria in physical models  
- emergent time

## Citation
- Ghadimi, Milad. A Timeless Game: A Game-Theoretic Model of Mass-Geometry Relations. arXiv:2509.15229 [physics.soc-ph] (2025).
