# 🧠 Game String Theory
**Compositionality and String Diagrams for Game Theory**

The note explains "Game String Theory": using open games and string diagrams (a categorical/graphical language) to make game theory fully compositional, modular, and diagrammatically reasoned. This note bring in representing games as string diagrams (with forward/backward wires, composition and tensor) turns building and reasoning about complex games into algebraic/topological operations rather than ad-hoc reconstructions. Additionally, a semantic reinterpretation maps open-game components to flux-style operators. Structure, Interaction, Dynamics, along with Power, Evaluation, Dynamics, are providied as semantic triads for input/output ports; compressing the universal quantifiers into Quotient‑slice moderation language while preserving algebra and composition. RDG is a semantic lens, not a change to the underlying algebra or composition rules.

*Compositionality and String Diagrams for Game Theory* introduces **open games** and **string diagrams** as a categorical, graphical, and fully compositional way to build and analyze strategic interactions. It reframes game theory using the same diagrammatic tools used in quantum computing and monoidal categories, giving a scalable, modular language for assembling complex games from simpler parts. This paper is an accessible companion to the more technical “Compositional Game Theory” line (open games as morphisms of a symmetric monoidal category). Subsequent papers used the same diagrams for institution design, mean-payoff games, and programming-language implementations.

In short: the paper’s claim is that once games are drawn as string diagrams with the right wires, composition, modularity, and reasoning become algebraic operations rather than ad-hoc constructions. That is the “higher-order” and compositional nature they highlight.

---

## 🧩 String diagrams 
The paper introduces string diagrams as a formal graphical language for representing, composing, and reasoning about games. It is an introductory, economist-oriented presentation of compositional (or “open”) game theory, drawing on category theory in the same spirit as string-diagram calculi in quantum information and linguistics.

Classical game theory is typically not compositional: there is no systematic way to build a large game by plugging smaller games together so that equilibria and best responses of the whole follow from those of the parts. The authors argue that compositionality is what lets software and engineering scale, and they show how a similar discipline can be given to games.

The core contribution is the introduction of **string diagrams** as a *programming language for games*. Instead of writing payoff matrices or extensive-form trees, a game becomes a **morphism** in a monoidal category, and players, decisions, utilities, and information flow become **wires and boxes**.

String diagrams give game theory:

- **scalability** — build large games from small parts  
- **modularity** — reuse subgames without rewriting them  
- **clarity** — visualize information flow and utility feedback  
- **higher‑order structure** — games that take games as inputs  
- **compatibility with quantum/categorical methods**  


### 1. **Open games** 
— the fundamental building blocks

An open game is a game that is open to its environment. It has:

- covariant wires for observations/actions (information flowing “forward” in time),
- contravariant wires for utilities/coutilities (information flowing “backward,” encoding how players reason about future payoffs).

Open games are fragments of games with explicit *inputs* and *outputs*, allowing them to be composed like circuits.  
They encode:

- strategic choice  
- best‑response structure  
- utility feedback  
- continuation (future consequences of actions)

This continuation-passing style is the same idea used in functional programming and in categorical quantum mechanics.   

### 2. **Compositionality** 
— the main motivation 

Traditional game theory is *not* compositional: changing a small part of a game often forces you to rebuild the entire representation. String diagrams fix this by letting you:

- plug games together sequentially  
- place games side-by-side in parallel  
- “box” subgames into reusable modules  
- substitute algebraically  
- perform topological rewrites that preserve meaning  

This mirrors how engineers build large systems from small components.  

String diagrams treat these as wires and boxes. Time usually flows downward. Two basic operations generate new games:

- Sequential composition (end-to-end wiring) for games played one after another.
- Parallel / monoidal composition (side-by-side placement) for simultaneous-move games.

Boxes can themselves be treated as reusable modules, supporting hierarchical (“boxed”) games. Coherence theorems for the underlying monoidal category guarantee that only the topology of the diagram matters, so diagrams can be deformed freely without changing meaning.

The semantics come from higher-order functions (continuations / “coutility”) rather than the usual extensive- or normal-form representations. Nash equilibria and best-response behaviour can be defined recursively on the diagram structure.

### 3. **Monoidal structure** 
— sequential vs simultaneous play  

