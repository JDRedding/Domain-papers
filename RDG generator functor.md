# RDG generator functor
The **RDG generator functor** is the single operator that turns **free data** into a full **SID object**. It is the machine behind patterns. Below is the operator-mode definition.

## Generator functor
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

### Domain of the functor

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

### Codomain of the functor

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

### 3. Action of the functor

Given free data $D$, the generator functor produces the following.

#### S-mode: structure

$$
S(D) = \text{canonical structural embedding of } D
$$

Examples:

- Dyad → two-point structure
- Triad → three-point structure
- Jet → anchored derivative tower
- Spectrum → frequency lattice

#### I-mode: interactions

$$
I(D) = \text{constructors induced by } D
$$

Examples:

- Roots → polynomial interaction
- Möbius triple → cross-ratio action
- Vector field → directional interaction
- Jet → differential constraints

#### D-mode: dynamics

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

### The deletion test (functor minimality)

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

## Functorial laws

The generator functor

$$
\Gamma : \mathbf{FreeData}(\mathcal{C}) \longrightarrow \mathbf{RDG}(\mathcal{C})
$$

is functorial if it preserves identity, composition, SID structure, and minimality of free data.

Write objects of the domain as free-data packages $D$, and morphisms as **seed maps**

$$
\phi : D \to D'
$$

that send generators of $\mathcal{C}$ to generators of $\mathcal{C}'$ without adding extra data.

The image of a seed map is an SID morphism

$$
\Gamma(\phi) : \Gamma(D) \to \Gamma(D').
$$

---

### Identity preservation

For every free-data object $D$,

$$
\Gamma(\mathrm{id}_D) = \mathrm{id}_{\Gamma(D)}.
$$

Unpacked in SID form:

$$
\Gamma(\mathrm{id}_D) =
\langle
\mathrm{id}_{S(D)},\;
\mathrm{id}_{I(D)},\;
\mathrm{id}_{D(D)}
\rangle.
$$

Meaning:

- the structural embedding of $D$ is left unchanged,
- the induced constructors are left unchanged,
- the induced dynamics are left unchanged.

If the seed is not rewritten, the generated SID object is not rewritten.

---

### Composition preservation

Given seed maps

$$
D \xrightarrow{\phi} D' \xrightarrow{\psi} D'',
$$

the functor law is

$$
\Gamma(\psi \circ \phi) = \Gamma(\psi) \circ \Gamma(\phi).
$$

In SID components:

$$
\begin{aligned}
S(\psi \circ \phi) &= S(\psi) \circ S(\phi), \\
I(\psi \circ \phi) &= I(\psi) \circ I(\phi), \\
D(\psi \circ \phi) &= D(\psi) \circ D(\phi).
\end{aligned}
$$

So generation commutes with composition of seeds:

```text
first rewrite free data, then generate
=
generate, then rewrite the SID object
```

---

### SID-mode naturality

A seed map $\phi : D \to D'$ must act **modewise**. There is a naturality square for each mode.

Let $\pi_S, \pi_I, \pi_D$ be the projections from an SID triple onto its three components. Then

$$
\begin{aligned}
\pi_S \circ \Gamma(\phi) &= S(\phi) \circ \pi_S, \\
\pi_I \circ \Gamma(\phi) &= I(\phi) \circ \pi_I, \\
\pi_D \circ \Gamma(\phi) &= D(\phi) \circ \pi_D.
\end{aligned}
$$

Diagrammatically, for structure (and likewise for $I$ and $D$):

$$
\begin{CD}
\Gamma(D) @>{\Gamma(\phi)}>> \Gamma(D') \\
@V{\pi_S}VV @VV{\pi_S}V \\
S(D) @>>{S(\phi)}> S(D')
\end{CD}
$$

Naturality says: $\Gamma$ does not mix modes. A change of free data that is purely structural stays structural; an interaction rewrite stays an interaction rewrite; a dynamic rewrite stays dynamic.

This is the RDG form of “the functor respects the SID decomposition.”

---

### Free-data minimality morphisms

A seed map $\phi : D \to D'$ is a **minimality morphism** if it neither discards necessary generators nor introduces redundant ones.

Write $D' \preceq D$ when $D'$ is a sub-seed of $D$. The deletion test then becomes a statement about $\Gamma$:

$$
D \text{ is free data}
\iff
(
D' \prec D
\;\Rightarrow\;
\Gamma(D') \not\cong \Gamma(D)
).
$$

Equivalently: every proper inclusion of seeds

$$
\iota : D' \hookrightarrow D
$$

is sent to a **strict** SID morphism

$$
\Gamma(\iota) : \Gamma(D') \hookrightarrow \Gamma(D)
$$

that fails to be an isomorphism.

Consequences:

- If $\phi$ collapses a generator, some constructor in $I(\phi)$ or some flow in $D(\phi)$ dies.
- If $\phi$ is an isomorphism of free data, then $\Gamma(\phi)$ is an SID isomorphism.
- Redundant data cannot be “secretly” present: any extra component that can be deleted while leaving $\Gamma$ unchanged was never free data.

This is the functorial form of the deletion test.

---

### Compact statement of the laws

A map $\Gamma$ is an RDG generator functor when all four hold:

1. $\Gamma(\mathrm{id}_D) = \mathrm{id}_{\Gamma(D)}$
2. $\Gamma(\psi \circ \phi) = \Gamma(\psi) \circ \Gamma(\phi)$
3. $\Gamma(\phi)$ is modewise natural with respect to $S$, $I$, and $D$
4. proper sub-seeds are sent to non-isomorphic SID objects

In one line:

$$
\Gamma(\langle D \rangle) =
\langle S(D),\; I(D),\; D(D) \rangle
\quad\text{and}\quad
\Gamma \text{ preserves identities, composition, SID, and minimality.}
$$

---

### How the earlier examples sit inside the laws

| Seed map | What $\Gamma$ must preserve |
|---|---|
| permute roots of a dyad/triad/tetrad | polynomial, up to monic scaling |
| send three point-images to three point-images | Möbius action / cross-ratio |
| reparametrize a vector field by a diffeomorphism | ODE conjugacy |
| truncate a jet | loss of local PDE determination |
| drop a Fourier mode | change of spectrum |
| change a basis | change of matrix representation |
| replace group generators by another generating set | isomorphic presentation only if relations match |

In each case, identity of seeds gives identity of SID objects; composition of seed rewrites gives composition of generated systems; mode projections commute with generation; and deleting a necessary generator breaks isomorphism.

---
