# Vibe Coder vs Software Engineer
```
VIBE CODER                              SOFTWARE ENGINEER

Looks good. It works. Ship it!            Plan. Design. Structure. Scale.

      Yay! It works!                           [focused]

        ( ^_^ )/                                 ( o-o )

       | laptop |                               | laptop |

Prompt / Copy-Paste / Vibe                Architecture / Docs / Testing / Deployment
mug: BUILD FAST                           mug: CLEAN • SCALE • MAINTAIN

```
In words: vibe until the marginal cost of more debt exceeds the marginal gain in speed.

Let

$$
V = \text{vibe coder},\qquad
E = \text{software engineer}.
$$

Let time-to-ship, quality, and expected lifetime be

$$
T > 0,\qquad
Q \in [0,1],\qquad
L > 0.
$$

Let complexity, users, and change rate be

$$
C \ge 1,\qquad
U \ge 0,\qquad
\lambda \ge 0.
$$

---

### Objective

Vibe maximizes speed:

$$
\max_{V}\; \frac{1}{T_V}
\quad\text{subject to}\quad
Q_V \ge Q_{\min}^{\text{demo}}.
$$

Engineering maximizes durable value:

$$
\max_{E}\; \frac{Q_E \cdot L_E}{T_E + M_E}
\quad\text{subject to}\quad
R_E \le R_{\max},
$$

where $M$ is maintenance cost and $R$ is incident rate.

---

### Time-to-ship

$$
T_V = T_0 + \alpha\,C
\qquad
T_E = T_0 + \beta\,C\log C + T_{\text{tests}} + T_{\text{docs}}
$$

with

$$
0 < \alpha \ll \beta.
$$

So

$$
T_V < T_E
\quad\text{for typical } C.
$$

---

### Quality

$$
Q_V = 1 - e^{-\gamma n_{\text{tries}}}
\qquad
Q_E = 1 - \delta\,C^{-\kappa}
$$

where $n_{\text{tries}}$ is prompt / paste cycles.

Usually

$$
Q_V(0^+) > Q_E(0^+),
\qquad
\lim_{t\to\infty} Q_E(t) > \lim_{t\to\infty} Q_V(t).
$$

---

### Technical debt

Let debt $D$ satisfy

$$
\frac{dD}{dt} = \eta\,(1-Q)\,\lambda C - \mu\,W,
$$

where $W$ is cleanup work and $\mu$ is refactor efficiency.

For vibe,

$$
\eta_V \gg \eta_E,\qquad \mu_V \ll \mu_E,
$$

so $D_V$ grows until a rewrite.

---

### Maintenance

$$
M(t) = M_0 + \int_0^t \sigma D(\tau)\,d\tau
$$

Hence late cost:

$$
\mathbb{E}[M_V] \approx M_0 + \sigma\eta_V C L,
\qquad
\mathbb{E}[M_E] \approx M_0 + \sigma\eta_E C\log C \cdot L.
$$

---

### Incident rate

$$
R = \rho\,\frac{C U}{Q}\,(1+D)
$$

Threshold for “ship it”:

$$
\text{ship} \iff R \le R_{\max} \;\wedge\; Q \ge Q_{\min}.
$$

Vibe uses

$$
Q_{\min}^{V} \approx Q_{\text{demo}},\qquad
R_{\max}^{V} \text{ large}.
$$

Engineering uses

$$
Q_{\min}^{E} \approx Q_{\text{prod}},\qquad
R_{\max}^{E} \text{ small}.
$$

---

### Mode selection

Define a mode function

$$
m(L,U,C) =
\begin{cases}
V & \text{if } L < L_* \;\wedge\; U < U_* \;\wedge\; C < C_* \\
E & \text{otherwise.}
\end{cases}
$$

A continuous version:

$$
p(E) = \sigma\!\left(
a\log L + b\log(1+U) + c\log C - \theta
\right)
$$

