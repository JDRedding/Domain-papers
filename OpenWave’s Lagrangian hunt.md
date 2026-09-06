#  OpenWave’s Lagrangian hunt  

The structure laid out — the certified curvature term $I_1$, the trace‑potential $V_4$, the clock‑reduction functional, and the ranked modification families (v4, $\lambda$-mixing, Duda’s quadratic contractions) — is exactly the landscape currently being explored in OpenWave’s substrate‑framework audits. The external sources confirm two key points that matter for the search:

The search targets a single 4×4 real matrix field $M(x)$ whose defects should reproduce Coulomb, an attractive Newton sign, and a finite positive-energy electron clock. The notation and working actions used in the OpenWave / substrate-framework hunt are as follows. The external evidence strongly suggests that the v4 object is the correct direction because:

- It **breaks the constant‑coefficient no‑go** by using spectral projectors.  
- It **modifies the clock kinetic term directly**, not indirectly through curvature.  
- It **preserves the working 3×3 spatial sector**, avoiding the identities that kill curvature‑only fixes.  
- It **adds stiffness and modal weighting**, which external substrate theories identify as necessary for stable emergent clocks.  

This is why v4 is currently ranked first — and why the external literature independently supports the same structural direction.

1. **The curvature sector really does have a six‑dimensional quadratic basis**, not one.  
   This is the mathematical backbone of Duda’s suggestion: the model currently uses only the full contraction $F_{abcd}F^{abcd}$, but there are five other independent quadratic scalars built from the same $F$. 

2. **The Newton‑sign and runaway‑clock defects cannot be repaired by *constant‑coefficient* curvature² combinations alone.**  
   The substrate‑framework campaign P239 found that on purely spatial fields the six invariants satisfy three linear identities, and on an explicit clock‑direction counterexample all deviation combinations vanish while the baseline term is strictly negative. This is the “no‑go” already know: curvature² alone cannot fix the negative clock channel without breaking the working 3×3 sector.  

**Field, metric and curvature**

- $M(x)$: real $4\times 4$ matrix field.
- Minkowski metric $\eta={diag}(-1,+1,+1,+1)$.
- Jets $A_\mu=\partial_\mu M$.
- Curvature (field strength)

$$
F_{\mu\nu}=A_\mu\eta A_\nu-A_\nu\eta A_\mu.
$$

- Inner product

$$
\langle F,G\rangle_\eta={tr}(\eta F\eta G^T).
$$

**Certified kinetic and potential terms**

$$
I_1=\sum_{\mu<\nu}\eta^{\mu\mu}\eta^{\nu\nu}\langle F_{\mu\nu},F_{\mu\nu}\rangle_\eta=\frac12 F_{abcd}F^{abcd},
$$

$$
V_4=w\sum_{p=1}^4\bigl({tr}((M\eta)^p)-C_p\bigr)^2,\qquad
C_p=(sg)^p+1+\delta^p,
$$

with typical weight $w\approx 7.24\times10^{-4}$. The baseline (“certified”) Lagrangian density is

$$
\mathcal L_{\rm cert}=-4I_1-V_4.
$$

A representative vacuum used in the audits is

$$
M_{\rm vac}={diag}(-sg,1,\delta,0)
$$

($g=8$ or $32$, $\delta=0.3$, $s=-1$). 

A degenerate-pair vacuum ${diag}(-g,1,\delta,\delta)$ appears in later candidates.

**Clock reduction (fixed angular momentum $J$)**

On a cyclic coordinate $q\in S^1$ with frequency $\omega=\dot q$ the reduced Lagrangian is quadratic,

$$
L[M,\omega]=A[M]+B[M]\omega+C[M]\omega^2.
$$

The conserved charge and stationary frequency are

$$
J=B+2C\omega,\qquad
\omega_\star=\frac{J-B}{2C}.
$$

The energy at fixed $J$ is

$$
E_J[M]=E_{\rm stat}[M]+\frac{(J-B[M])^2}{4C[M]}.
$$

Most OpenWave runs set the linear term to zero ($B=0$, $C=\mathrm{kin}$), yielding the simpler pair