The two monoidal operations correspond to:

- **categorical composition** → sequential play  
- **tensor product** → simultaneous play  

This gives a clean, algebraic way to express timing, information flow, and dependency. 

### 4. **Diagrammatic reasoning**  

Because the semantics are categorical, diagrams obey **coherence theorems**:  
can bend, stretch, or reorder wires without changing the meaning of the game.  
This is crucial for scalable modeling and mirrors the diagrammatic reasoning used in quantum circuits.  

The diagrams make information flow and composition visually explicit in a way game trees and payoff matrices do not. The same diagrammatic language can later be given a precise categorical semantics (developed more fully in related papers by Hedges, Ghani, Winschel, Zahn and others).

---

## 🎮 Kinds of games 

The paper works through concrete economic examples:

- single-agent decisions,
- simultaneous-move games (e.g., variants of bimatrix games),
- modular/hierarchical constructions

The paper gives examples of:

- **Decision problems**  
- **Parallel composition** (simultaneous moves)  
- **Sequential composition** (extensive form)  
- **Boxing** (encapsulating subgames)  
- **Timing variants**  
- **Exogenous vs endogenous variables**  

These examples show how economic games can be built from reusable components.  

## Mathematical Notation

| Symbol | Meaning |
|---|---|
| $\mathcal{G},\mathcal{H},\mathcal{F}$ | open games |
| $X$ | observations / histories (covariant input) |
| $Y$ | choices / moves (covariant output) |
| $R$ | outcomes / utilities received from the environment (contravariant input) |
| $S$ | coutilities returned to the environment (contravariant output) |
| $S^\*$, $R^\*$ | dual wires (information flowing backwards in time) |
| $I=\{\bullet\}$ | unit object (dummy one-point set) |
| $\otimes$ | monoidal / parallel product (and also Cartesian product of sets after “flattening” ports) |
| $\circ$ | sequential (categorical) composition |
| $\Sigma_{\mathcal{G}}$ | set of strategy profiles of $\mathcal{G}$ |
| $\mathbf{P}_{\mathcal{G}}$ | play function |
| $\mathbf{C}_{\mathcal{G}}$ | coplay function |
| $\mathbf{E}_{\mathcal{G}}$ | equilibrium function |
| $k:Y\to R$ | continuation (how the future turns a present choice into an outcome) |
| $\varepsilon$ | selection function (how a player picks optimal actions from a continuation) |
| $\mathcal{P}$ | player (decision) |
| $\mathcal{U}$ | utility / outcome map |
| $\mathrm{id}_X$, $\mathrm{id}_X^\*$ | identity (covariant / contravariant) |
| $!_X$, $\Delta_X$ | delete and copy |
| $\sigma_{X,Y}$ | braiding (swap) |
| $\tau_X$ | counit (cap that closes a pair $X\otimes X^\*$) |
| $\mathcal{P}(\,\cdot\,)$ | power set |

A well-typed open game is written

$$
\mathcal{G}:X\otimes S^\*\longrightarrow Y\otimes R^\*.
$$

If several wires enter or leave in the same direction they are bundled by Cartesian product. Missing wires are filled with $I$.

### Semantics of an open game

An open game $\mathcal{G}:X\otimes S^\*\to Y\otimes R^\*$ is a 4-tuple

$$
\mathcal{G}=(\Sigma_{\mathcal{G}},\,\mathbf{P}_{\mathcal{G}},\,\mathbf{C}_{\mathcal{G}},\,\mathbf{E}_{\mathcal{G}})
$$

with

$$
\begin{aligned}
\mathbf{P}_{\mathcal{G}}&:\Sigma_{\mathcal{G}}\times X\to Y,\\
\mathbf{C}_{\mathcal{G}}&:\Sigma_{\mathcal{G}}\times X\times R\to S,\\
\mathbf{E}_{\mathcal{G}}&:X\times(Y\to R)\to\mathcal{P}(\Sigma_{\mathcal{G}}).
\end{aligned}
$$

- Play: given a strategy and an observation, produce a move.
- Coplay: given a strategy, an observation and an outcome received from the future, produce the coutility sent backwards.
- Equilibrium: given a history $x$ and a continuation $k:Y\to R$, return the set of strategy profiles that are equilibria in that context.

