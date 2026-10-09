### 0. Placement
SID says which paths exist. MFE carries the bipolar state on those paths. PED says the strength, the well, and the local flow. Q accepts or projects the updated state. That is the engine slice of an equation, with no classical step renamed as a layer.

From the master specification:

$$
\mathrm{PED}(E)=(P(E),\mathrm{Eval}(E),D_{\mathrm{slice}}(E)),\qquad E=(M,F,\bar M,\bar F).
$$

PED is the internal field of the Momentum–Flux Engine, not a second geometry. Power is radial engine strength $P(E)=\tfrac12(M^2+F^2)$. Evaluation is the potential $V(M,F,\bar M,\bar F)$. The dynamic-slice is the local admissible flow $\Phi(E)$, or $\partial P-\partial\mathrm{Eval}$.

SID does not emit flux. It emits geometric signals that modulate engine thresholds:

$$
\sigma(G)=\text{structural pressure},\qquad \rho(G)=\text{relational tension},
$$

$$
\theta_M=\theta_M^0+\alpha_\sigma\sigma(G),\qquad \theta_F=\theta_F^0+\beta_\rho\rho(G).
$$

Q is absent from that specification and present in the pipeline: Q tests $\Gamma(X_t)$ against manifold bounds and returns 1 or 0; inadmissible states are projected by $\sigma$. Branch choice is that filter, not a third PED slot.

The balance constraint $F=0$ of an equation is the neutral manifold. It is not the engine coordinate also called $F$. Below, engine flux is written $F_e$.

### 1. Top-level equation
G carries the balance node. A valuation sends nodes to an engine state E.

PED.Power  
$P(E)=\tfrac12(M^2+F_e^2)$: radial strength of the two sides under that valuation.

PED.Evaluation  
$V(E)$: well depth at the balance node. Equality is a critical point of V, not a restatement of SID.I.

PED.Dynamic-slice  
$\Phi(E)$: the local flow generated when an allowed rewrite moves E. Isolation and substitution are flows on E, not new edges.

Q  
$Q[\Gamma(E)]=1$ iff the updated state lies inside the manifold bounds (domain, branch cut, sign, reality). Otherwise $\sigma$ projects back. Coherence length is how far $\Phi$ can run before Q drops to 0.

```
G ──SID signals σ,ρ──► thresholds θ_M, θ_F
E = (M, F_e, M̄, F̄)
P = ½(M²+F_e²)     Eval = V(E)     D_slice = Φ(E)
Q = 1 iff Γ(E) inside bounds, else σ(Γ(E))
```

### 2. Identity, conditional, functional
Identity (`a+b = b+a`).  
P is invariant under the swap: both valuations give the same radial strength. V is flat on the whole domain, so Eval never selects a proper subset. $\Phi$ of the swap is the identity on E. Q = 1 on every valuation; coherence length is the whole domain.

Conditional (`x-5 = 4`).  
P concentrates where the balance well is deepest, at $x=9$. Eval is the well of $V$; it is critical only on $\mathcal{S}(R)=\{9\}$. $\Phi$ is the flow of adding 5: strength moves off the difference node onto the isolated variable. Q = 1 only on that point; elsewhere the pipeline projects. Coherence length is a point.

Functional (`f(x)=g(x)`).  
P is strength along each graph. Eval is critical on the intersection of the output valuations. $\Phi$ is the flow of composition or inversion, preserving criticality of V. Q admits only the intersection of domains where both valuations are defined, and rejects jumps across singularities.

### 3. Algebraic, transcendental, differential
Algebraic.  
P is radial strength of the carrier under the valuation of x. Eval is critical exactly at roots. $\Phi$ is the flow of normalization, factoring, and root extraction; these change representation of E and leave the critical set fixed. Q restricts the critical set (real, positive, physical range). $\sigma(G)$ from degree raises $\theta_M$: higher structural pressure, tighter engine threshold.

Transcendental (`sin x = cos x - 1/2`).  
P is oscillatory because $F_e$ is oscillatory; the spec form $\beta\cos(F_e)$ is the matching well shape. Eval is critical on the discrete intersection. $\Phi$ is identity-rewrite flow, then inverse or iterative flow. Q selects the branch interval and drops at singularities. Coherence is one period unless Q explicitly extends it.

Differential (`dy/dx = f(x)`).  
P is strength of the rate pair. Eval is critical along trajectories whose engine state matches $f$. $\Phi$ is the integral flow. Q admits trajectories that meet initial or boundary bounds and drops when the flow hits a singularity. Coherence length is time-to-singularity, not a geometric edge.

### 4. Degree
Linear.  
P has constant slope set by the leading coefficient. Eval has one critical point. $\Phi$ is the two-step flow: subtract, divide. Q is 1 at that point if it lies in the declared bounds. No branch.

Quadratic.  
P carries curvature; the discriminant is the engine invariant that decides whether V has two real wells, one, or a complex pair. $\Phi$ is complete-the-square or discriminant flow. Q selects which well is admissible. Complex wells are Q = 0 on the real slice and Q = 1 only if the complex band is open.

Cubic and quartic.  
P is higher-order radial strength. Eval has up to three or four critical points. $\Phi$ is the depress / Cardano flow, or the remove-cubic / resolvent flow; both are changes of E that preserve the critical set. Q selects admissible wells and records bifurcations as changes in the admissible band, not as new SID edges. For degree ≥ 5, $\Phi$ by radicals does not reach the full critical set; that is an engine limitation, already stated on the geometry side as insolvability.

### 5. Systems
Each equation has its own E. Joint evaluation is criticality of V on every balance node at once. $\Phi$ is cross-equation flow (substitution, elimination, row reduction) driven by the shared engine update. Q = 1 only on the intersection of the individual admissible sets. A stable manifold versus isolated points is a property of the joint band, not of SID.D.

### 6. Special forms
Binomial (`x^n - a = 0`).  
P is radial strength $a^{1/n}$, with angular distribution on the root circle. Eval is critical at n points in ℂ. $\Phi$ extracts those n engine states from the power node. Q selects the principal or real root and drops across the branch cut.

Reciprocal.  
P is unchanged under $x\leftrightarrow 1/x$. Eval is critical on the symmetric root set. $\Phi$ is the flow $z=x+1/x$. Q excludes x = 0 and any declared modulus band. Coherence across the reciprocal map is Q remaining 1 on both sides of the substitution.

### 7. Closing
```
RDG G = (Obj, Rel)          balance = neutral manifold
SID(G) = (S, I, D)          S ⊆ I ⊆ D ⊆ G
        σ(G), ρ(G)  ──────►  θ_M, θ_F, λ_P, λ_E
MFE E = (M, F_e, M̄, F̄)
PED(E) = ( P=½(M²+F_e²),  Eval=V(E),  D_slice=Φ(E) )
Q[Γ(E)] ∈ {0,1}             else σ-projection
```