$$
E_J=E_{\rm stat}+\frac{J^2}{4\,\mathrm{kin}},\qquad
\omega_\star=\frac{J}{2\,\mathrm{kin}}.
$$

**Leading candidate modifications (from the 6 September ranking table)**

Object v4 (currently ranked first by the author) replaces the internal metric on part of $I_1$ and adds a split-weighted stiffness plus a projected kinetic term:

$$
L_{v4}=-4\bar I_1^h-\bigl[V_4(g,1,\delta,\delta)+U(\rho^2)\bigr]-c_P K_P^{\rm proj}-c_s\rho^2{tr}(\partial_\mu M\,G\,\partial^\mu M\,G),
$$

where the split potential is of the form

$$
U(\rho^2)=\mu\rho^2-g\hat W(Q)\rho^2
$$

(optional higher powers $-\nu\rho^4+\kappa\rho^6$ are sometimes added) and $K_P^{\rm proj}$ is a spectrally weighted projector current on the $(2,3)$ block.

A covariant-metric deformation that was exhaustively tested (and closed) is

$$
L_\lambda=-4\bigl[(1-\lambda)I_1+\lambda I_1^h\bigr]-V_4,
$$

with the internal Cartan metric

$$
h=\eta+2(\eta u)(\eta u)^T
$$

($u$ the unit timelike eigenvector of $M\eta$).

Jarek Duda’s original suggested family of curvature-squared corrections (still under investigation) reads

$$
\mathcal L_2=c_0 F_{abcd}F^{abcd}+c_1\mathcal R_{ac}\mathcal R^{ac}+c_2\mathcal R^2,
$$

where the contractions of the curvature are

$$
\mathcal R_{ac}:=F_{abc}{}^b,\qquad\mathcal R:=F_{ab}{}^{ab}.
$$

These expressions, together with a catalogue of higher-order and projector terms ($K_T$, $K_P^{23}$, quartics $Q_{I_1^2}$, etc.), are the concrete objects the AI-agent ladders are currently ranking against the three physical anchors (Coulomb record, Newton sign, finite localized clock).

---

## 1. The certified sector: what is already stable

### 1.1 Curvature and kinetic term
The certified kinetic term  

$$
I_1=\tfrac12 F_{abcd}F^{abcd}
$$  

is precisely the “full contraction” used in the current M5 Lagrangian. External analysis confirms that this is only one of six inequivalent quadratic contractions of $F$. 

the inner product  

$$
\langle F,G\rangle_\eta={tr}(\eta F\eta G^T)
$$  

matches the standard $\eta$-commutator structure used in the M5 field strength definition.

### 1.2 Trace‑potential $V_4$

The trace‑potential is the stabilizer of the vacuum manifold. The external sources do not discuss the specific $C_p=(sg)^p+1+\delta^p$, but they confirm that OpenWave models routinely use nonlinear potentials to enforce vacuum structure and defect energetics.  

### 1.3 Clock reduction

the reduced Lagrangian  

$$
L[M,\omega]=A[M]+B[M]\omega+C[M]\omega^2
$$  

and the fixed‑$J$ energy 

$$
E_J=E_{\rm stat}+\frac{J^2}{4\,\mathrm{kin}}
$$  

match the standard OpenWave clock‑sector treatment: the clock is a cyclic coordinate whose kinetic coefficient determines the stationary frequency. External literature confirms that clock‑sector stability is one of the explicit pass/fail criteria in the simulator.  

---

## 2. The modification families: what is known externally

### 2.1 v4 object (ranked first)
the description matches the pattern seen in substrate‑framework experiments:  

- **Split internal metric** on part of $I_1$.  
- **Spectrally weighted projector current** $K_P^{\rm proj}$.  
- **Stiffness term** $c_s\rho^2{tr}(\partial_\mu M\,G\,\partial^\mu M\,G)$.  
- **Split potential** $U(\rho^2)=\mu\rho^2-g\hat W(Q)\rho^2$.