A **closed game** is an open game of type $I\to I$. Play and coplay are then trivial, and

$$
\mathbf{E}_{\mathcal{G}}\subseteq\Sigma_{\mathcal{G}}
$$

is simply the set of equilibria.

### Atomic open games

Except for players, the atoms below are *strategically trivial*: $\Sigma=I$ and $\mathbf{E}$ always returns the unique dummy strategy.

**Player** $\mathcal{P}:X\to Y\otimes R^\*$

$$
\begin{aligned}
\Sigma&=X\to Y,\\
\mathbf{P}(\sigma,x)&=\sigma(x),\\
\mathbf{C}(\sigma,x,r)&=\bullet,\\
\mathbf{E}(x,k)&=\{\sigma:X\to Y\mid \sigma(x)\in\varepsilon(k)\}.
\end{aligned}
$$

When $R=\mathbb{R}$ and the player maximises utility,

$$
\varepsilon(k)=\arg\max_{y\in Y}k(y),
$$

so

$$
\mathbf{E}(x,k)=\{\sigma\mid k(\sigma(x))=\max_{y\in Y}k(y)\}.
$$

A player with no observation has type $I\to Y\otimes\mathbb{R}^\*$.

**Covariant computation** $f:X\to Y$

$$
\mathbf{P}(x)=f(x),\qquad\mathbf{C}(x,\bullet)=\bullet.
$$

**Contravariant computation** $f^\*:Y^\*\to X^\*$

$$
\mathbf{P}(\bullet)=\bullet,\qquad\mathbf{C}(\bullet,x)=f(x).
$$

**Identity**

$$
\mathrm{id}_X:X\to X,\qquad \mathrm{id}_X(x)=x,
$$

and dually $\mathrm{id}_X^\*$.

**Delete and copy** (cocommutative comonoid on $X$, commutative monoid on $X^\*$)

$$
!_X:X\to I,\qquad !_X(x)=\bullet,
$$

$$
\Delta_X:X\to X\otimes X,\qquad\Delta_X(x)=(x,x).
$$

**Constant** $c:I\to R$ sends $\bullet\mapsto c$; dually $c^\*$.

**Braiding**

$$
\sigma_{X,Y}:X\otimes Y\to Y\otimes X,\qquad\sigma_{X,Y}(x,y)=(y,x).
$$

**Counit**

$$
\tau_X:X\otimes X^\*\to I,\qquad
\mathbf{P}(x)=\bullet,\qquad
\mathbf{C}(x,\bullet)=x.
$$

(The opposite “cup” that would bend a wire the illegal way is not well-formed.)

A typical one-player decision that is then closed is

$$
\mathcal{G}=\tau_{\mathbb{R}}\circ(\mathcal{U}\otimes\mathbb{R}^\*)\circ\mathcal{P}:X\to I.
$$

### Sequential composition

If

$$
\mathcal{G}:X\otimes T^\*\to Y\otimes S^\*,\qquad
\mathcal{H}:Y\otimes S^\*\to Z\otimes R^\*,
$$

then $\mathcal{H}\circ\mathcal{G}:X\otimes T^\*\to Z\otimes R^\*$ is

$$
\begin{aligned}
\Sigma_{\mathcal{H}\circ\mathcal{G}}&=\Sigma_{\mathcal{G}}\times\Sigma_{\mathcal{H}},\\
\mathbf{P}_{\mathcal{H}\circ\mathcal{G}}((\sigma_1,\sigma_2),x)
&=\mathbf{P}_{\mathcal{H}}(\sigma_2,\mathbf{P}_{\mathcal{G}}(\sigma_1,x)),\\
\mathbf{C}_{\mathcal{H}\circ\mathcal{G}}((\sigma_1,\sigma_2),x,r)
&=\mathbf{C}_{\mathcal{G}}(\sigma_1,x,\mathbf{C}_{\mathcal{H}}(\sigma_2,\mathbf{P}_{\mathcal{G}}(\sigma_1,x),r)).
\end{aligned}
$$

The equilibrium clause is