where $\sigma(x) = (1+e^{-x})^{-1}$ is the probability you should engineer, not vibe.

---

### Value

Let value be

$$
\mathcal{V} = U \cdot Q \cdot \min(L,L_{\text{useful}}) - k_T T - k_M M - k_R R.
$$

Then the useful comparison is not $V$ vs $E$ as identities, but

$$
\mathcal{V}(V;\, L\text{ small})
\;>\;
\mathcal{V}(E;\, L\text{ small})
$$

and

$$
\mathcal{V}(E;\, L\text{ large},\, U\text{ large})
\;>\;
\mathcal{V}(V;\, L\text{ large},\, U\text{ large}).
$$

---

### Hybrid rule

Spike then harden:

$$
x(t) =
\begin{cases}
V & 0 \le t < t_* \\
E & t \ge t_*
\end{cases}
\qquad
t_* = \arg\min_t \big( T_V(t) + M_E(L-t) \big).
$$

---

## UNDER THE HOOD
```
Vibe Coder                                 Software Engineer

COPY PASTE     QUICK FIX     TRY THIS      Frontend ——— Backend  
BROKEN?        ADD LATER     TEMP          Database ——— APIs  
IDK BUT IT WORKS                           Services ——— Monitoring  

spaghetti wires, spilled mug               labeled racks, tidy cables
```

```ts
// vibe_coder.ts vs software_engineer.ts

type VibeCoder = {
  strategy: "looks-good" | "it-works" | "ship-it";
  mood: "Yay! It works!";
  face: "( ^_^ )/";
  tool: "laptop";
  workflow: ["prompt", "copy-paste", "vibe"];
  mug: "BUILD FAST";
};

type SoftwareEngineer = {
  strategy: "plan" | "design" | "structure" | "scale";
  mood: "focused";
  face: "( o-o )";
  tool: "laptop";
  workflow: ["architecture", "docs", "testing", "deployment"];
  mug: "CLEAN • SCALE • MAINTAIN";
};

const vibe: VibeCoder = {
  strategy: "ship-it",
  mood: "Yay! It works!",
  face: "( ^_^ )/",
  tool: "laptop",
  workflow: ["prompt", "copy-paste", "vibe"],
  mug: "BUILD FAST",
};

const engineer: SoftwareEngineer = {
  strategy: "scale",
  mood: "focused",
  face: "( o-o )",
  tool: "laptop",
  workflow: ["architecture", "docs", "testing", "deployment"],
  mug: "CLEAN • SCALE • MAINTAIN",
};

// under the hood

type VibeInternals = {
  method: "COPY PASTE" | "QUICK FIX" | "TRY THIS";
  whenBroken: "ADD LATER" | "TEMP";
  confidence: "IDK BUT IT WORKS";
  wiring: "spaghetti";
  desk: "spilled mug";
};

type EngineerInternals = {
  layers: {
    frontend: "Backend";
    database: "APIs";
    services: "Monitoring";
  };
  wiring: "labeled racks";
  desk: "tidy cables";
};

const vibeUnderTheHood: VibeInternals = {
  method: "COPY PASTE",
  whenBroken: "ADD LATER",
  confidence: "IDK BUT IT WORKS",
  wiring: "spaghetti",
  desk: "spilled mug",
};

const engineerUnderTheHood: EngineerInternals = {
  layers: {
    frontend: "Backend",
    database: "APIs",
    services: "Monitoring",
  },
  wiring: "labeled racks",
  desk: "tidy cables",
};

// fundamentals

enum Mode {
  Spike = "vibe",
  Production = "engineer",
}

function chooseMode(lifespanMonths: number, usersYouDontKnow: boolean): Mode {
  if (lifespanMonths < 3 && !usersYouDontKnow) return Mode.Spike;
  return Mode.Production;
}

// rule
// vibe the spike
// then delete half
// put the rest behind an interface, a test, and a deploy
```