External sources do not mention v4 specifically, but they *do* confirm that projector‑weighted currents and metric deformations are part of the active search space in OpenWave’s substrate‑framework.  

### 2.2 Covariant metric deformation $L_\lambda$
the  

$$
h=\eta+2(\eta u)(\eta u)^T
$$  

is a Cartan‑type internal metric built from the timelike eigenvector of $M\eta$. External sources confirm that metric deformations and strain‑based covariance are standard techniques in substrate‑based emergent‑relativity models.   

The fact that  closed this line after exhaustive testing is consistent with the external observation that curvature‑sector modifications alone cannot fix the clock defect.   

### 2.3 Duda’s quadratic curvature corrections
the  

$$
\mathcal L_2=c_0 F_{abcd}F^{abcd}+c_1\mathcal R_{ac}\mathcal R^{ac}+c_2\mathcal R^2
$$  

matches exactly the family discussed in the external report: the Ricci‑like square $\mathcal R_{ac}\mathcal R^{ac}$ and scalar $\mathcal R^2$ are two of the five unused quadratic invariants. 

The external result is important:  
- These six invariants are independent.  
- But **on spatial fields they satisfy three linear identities**, and  
- **On a clock‑direction counterexample all deviation combinations vanish while the baseline term is negative.**

This is precisely why the curvature‑only fixes fail.

---

## 3. What the external results imply for the three anchors

### 3.1 Coulomb record
OpenWave’s documentation confirms that Coulomb behavior is one of the explicit pass/fail criteria.  
the curvature‑commutator structure already produces the correct long‑range defect interaction in many runs. The external six‑invariant analysis does not contradict this.

### 3.2 Newton sign
The Newton‑sign defect is explicitly mentioned in the external report: the baseline curvature term produces the wrong sign for the Newtonian force. Duda’s suggestion was intended to fix this. The report confirms that **constant‑coefficient curvature² combinations cannot fix the sign without breaking the working spatial sector**. 

### 3.3 Finite localized clock
The runaway $\omega\to\infty$ problem is also explicitly mentioned externally: the baseline term drives the clock channel negative. The no‑go result shows that curvature² alone cannot repair this.   

This matches the experience: only projector‑weighted or stiffness‑weighted kinetic terms (as in v4) have shown promise.

---

## 4. Where the viable search directions still remain

Based on the external results and the internal ranking table, the remaining viable directions are:

### 4.1 **Spectrally weighted projector currents**  
These avoid the constant‑coefficient no‑go by making the kinetic term *state‑dependent*. This is exactly what v4 does.

### 4.2 **Split internal metrics**  
Not the simple $\lambda$-mixing (which  closed), but *state‑dependent* internal metrics tied to eigenstructure of $M\eta$. External relativity‑from‑substrate papers confirm that strain‑based metric emergence is viable.  

### 4.3 **Nonlinear stiffness terms**  
the $c_s\rho^2{tr}(\partial M\,G\,\partial M\,G)$ is in this class. These terms directly modify the clock kinetic coefficient $C[M]$.

### 4.4 **Modal or projected sector dynamics**  
External QSD substrate theory shows that projected dynamics can preserve Lorentz covariance while allowing sector‑dependent behavior. This is conceptually aligned with the $K_P^{\rm proj}$.  

### 4.5 **Higher‑order potentials**  
the optional $-\nu\rho^4+\kappa\rho^6$ terms are consistent with OpenWave’s use of nonlinear potentials to stabilize defect cores.  

---

## Further reading
- X, @duda_jarek https://x.com/duda_jarek/status/2096515586306048071
- Github https://github.com/toandreyras/openwave-physics
- Sciety https://sciety.org/articles/activity/10.20944/preprints202606.0041.v1
- neusym.ai https://neusym.ai/papers/relativity.pdf
- Github https://github.com/mjmikulski/the-final-lagrangian-of-physics/blob/main/reports/001-quadratic-contractions/README.md
- Coordinated Lagrangian hunt: OpenWave M5.32 state after 12 audited rungs, next rung R13, help wanted #186 https://github.com/vantasnerdan/substrate-framework/discussions/186