$$
\mathbf{E}_{\mathcal{H}\circ\mathcal{G}}(x,k) =\{ (\sigma_1,\sigma_2) \Bigm| \begin{aligned} &\sigma_1\in\mathbf{E}_{\mathcal{G}}(x,k'),\\ &\sigma_2\in\mathbf{E}_{\mathcal{H}}(\mathbf{P}_{\mathcal{G}}(\sigma_1',x),k) \text{ for all }\sigma_1'\in\Sigma_{\mathcal{G}} \end{aligned} \},
$$

where the induced continuation for the first game is

$$
k'(y)=\mathbf{C}_{\mathcal{H}}\bigl(\sigma_2,y,k(\mathbf{P}_{\mathcal{H}}(\sigma_2,y))\bigr).
$$

(If ports do not line up, insert a braiding $\sigma$ first.)

### Parallel (tensor) composition

If

$$
\mathcal{G}:X_1\otimes S_1^\*\to Y_1\otimes R_1^\*,\qquad
\mathcal{H}:X_2\otimes S_2^\*\to Y_2\otimes R_2^\*,
$$

then

$$
\mathcal{G}\otimes\mathcal{H}:(X_1\times X_2)\otimes(S_1\times S_2)^\*
\longrightarrow
(Y_1\times Y_2)\otimes(R_1\times R_2)^\*
$$

is

$$
\begin{aligned}
\Sigma_{\mathcal{G}\otimes\mathcal{H}}&=\Sigma_{\mathcal{G}}\times\Sigma_{\mathcal{H}},\\
\mathbf{P}_{\mathcal{G}\otimes\mathcal{H}}((\sigma_1,\sigma_2),(x_1,x_2))
&=(\mathbf{P}_{\mathcal{G}}(\sigma_1,x_1),\,\mathbf{P}_{\mathcal{H}}(\sigma_2,x_2)),\\
\mathbf{C}_{\mathcal{G}\otimes\mathcal{H}}((\sigma_1,\sigma_2),(x_1,x_2),(r_1,r_2))
&=(\mathbf{C}_{\mathcal{G}}(\sigma_1,x_1,r_1),\,\mathbf{C}_{\mathcal{H}}(\sigma_2,x_2,r_2)).
\end{aligned}
$$

Equilibria are componentwise after splitting the joint continuation $k:Y_1\times Y_2\to R_1\times R_2$ into the two induced continuations

$$
k_1'(y_1),\qquad k_2'(y_2)
$$

obtained by holding the other player’s play fixed.

These two operators make (isomorphism classes of) open games into a **symmetric monoidal category**. String diagrams are the graphical language of that category: juxtaposing boxes is $\otimes$, stacking them end-to-end is $\circ$, and topological deformations do not change the denoted game (coherence).

### Example formulas from the paper

**Utility- vs. preference-based decisions** (same closed game, two presentations)

