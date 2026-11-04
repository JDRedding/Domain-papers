### Reliability Framework
*Mathematical Equations and Notation*

In the realtional formulation the fundamental object is a time-dependent relational state rather than a scalar lifetime. All quantities below are defined with respect to that state.


**Reliability function**

$$
R_{\mathrm{Relational}}(t)=\Phi(Q(t))
$$

where

- $Q(t)=(S(t),I(t),D(t))$ is the relational state (SID triad: structure, interaction, dynamics),
- $\Phi:\mathcal{Q}\to[0,1]$ is the relational coherence (persistence) measure.

**Equivalent expressions**

$$
\Phi(Q(t))=\exp(-\Psi(t))=\exp\left(-\int_0^t\chi(u)\,du\right)
$$

with

- $\chi(t)=-\dfrac{d}{dt}\ln\Phi(Q(t))$ the relational strain rate,
- $\Psi(t)=\int_0^t\chi(u)\,du$ the accumulated relational strain.

**Boundary conditions**

$$
\Phi(Q(0))=1,\qquad\lim_{t\to\infty}\Phi(Q(t))=0
$$

(when the relational structure completely decoheres).

**Differential form**

$$
\frac{d}{dt}\Phi(Q(t))=-\chi(t)\,\Phi(Q(t))
$$

This is the direct counterpart of the reliability function $R(t)=P(T>t)$.

#### Fundamental variables and notation

- $Q(t)$: relational state at time/scale $t$
- SID triad: $Q(t)=(S(t),I(t),D(t))$, where  
  $S$ = structure operator,  
  $I$ = interaction operator,  
  $D$ = dynamics operator
- $\Phi(Q(t))$: relational coherence / persistence measure, $\Phi:\mathcal{Q}\to[0,1]$
- $\chi(t)$: relational strain rate (strain operator density)
- $\Psi(t)$: accumulated relational strain
- $\rho_{\mathrm{loss}}(t)$: instantaneous coherence-loss density
- ${Deg}(t)$: relational degradation measure
- ${MPH}$: mean persistence horizon
- $\Gamma$: coarse-graining operator (optional)
- $N_i,\delta_i$: number of surviving relational states and observed closure failures (empirical estimators)

#### Core definitions

Relational coherence (survival function):

$$
R_{\mathrm{Relational}}(t)=\Phi(Q(t))
$$

with boundary conditions

$$
\Phi(Q(0))=1,\qquad
\lim_{t\to\infty}\Phi(Q(t))=0
$$

(when the relational structure completely decoheres).

Relational degradation:

$$
{Deg}(t)=1-\Phi(Q(t))
$$

Instantaneous coherence-loss density:

$$
\rho_{\mathrm{loss}}(t)=-\frac{d}{dt}\Phi(Q(t))
$$

Relational strain rate:

$$
\chi(t)=-\frac{d}{dt}\ln\Phi(Q(t))=\frac{\rho_{\mathrm{loss}}(t)}{\Phi(Q(t))}
$$

Accumulated relational strain:

$$
\Psi(t)=\int_0^t\chi(u)\,du
$$

Recovery equation (coherence from accumulated strain):

$$
\Phi(Q(t))=\exp(-\Psi(t))
$$

Master evolution equation:

$$
\frac{d\Phi}{dt}=-\chi(t)\,\Phi
$$

Mean persistence horizon:

$$
{MPH}=\int_0^\infty\Phi(Q(t))\,dt
$$

#### Compact form

$$
\begin{aligned}
Q&=(S,I,D)\\
\Phi(Q)&=\text{relational coherence}\\
\chi&=-\frac{d}{dt}\ln\Phi\\
\Psi&=\int\chi\,dt\\
\Phi&=e^{-\Psi}\\
\frac{d\Phi}{dt}&=-\chi\Phi\\
{MPH}&=\int_0^\infty\Phi\,dt
\end{aligned}
$$

#### System-level formulas (independent relational subsystems)

Series (all subsystems must remain coherent):

$$
\Phi_{\mathrm{sys}}=\prod_i\Phi_i
$$

Parallel (relational redundancy):
$$
\Phi_{\mathrm{sys}}=1-\prod_i(1-\Phi_i)
$$

$k$ -out-of- $n$ (closure survives if at least $k$ distinction paths remain; identical subsystems):

$$
\Phi_{\mathrm{sys}}=\sum_{i=k}^n\binom{n}{i}\Phi^i(1-\Phi)^{n-i}
$$

#### Parametric models

Constant relational strain (exponential analogue):

$$
\Phi(t)=e^{-\chi t}
$$

Changing strain geometry (Weibull analogue):

$$
\Phi(t)=\exp\left[-\left(\frac{t}{\eta}\right)^\beta\right]
$$

Interpretations: $\beta<1$ early instability / distinction stabilization; $\beta=1$ stationary strain field; $\beta>1$ amplified closure stress / structural fatigue.

#### Empirical estimator

Kaplan–Meier analogue:

$$
\hat{\Phi}(t)=\prod_{t_i\le t}\left(1-\frac{\delta_i}{N_i}\right)
$$

where $N_i$ is the number of surviving relational states just prior to the $i$-th observed closure failure and $\delta_i$ is the number of observed closure failures at that point.
