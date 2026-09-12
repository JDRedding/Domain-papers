# 🧠 Deep AI Difficulty 
AI finds highly constrained, low-dimensional domains easy and loosely constrained, high-dimensional domains hard. Public debates about “depth” rarely distinguish these axes. AI difficulty is determined by the geometry of a domain’s manifold—specifically its constraint density and dimensionality—not by the vague notion of “depth” used in public debate. Booch, Lee, and Greenblatt talk past one another because they use “depth” to mean different things. The comment that “domain manifolds vary in dimension” is the right middle path: it points to the underlying structure none of them name.

---

# Domain Geometry and Constraint Density

### 1. Domain manifolds as geometric spaces

A domain of knowledge or skill can be modeled as a **manifold**: a structured space with

- **dimensionality** — how many independent relational degrees of freedom exist  
- **constraint density** — how tightly rules, invariants, or feedback signals restrict movement  
- **gradient structure** — how easy it is to improve by local optimization  
- **connectivity** — how regions relate, and whether intuition can jump between them  

This geometric framing explains why domains feel “deep,” “shallow,” “hard,” or “easy” depending on their structure.

---

# Competing Definitions of “Depth”

The public debate mixes three incompatible meanings of “depth”:

### 1. Software-architecture depth (Booch)

Depth means many constraints, many interdependencies, and many ways to break things.  
This corresponds to **high constraint density** but **low dimensionality**.

### 2. ML / optimization depth (Greenblatt)

Depth means few gradients, sparse feedback, and a hard climb.  
This corresponds to **low gradient density** and **high difficulty for AI**.

### 3. Tacit-knowledge depth (Lee)

Depth means non-formalizable knowledge, intuition, and judgment.  
This corresponds to **high dimensionality** and **low constraint density**.

These definitions point in different directions, which is why the debate looks contradictory.

---

## The Actual Determinant

Across domains, the factor that most determines how hard a domain is for AI is **constraint density**.

Formally:

$$
\text{AI Difficulty} \propto \frac{1}{\text{Constraint Density}}
$$

That is:

- high constraint density → easier for AI  
- low constraint density → harder for AI  

### Why?

Constraints collapse the manifold:

- fewer degrees of freedom  
- clearer gradients  
- tighter feedback loops  
- smaller search space  
- more predictable structure  

AI excels in these environments: math, code, physics problem sets, games.

Unconstrained domains expand the manifold:

- more freedom  
- sparse gradients  
- tacit knowledge  
- non-local intuition  
- relational synthesis  
- ambiguous feedback  

AI struggles here: ethics, strategy, narrative, creativity, leadership.

---

## Dimensionality vs. Constraint Density

A key distinction:

- **Dimensionality** = how many independent relational axes exist  
- **Constraint density** = how tightly those axes are restricted  

High dimensionality does **not** imply high constraint density. They often move in opposite directions.

In relational terms:

- low-dimensional manifolds → highly constrained → easier for AI  
- high-dimensional manifolds → loosely constrained → harder for AI  

This is the axis inversion that Booch’s framing obscures.

---

## Middle Path

The claim that “domain manifolds vary in dimension—some have more, some less” points to the geometric structure underlying all three views:

- some domains are low-dimensional and tightly constrained (easy for AI)  
- some are high-dimensional and loosely constrained (hard for AI)  
- some look shallow until they hit a “depth ceiling”  
- some look deep but are composed of many shallow submanifolds  

This framing dissolves the disagreement by showing that each participant is describing a different class of manifold.

---

## The Missing Concept in the Public Debate

None of the participants explicitly discusses:

- constraint density  
- manifold dimensionality  
- gradient sparsity  
- non-local intuition jumps  
- cross-manifold synthesis  

These are the structural determinants of AI capability.
