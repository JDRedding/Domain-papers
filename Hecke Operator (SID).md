# Hecke Operator (SID)

**SID($T_n$)** — Structure, Interaction, and Dynamics of the classical Hecke operator.

## Types

| Symbol | Meaning |
|--------|---------|
| $k$ | modular-form weight |
| $N$ | level |
| $n$ | Hecke degree |
| $E$ | elliptic curve |
| $C$ | cyclic subgroup of $E$ |
| $\Lambda$ | rank-2 lattice in $\mathbb{C}$ |
| $X_0(N)$ | modular curve of level $N$ |
| $M_k(\Gamma_0(N))$ | modular forms of weight $k$, level $\Gamma_0(N)$ |
| $C_n$ | Hecke correspondence |
| $\mathcal{O}_H$ | Hecke orbit closure |

## Variables

| Symbol | Meaning |
|--------|---------|
| $x$ | point in $X_0(N)$ |
| $E/C$ | quotient elliptic curve |
| $\lvert C\rvert$ | order of subgroup $C$ |
| $[\Lambda:\Lambda']$ | lattice index |

## SID($T_n$)

```text
SID(T_n)
=
{
  S = S_(k,N)
    = M_k(Gamma_0(N))
      or
      X_0(N)

  I = C_n
    = {(E,E/C) | |C| = n}

    = {(Lambda,Lambda')
       | [Lambda:Lambda'] = n}

  D = O_H(x)
    = U_(m>=0)
      C_(n1) o C_(n2) o ... o C_(nm)(x)
}
```

### Structure $S$

The skeleton is the set of geometric objects carrying the modular data:

$$
\mathcal{S} = \{\, \Lambda \subset \mathbb{C} \;\big|\; \Lambda\text{ a lattice of rank }2\,\}
\quad\text{or}\quad
\mathcal{S} = X_0(N)(\mathbb{C}).
$$

Weight and level are part of the structure:

$$
\mathcal{S}_{k,N} = M_k(\Gamma_0(N))\quad\text{or its geometric counterpart}.
$$

### Interaction $I$

The Hecke correspondence closure of level $n$ is the closed subscheme (or cycle)

$$
C_n \subset X \times X
$$

whose generic fibre consists of pairs $(E, E')$ related by a cyclic isogeny of degree $n$:

$$
C_n = \overline{\{\,(E, E/C) \;\big|\; C \subset E,\; \lvert C\rvert = n\,\}}.
$$

Equivalently, in the lattice picture,

$$
C_n = \{\,(\Lambda, \Lambda') \;|\; [\Lambda : \Lambda'] = n\,\}^{\mathrm{cl}}.
$$

The two projections are

$$
\pi_1, \pi_2 : C_n \to X.
$$

### Dynamics $D$

Hecke path completion is the iterative closure under the correspondences. For a point $x \in X$, the path-completed orbit is

$$
\mathcal{O}_H(x) = \overline{\bigcup_{m \ge 0} C_{n_1} \circ \cdots \circ C_{n_m}(x)},
$$

where the union runs over all finite compositions of the correspondences $C_n$ (all $n$).

In operator language this is the smallest set containing $x$ and stable under every

$$
x \;\longmapsto\; \sum_{(x, y) \in C_n} y.
$$

## Associated Hecke Operator

The classical Hecke operator appears only after linearization of the correspondence:

$$
\pi_1, \pi_2 : C_n \to X_0(N)
$$

$$
T_n = (\pi_2)_* \circ (\pi_1)^* : {Div}(X) \to {Div}(X),
$$

or, on functions,

$$
(T_n f)(x) = n^{k-1} \sum_{(x, y) \in C_n} f(y).
$$

The operational endomorphism $T_n$ on modular forms is the linearization of $D$ on the functions of $S$ via the correspondence $I$.
