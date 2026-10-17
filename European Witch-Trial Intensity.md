# European Witch-Trial Intensity 16th–17th Century 
***RDG–SID–PED–Q Model***

Persecution intensity is a derived field on a relational geometry, not a cultural or *superstition* primitive. Variation across Europe is explained by institutional configuration + political fragmentation + confessional conflict. The same base geometry $\Gamma$ admits different field configurations. SID (region-centric) and PED (institution-centric) are compatible projections. The observed historical map is the image under the functor $\mathcal{F}$ of the actual institutional objects of the period, quotiented by $Q$ into stable, admissible intensity categories.

## 1. Geometry
 RDG Base Geometry $\Gamma$

### Nodes
- **$\Gamma_{\text{geo}}$** — territorial nodes  
  $\{\text{HRE core}, \text{Switzerland}, \text{Bavaria}, \text{France (parts)}, \text{Spain}, \text{Italy}, \text{Ireland}, \dots\}$

- **$\Gamma_{\text{inst}}$** — institutional nodes  
  $\{\text{local courts}, \text{village courts}, \text{Inquisition}, \text{royal councils}, \text{common-law courts}, \dots\}$

### Edges

$$
E \subset (\Gamma_{\text{geo}} \times \Gamma_{\text{inst}}) \cup (\Gamma_{\text{inst}} \times \Gamma_{\text{inst}})
$$

Encoding: jurisdiction links, appeal paths, confessional adjacency.

### Base object

$$
\Gamma = (\Gamma_{\text{geo}} \cup \Gamma_{\text{inst}}, E)
$$

Persecution intensity $P$ is a **field on $\Gamma_{\text{geo}}$**.

## 2. State Fields on $\Gamma$

| Field | Domain | Range | Interpretation |
|-------|--------|-------|----------------|
| $F$ | $\Gamma_{\text{geo}}$ | $[0,1]$ | Fragmentation (high in HRE, low in Spain/Italy) |
| $C$ | $\Gamma_{\text{inst}}$ | $[0,1]$ | Centralization (high for Inquisition/royal courts) |
| $T$ | $\Gamma_{\text{inst}}$ | $\{0,1\}$ | Torture admissibility |
| $X$ | $\Gamma_{\text{geo}}$ | $[0,1]$ | Confessional conflict (peaks at Protestant/Catholic borderlands) |
| $E_v$ | $\Gamma_{\text{inst}}$ | $[0,1]$ | Evidentiary strictness (high for Inquisition / common law) |
| $\rho$ | $\Gamma_{\text{geo}}$ | $[0,1]$ | Rumor / kin-network density |
| $\eta$ | $\Gamma_{\text{geo}}$ | $[0,1]$ | Elite-intervention propensity |

**Intensity field:**

$$
P : \Gamma_{\text{geo}} \to [0,1]
$$

(normalized execution intensity)

## 3. SID Layer (Structure–Interaction–Dynamics)

Region-centric view. For each $R \in \Gamma_{\text{geo}}$:

- **Structure**
  
$$
S(R) = \big(F(R),\ \{C(I), T(I), E_v(I)\}_{I \sim R}\big)
$$

- **Interaction**
  
$$
I(R) = \big(X(R),\ \rho(R),\ \eta(R)\big)
$$

- **Dynamics**

$$
D(R) = \Phi\big(S(R), I(R)\big)
$$

  where $\Phi$ is the cascade kernel (gain vs. damping).

**Concrete realization:**

$$
P(R) = \sigma\Big(
\alpha_F F(R)+ \alpha_T \sum_{I\sim R} T(I)- \alpha_C \sum_{I\sim R} C(I)- \alpha_{E_v} \sum_{I\sim R} E_v(I)+ \alpha_X X(R)+ \alpha_\rho \rho(R)- \alpha_\eta \eta(R)
\Big)
$$

($\sigma$ saturating; $\alpha$ relative weights)

- Heavy zones (HRE core, Switzerland, Bavaria, parts of France): $P(R) \approx 1$
- Minimal zones (Ireland, southern Spain, most of Italy, etc.): $P(R) \approx 0$

## 4. PED Layer (Power–Evaluation–Dynamics)

Institution-centric view. For each $I \in \Gamma_{\text{inst}}$:

- **Power**

$$
P_w(I) = \big(\text{jurisdictional reach},\ \text{appeal authority},\ C(I)\big)
$$

- **Evaluation**

$$
E(I) = \big(E_v(I),\ \delta(I),\ \kappa(I)\big)
$$

  ($\delta$: demonological acceptance; $\kappa$: skepticism of panic)

- **Institutional dynamics**

$$
D_I(I) = \Psi\big(P_w(I), E(I), T(I)\big)
$$

**Aggregation:**
$$
P(R) = \sum_{I\sim R} w_{R,I}\, D_I(I)
$$

SID and PED are compatible projections of the same configuration on $\Gamma$.

## 5. Q-Mode Structure

Quotient map from continuous intensity to discrete categories:

$$
Q : P(R) \mapsto \text{PersecutionLevel}(R) \in \{\text{heavy}, \text{moderate}, \text{light}, \text{minimal}\}
$$

| Level | Condition |
|-------|-----------|
| heavy | $P(R) \geq \theta_3$ |
| moderate | $\theta_2 \leq P(R) < \theta_3$ |
| light | $\theta_1 \leq P(R) < \theta_2$ |
| minimal | $P(R) < \theta_1$ |

- **Q-admissibility:** configuration yields $P(R)$ inside the historically observed band for that region.
- **Q-stability:** small perturbations in the fields do not cross a threshold $\theta_k$.

The categorical intensity map is exactly $Q \circ P$.

## 6. Historical Configurations

| Configuration | Dominant SID/PED signature | Resulting Q-mode |
|---------------|----------------------------|------------------|
| Germany-type (HRE) | Many low-$C$, low-$E_v$, high-$T$ local institutions + high $X$ + high $\rho$ | heavy ($P \approx 1$; ~40% of European executions) |
| Spain/Italy-type | Few high-$C$, high-$E_v$, low-$T$ Inquisition institutions (damping) | minimal / light (near-zero executions for witchcraft) |
| Ireland-type | Common-law courts: high $E_v$, $T=0$, strong jury filter | minimal (near-zero executions) |

## 7. Functorial View

- **Category $\mathcal{C}_{\text{inst}}$**  
  Objects: institutional configurations $(\Gamma_{\text{inst}}, C, T, E_v, P_w, E)$  
  Morphisms: structure-preserving reforms (centralization, torture abolition, evidentiary tightening, etc.)

- **Category $\mathcal{C}_{\text{int}}$**  
  Objects: intensity-quotient structures $(P, Q)$ on $\Gamma_{\text{geo}}$  
  Morphisms: threshold- and ordering-preserving maps

**Functor:**

$$
\mathcal{F} : \mathcal{C}_{\text{inst}} \to \mathcal{C}_{\text{int}}
$$

$$
\begin{align*}
\mathcal{F}(\text{Germany-type}) &= \text{heavy-mode structure on HRE (moderate/light elsewhere)} \\
\mathcal{F}(\text{Spain/Italy/Ireland-type}) &= \text{minimal/light-mode structure}
\end{align*}
$$
