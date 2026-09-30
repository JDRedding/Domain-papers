# RDG generator functor
The **RDG generator functor** is the single operator that turns **free data** into a full **SID object**. It is the machine behind patterns. Below is the operator-mode definition.

The generator functor is

$$
\Gamma : \mathbf{FreeData}(\mathcal{C}) \longrightarrow \mathbf{RDG}(\mathcal{C}).
$$

It takes the minimal generative data for an object class $\mathcal{C}$ and returns the full RDG triad:

$$
\Gamma(D) = \langle S(D),\; I(D),\; D(D) \rangle,
$$

where

- $S(D)$ is structural mode,
- $I(D)$ is interaction constructors,
- $D(D)$ is dynamic propagation.

This is the universal pattern behind the examples.

---

## 1. Domain of the functor

For each mathematical class $\mathcal{C}$, define

$$
\mathbf{FreeData}(\mathcal{C}) = \text{minimal generative inputs}.
$$

Examples:

- **Dyad:** $(r_1, r_2)$
- **Triad:** $(r_1, r_2, r_3)$
- **Tetrad:** $(r_1, r_2, r_3, r_4)$
- **Möbius triple:** three point-images
- **Vector field:** $F$
- **Jet:** $J^k$
- **Spectrum:** $\{\hat{f}(\omega)\}$
- **Taylor jet:** $\{f^{(n)}(a)\}$

This domain is not the object class itself. It is the minimal seed.

---

## 2. Codomain of the functor

$$
\mathbf{RDG}(\mathcal{C}) = \text{SID objects built from }\mathcal{C}.
$$

Every RDG object is a triple:

```text
RDG(𝓒) = SID⟨ S , I , D ⟩
```

- **S** — structural anchors
- **I** — interaction rules
- **D** — dynamic evolution

---

## 3. Action of the functor

Given free data $D$, the generator functor produces the following.

### S-mode: structure

$$
S(D) = \text{canonical structural embedding of } D
$$

Examples:

- Dyad → two-point structure
- Triad → three-point structure
- Jet → anchored derivative tower
- Spectrum → frequency lattice

### I-mode: interactions

$$
I(D) = \text{constructors induced by } D
$$

Examples:

- Roots → polynomial interaction
- Möbius triple → cross-ratio action
- Vector field → directional interaction
- Jet → differential constraints

### D-mode: dynamics

$$
D(D) = \text{propagation rules determined by } D
$$

Examples:

- Polynomial → evaluation dynamics
- Gradient potential → gradient flow
- Hamiltonian → symplectic evolution
- Jet → PDE propagation

---

## 4. Full definition

$$
\Gamma(D) =
\left\langle
\underbrace{S(D)}_{\text{structure}},\;
\underbrace{I(D)}_{\text{interaction}},\;
\underbrace{D(D)}_{\text{dynamics}}
\right\rangle
$$

This is the generator functor.

It is the universal constructor behind:

- cubic → triad
- quartic → tetrad
- Möbius → triple
- Newton → dyad
- linear → slope
- affine → pair
- gradient → potential
- Hamiltonian → energy
- ODE → vector field
- PDE → jet
- Fourier → spectrum
- Taylor → jet
- matrix → columns
- linear map → basis images
- quadratic form → symmetric matrix
- inner product → metric
- Julia set → parameter
- Riemann sphere → point at infinity
- projective line → homogeneous pair
- group → generators
- presentation → relations
- category → arrows
- functor → assignment

All of these are instances of

$$
\Gamma : \mathbf{FreeData}(\mathcal{C}) \to \mathbf{RDG}(\mathcal{C}).
$$

---

## 5. The deletion test (functor minimality)

The criterion is the formal minimality condition:

$$
D \text{ is free data }
\iff
\Gamma(D') = \varnothing
\text{ for all proper subsets } D' \subset D.
$$

If removing any part of $D$ kills the constructors, then $D$ is the correct generator.

This is the RDG version of “delete it and see if anything still builds.”

---
