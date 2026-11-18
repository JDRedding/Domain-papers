# ⚠️ THE DOOM LOOP
### A Coupled Dynamical Systems Formalization of Recursive Fiscal Instability

> A multi-channel positive-feedback model in which tax cuts, debt accumulation, austerity, demand contraction, wage suppression, and productivity erosion reinforce one another.

---

## State Variables

| Symbol | Description |
|--------|-------------|
| $Y$ | GDP |
| $g$ | GDP growth rate |
| $C$ | Consumption |
| $I$ | Investment |
| $G$ | Government spending |
| $T$ | Tax revenue |
| $\tau$ | Effective tax rate |
| $TB$ | Taxable base |
| $D$ | Deficit |
| $B$ | Public debt |
| $b$ | Debt-to-GDP ratio |
| $i$ | Interest rate |
| $u$ | Unemployment rate |
| $W$ | Aggregate wages |
| $P$ | Profits |
| $K$ | Productive capital stock |
| $S$ | Public services / public capital |
| $H$ | Human capital |
| $A$ | Productivity |
| $M$ | Social mobility |

---

## Core Identities

**National income**
```math
Y = C + I + G + NX
```

**Tax revenue**
```math
T = \tau \cdot TB(Y, W, P)
```

**Deficit**
```math
D = G - T + iB
```

**Debt evolution**
```math
\frac{dB}{dt} = D
\quad\text{or}\quad
B_{t+1} = (1+i_t)B_t + D_t
```

**Debt ratio**
```math
b = \frac{B}{Y}, \qquad
\frac{db}{dt} = \frac{D}{Y} - bg
```

---

## Feedback Channels

**Austerity response**
```math
G = G_0 - \alpha b \quad (\alpha > 0)
\implies \frac{\partial G}{\partial b} < 0
```

**Short-run demand**
```math
\frac{\partial Y}{\partial G} > 0
\quad\text{or}\quad
\Delta Y = k_G \Delta G \quad (k_G > 0)
```

**Employment (Okun)**
```math
\frac{du}{dt} = -\beta(g - g^*) \quad (\beta > 0)
```

**Wages**
```math
\frac{dW}{dt} = -\gamma u \quad (\gamma > 0)
```

**Consumption**
```math
C = cW \quad (0 < c < 1)
```

**Investment (accelerator)**
```math
I = I_0 + \eta g \quad (\eta > 0)
```

**Public services**
```math
\frac{dS}{dt} = \phi G - \delta S
```

**Human capital**
```math
\frac{dH}{dt} = \rho S - \mu H \quad (\rho > 0)
```

**Productivity**
```math
A = A(S, H)
\quad\bigl(\partial A/\partial S > 0,\; \partial A/\partial H > 0\bigr)
```

**Production (Cobb–Douglas)**
```math
Y = A\, K^\alpha L^{1-\alpha}
```

**Mobility–growth link**
```math
M = M(S, H), \qquad g_{\text{future}} = g_0 + \theta M \quad (\theta > 0)
```

---

## Reduced-Form Doom-Loop Recursion

```math
Y_{t+1}
= Y_t
+ \alpha G_t
- \beta \tau_t
- \gamma \frac{B_t}{Y_t}
```
(with $\alpha > 0$, $\beta > 0$, $\gamma > 0$)

---

## Full State-Space System

```math
\mathbf{X}
=
\begin{bmatrix}
Y & B & b & u & W & C & I & S & H & A
\end{bmatrix}^\top
```

```math
\dot{\mathbf{X}} = F(\mathbf{X})
\quad\text{or}\quad
\mathbf{X}_{t+1} = F(\mathbf{X}_t)
```

**Linearization**
```math
\frac{d}{dt}(\delta\mathbf{X}) = J\,\delta\mathbf{X},
\qquad
J = DF
```

**Instability condition (strongest form of the claim)**
```math
\max_i{Re}\lambda_i(J) > 0
```

---

## The Loop (qualitative)

```text
τ ↓  →  T ↓  →  D ↑  →  B ↑  →  b ↑  →  G ↓
                                         ↓
                                        Y ↓
                                         ↓
                    ┌─────────────────────┴─────────────────────┐
                    ↓                                           ↓
                   u ↑                                         S ↓
                    ↓                                           ↓
                   W ↓                                         H ↓
                    ↓                                           ↓
                   C ↓                                         A ↓
                    ↓                                           ↓
                   Y ↓  ←──────────────────────────────────────┘
                    ↓
              tax base ↓  →  T ↓  →  (repeats)
```

---