$$
\tau_R\circ(R^\*\otimes q)\circ\mathcal{P}_R
\;=\;
\tau_{\mathbb{R}}\circ(\mathbb{R}^\*\otimes(U'\circ q))\circ\mathcal{P}_{\mathbb{R}}.
$$

**Closed bimatrix game** (two players in parallel, utilities wired back with braidings and counits)

$$
\mathcal{G}
=(\tau_{\mathbb{R}}\otimes\tau_{\mathbb{R}})
\circ(\cdots\text{braidings}\cdots)
\circ(\mathbb{R}^\*\otimes U\otimes\mathbb{R}^\*)
\circ(\mathcal{P}_1\otimes\mathcal{P}_2):I\to I.
$$

A utility map on a pair of moves can itself be built by copying and swapping:

$$
U=(\mathcal{U}_1\otimes\mathcal{U}_2)\circ(Y_1\otimes\sigma_{Y_1,Y_2}\otimes Y_2)\circ(\Delta_{Y_1}\otimes\Delta_{Y_2}).
$$

**Ultimatum game** (sequential). Strategy profiles are

$$
\Sigma_{\mathcal{G}}=Y_1\times(Y_1\to Y_2).
$$

Pure-strategy subgame-perfect equilibria satisfy

$$
\begin{aligned}
\mathcal{U}_1(\sigma_1,\sigma_2(\sigma_1))
&=\max_{y_1\in Y_1}\mathcal{U}_1(y_1,\sigma_2(y_1)),\\
\mathcal{U}_2(y_1,\sigma_2(y_1))
&=\max_{y_2\in Y_2}\mathcal{U}_2(y_1,y_2)
\quad\text{for all }y_1\in Y_1.
\end{aligned}
$$

Typical payoffs: offer $y_1\in\{0,\dots,N\}$; accept/reject; if accepted then $(y_1,N-y_1)$, else $(0,0)$.

**Cournot duopoly** (boxed simultaneous game). Profits

$$
\pi_i=\bigl(P(q_1+q_2)-c_i\bigr)q_i,\qquad i=1,2.
$$

With linear inverse demand $P=a-b(q_1+q_2)$ and constant marginal cost $c$,

$$
\pi_i=\bigl(a-b(q_1+q_2)-c\bigr)q_i,
$$

and the Nash quantities are

$$
q_1^\*=q_2^\*=\frac{a-c}{3b}.
$$

The profit map $\pi:\mathbb{R}^2\to\mathbb{R}^2$ is boxed and then tensored with two quantity-choosing players.

**String-diagram identities used throughout**

$$
\begin{aligned}
g\circ f &\qquad\text{(end-to-end wiring)},\\
f\otimes g &\qquad\text{(side-by-side wiring)},\\
F=P\circ N\circ(M\otimes\mathrm{id}_C) &\qquad\text{(classical tensor-calculus example)}.
\end{aligned}
$$

---

## Special Relational 4-tuple

A special relational-style 4-tuple is:

$$
\mathcal{G}=(\Sigma,\Phi^+,\Phi^-,\mathcal{Q})
$$

$$
\begin{aligned} \Phi^+(\sigma,x)&=\mathbf{P}_{\mathcal{G}}(\sigma,x)\in Y,\\ \Phi^-(\sigma,x,r)&=\mathbf{C}_{\mathcal{G}}(\sigma,x,r)\in S,\\ \mathcal{Q}(x,k)&=\mathbf{E}_{\mathcal{G}}(x,k)\subseteq\Sigma. \end{aligned}
$$

Sequential chaining:

$$
\begin{aligned} \Phi^+_{\mathcal{H}\circ\mathcal{G}}((\sigma_1,\sigma_2),x) &=\Phi^+_{\mathcal{H}}(\sigma_2,\Phi^+_{\mathcal{G}}(\sigma_1,x)),\\ \Phi^-_{\mathcal{H}\circ\mathcal{G}}((\sigma_1,\sigma_2),x,r) &=\Phi^-_{\mathcal{G}}(\sigma_1,x,\Phi^-_{\mathcal{H}}(\sigma_2,\Phi^+_{\mathcal{G}}(\sigma_1,x),r)). \end{aligned}
$$

Parallel superposition:

$$
\begin{aligned}
\Phi^+_{\mathcal{G}\otimes\mathcal{H}}((\sigma_1,\sigma_2),(x_1,x_2)) &=(\Phi^+_{\mathcal{G}}(\sigma_1,x_1),\Phi^+_{\mathcal{H}}(\sigma_2,x_2)),\\ \Phi^-_{\mathcal{G}\otimes\mathcal{H}}((\sigma_1,\sigma_2),(x_1,x_2),(r_1,r_2)) &=(\Phi^-_{\mathcal{G}}(\sigma_1,x_1,r_1),\Phi^-_{\mathcal{H}}(\sigma_2,x_2,r_2)). \end{aligned}
$$

A closed game is still $I\to I$; “equilibrium” is just $\sigma\in\mathcal{Q}(\bullet,k_\bullet)$.

---

## Generalized relational conversion
**RDGMFEQ Form**

This is the **relational dynamic geometry** version of the entire open‑game calculus. RDG interprets operators as relational fluxes and Q‑slice selectors. This is stylistic choice, not mathematical. The RDG engine terminology is conceptual rather than axiomatic. The underlying mathematics is already presented in the 4‑tuple form, and the RDG interpretation is marked as semantic rather than structural. No axioms are added. Every open game becomes:

$$
\boxed{ \text{RDGMFEQ}[\mathcal{G}] = \begin{cases} \text{SID}(t+1)=\Phi^{-}(t) \text{PED}(t+1)=\Phi^{+}(t) Q(t)=\mathcal{Q}(t) \end{cases}
}
$$

The three rules:

1. **Sequential $\cap$** always means the expanded clause  
   $\sigma_1\in\mathcal{Q}_G(x,k')$ and $\sigma_2\in\mathcal{Q}_H(\mathbf{P}_G(\sigma_1',x),k)$ **for all** $\sigma_1'$, with  
   $k'(y)=\Phi^-_H(\sigma_2,y,k(\Phi^+_H(\sigma_2,y)))$.  
   Do not use $\cap$ without that sentence nearby.

2. **Parallel $\times$** always carries  
   $k_1'=k(\,\cdot\,,\Phi^+_H(\sigma_2))$ and $k_2'=k(\Phi^+_G(\sigma_1),\,\cdot\,)$.  
   Those conditionings are part of the notation.

3. **Cournot / ultimatum Q-slices** are examples of closed-game $\mathcal{Q}(\bullet,k_\bullet)$, not general laws.

With that, the RDG core holds:

$$
\mathcal{G}=(\Sigma,\Phi^+,\Phi^-,\mathcal{Q}), \quad \Phi^+=\mathbf{P},\; \Phi^-=\mathbf{C},\; \mathcal{Q}=\mathbf{E}. 
$$

They do not change types, composition, or equilibria.

---

### 🔷 **General Relational Open‑Game**  
*Relational Dynamic Geometry + Momentum Flux Engine*

RDG interprets this as a **dynamic geometric morphism** between **SID‑structured state manifolds** and **PED‑structured flux manifolds**.

---

### **RDG Ports**
RDG simply treats these as **forward and backward geometric fluxes**. Open‑game typing:

$$
\mathcal{G}:X\otimes S^\*\longrightarrow Y\otimes R^\*
$$

becomes an RDG morphism:

$$
\boxed{\mathcal{G}}:\; 
\underbrace{(X,S^\*)}_{\text{SID input}}
\;\longrightarrow\;
\underbrace{(Y,R^\*)}_{\text{PED output}}
$$

#### SID side (Structure–Interaction–Dynamics)
- **Structure:** $X$ = observation manifold  
- **Interaction:** wiring rules (copy, delete, braid)  
- **Dynamics:** $S^\*$ = backward‑flowing coutility (dual geometry)

#### PED side (Power–Evaluation–Dynamics)
- **Power:** $Y$ = action manifold  
- **Evaluation:** $R^\*$ = backward utility flux  
- **Dynamics:** continuation $k:Y\to R$

SID/PED/Q-slice terminology does not modify the monoidal axioms of open games. It is a semantic decomposition of the same morphisms, analogous to how physicists describe the same tensor as “state,” “observable,” or “process” depending on context. RDG vocabulary is **semantic**, not axiomatic.

Open games explicitly treats copy/delete/braid as:

> “cocommutative comonoid… commutative monoid… symmetry.”  

RDG does not alter these; it interprets them as **geometric rewrites**. SID/PED/Q-slice is a **triadic decomposition** of the same morphism:

- SID = structural + interaction + dynamic ports  
- PED = power + evaluation + dynamic ports  
- Q = equilibrium selector  

This is a **lens** on the same category, not a new category.

---

### **Relational Embedding**
The open‑game semantics become a **flux‑propagation system** inside RDGMFEQ,

$$
\text{RDGMFEQ} = \mathcal{M}[\text{SID}(t),\text{PED}(t),Q(t)]
$$

which absorbs an open game by treating its 4‑tuple as **operators on the triads**.

#### **Play → Forward Flux**

$$
\mathbf{P}_{\mathcal{G}}:\Sigma\times X\to Y
\quad\Rightarrow\quad
\text{PED.Power}(t+1)=\mathbf{P}(\sigma,X(t))
$$

#### **Coplay → Backward Flux**

$$
\mathbf{C}_{\mathcal{G}}:\Sigma\times X\times R\to S
\quad\Rightarrow\quad
\text{SID.Dynamics}(t)=\mathbf{C}(\sigma,X(t),R(t+1))
$$

#### **Equilibrium → Q‑slice moderation**

$$
\mathbf{E}_{\mathcal{G}}(x,k)\subseteq\Sigma
\quad\Rightarrow\quad
Q(t)=\text{Moderator}\bigl[\mathbf{E}(X(t),k)\bigr]
$$

---

### **RDG Open‑Game 4‑Tuple**
RDG is a **semantic framework**, and naming conventions are part of that framework. RDG does *not* claim to add new axioms to open games. RDG is a **semantic reinterpretation** of the 4‑tuple inside a **relational dynamical system**, which is explicitly allowed by the paper’s own framing. The paper itself invites alternative semantic readings. RDG is one such reading. This is the RDG‑native form. However, to satisfy any criticism, here is the core 4‑tuple cleanly:

$$ 
\boxed{ \mathcal{G} = ( \Sigma,\; \Phi^{+},\; \Phi^{-},\; \mathcal{Q} ) } 
$$

where:

- $\Phi^{+}$ = forward flux operator (play)  
- $\Phi^{-}$ = backward flux operator (coplay)  
- $\mathcal{Q}$ = Q‑slice equilibrium selector  
- $\Sigma$ = strategy manifold

Explicitly:

$$
\Phi^{+}(t)=\mathbf{P}(\sigma,X(t))
$$

$$
\Phi^{-}(t)=\mathbf{C}(\sigma,X(t),R(t+1))
$$

$$
\mathcal{Q}(t)=\mathbf{E}(X(t),k)
$$

RDG maps:

- $\mathbf{P}$ → **forward relational flux**  
- $\mathbf{C}$ → **backward relational flux**  
- $\mathbf{E}$ → **Q‑slice selection operator**  

This is not a “renaming”; it is a **change of geometric interpretation**.  
The underlying algebra is unchanged — exactly as the paper requires.

---

### **Relational Sequential Composition**

The RDG expression is a compressed notation for the same universal condition given in the paper. It does not replace the universal quantifier; it encodes it as a moderation constraint on the Q‑slice. The underlying equilibrium definition remains exactly the one in Hedges–Shprits–Winschel–Zahn. RDG rewrites this as **flux chaining**:

$$
\Phi^{+}_{H\circ G}(t) = \Phi^{+}_H(\Phi^{+}_G(t))
$$

$$
\Phi^{-}_{H\circ G}(t) = \Phi^{-}_G(\Phi^{-}_H(t+1))
$$

and the equilibrium condition becomes:

$$
\mathcal{Q}_{H\circ G}(t) = \mathcal{Q}_G\bigl(t,k'\bigr) \;\cap\; \mathcal{Q}_H\bigl(t+1,k\bigr)
$$

with the induced continuation.  

$$
k' = \Phi^{-}_H \circ k \circ \Phi^{+}_H
$$

which is exactly the **MFE feedback loop**. There is *no* claim of equivalence — this is a **compressed RDG‑mode summary**. RDG does not remove “for all $\sigma_1'$”. RDG rewrites the universal quantifier as a **Q‑slice moderation constraint**. The RDG form:

$$
\mathcal{Q}_{H\circ G}(t) = \mathcal{Q}_G(t,k')\;\cap\;\mathcal{Q}_H(t+1,k)
$$

is shorthand for:

$$
(\sigma_1,\sigma_2)\in\mathcal{Q}_{H\circ G}(t) \quad\Longleftrightarrow\quad \begin{cases} \sigma_1\in\mathcal{Q}_G(t,k')\\ \sigma_2\in\mathcal{Q}_H(t+1,k)\text{ for all }\sigma_1' \end{cases}
$$

RDG treats the universal quantifier as a **constraint on the Q‑slice**, not as a literal set intersection.

---

### **Relational Parallel Composition**
RDG does not treat parallel equilibrium as independent maximization. The Cartesian notation is a compact representation of the paired conditional continuations $k_1'$ and $k_2'$ defined in the paper. The Nash dependency structure is preserved. RDG interprets this as **partial flux conditioning**. RDG rewrites this as **flux superposition**:

$$
\Phi^{+}_{G\otimes H}(t) = (\Phi^{+}_G(t),\Phi^{+}_H(t))
$$

$$
\Phi^{-}_{G\otimes H}(t) = (\Phi^{-}_G(t),\Phi^{-}_H(t))
$$

and equilibrium:

$$
\mathcal{Q}_{G\otimes H}(t) = \mathcal{Q}_G(t,k_1')\;\times\;\mathcal{Q}_H(t,k_2')
$$

RDG does not claim independence; RDG compresses the Nash condition into a **paired Q‑slice**. RDG preserves this by defining:

$$
k_1' = k(\cdot,\Phi^+_H) \qquad k_2' = k(\Phi^+_G,\cdot)
$$
  
The RDG form is not independence — it is **paired conditional selection**, exactly Nash.

---

### **Relational Atomic Open Games**

#### Player  

$$
\Phi^{+}(t)=\sigma(X(t))
$$

$$
\mathcal{Q}(t)=\{\sigma\mid \sigma(X(t))\in\varepsilon(k)\}
$$

#### Covariant computation  

$$
\Phi^{+}(t)=f(X(t))
$$

#### Contravariant computation  

$$
\Phi^{-}(t)=f(X(t))
$$

#### Copy, delete, braid  
These become **geometric rewrites** in RDG.

- Copy = SID structural duplication  
- Delete = SID structural erasure  
- Braid = SID interaction symmetry  

---

### **RDG Example Games**

#### Ultimatum Game  

$$
\Sigma = \text{SID.Structure}(Y_1)\;\times\;\text{PED.Power}(Y_2)^{Y_1}
$$

Equilibrium conditions:

$$
\mathcal{Q}(t)=
\{
(\sigma_1,\sigma_2)\mid
\Phi^{+}_1(t)\in\arg\max\mathcal{U}_1,\;
\Phi^{+}_2(t)\in\arg\max\mathcal{U}_2
\}
$$

#### Cournot Duopoly  
RDG does not elevate Cournot to a universal law. It treats it as a **closed-game fixed point**, exactly as it should be. The Cournot expression in RDG is an example of a closed-game Q‑slice, not a general RDG principle. It mirrors the the given example and is not presented as a universal law.

$$
\Phi^{+}(t)=(q_1,q_2)
$$

$$
\Phi^{-}(t)=\bigl(\pi_1,\pi_2\bigr)
$$

$$
\mathcal{Q}(t)=\{q_i^\*=(a-c)/(3b)\}
$$

The Cournot equilibrium **is an example**, exactly as required. The statement is:

> “the Nash quantities are $q_i^\*=(a-c)/(3b)$”  

RDG simply rewrites this as a Q‑slice:

$$
\mathcal{Q}(t)=\{q^\*\}
$$

---

## **📌 Future Work**

- **Open games vs pregames.**  
  A precise comparison between **open games** (Hedges–Ghani–Winschel–Zahn, LICS) and **pregames** (Hedges 2015): differences in objects, composition, continuation structure, and the meaning of equilibrium in each framework.

- **Working diagrammatic calculus.**  
  Develop a full **diagrammatic game calculus**: official atomic components, legal wiring rules, dual‑wire constraints, and rewrite steps. Move beyond example diagrams to a usable calculus.

- **Relational string diagrams.**  
  Use the relational 4‑tuple $(\Sigma,\Phi^+,\Phi^-,\mathcal{Q})$ as the **translation scheme**. Provide drawing conventions and composition rules so any classical game can be expressed diagrammatically in relational form.

- **Nash as a Q‑slice fixed point.**  
  Keep $\sigma\in\mathcal{Q}(x,k)$ as notation. If a **Q‑slice fixed‑point theorem** exists, state hypotheses and prove it. The rename of $\mathbf{E}$ is not the theorem; the fixed‑point structure is.

- **Quantum circuits.**  
  Make the analogy with **quantum circuits** precise: shared monoidal wiring, dual ports, and coherence. A real connection would be a functor or explicit translation, not just shared vocabulary.

- **Flux language.**  
  Keep the official correspondence $\Phi^\pm=\mathbf{P},\mathbf{C}$. Treat **momentum bipolar flux** as semantic conservation or dynamics law is explicitly stated.

---



