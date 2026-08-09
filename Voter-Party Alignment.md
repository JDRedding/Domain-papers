## **Voter-Party Alignment**
**Three‑Axis Political Alignment Model**  

All alignment scores lie in $[0,1]$, where $1$ indicates perfect alignment and $0$ indicates complete misalignment.  
This formalization captures the structural idea:  
- Identity, policy, and tone are **independent axes**.  
- Voters are typically **hybrid**, not purely aligned.  
- A two‑party system compresses a multi‑dimensional value space into a binary choice.

---

### **Core Notation**
- $V$ — the voter  
- $D, R$ — the two major U.S. political parties  
- $I(V,P)$ — identity alignment between voter $V$ and party $P$  
- $Po(V,P)$ — policy alignment  
- $T(V,P)$ — moral‑tone alignment  
- $w_I, w_{Po}, w_T$ — non‑negative weights with $w_I + w_{Po} + w_T = 1$  
- $A(V,P)$ — overall alignment score

Geometric objects

**Voters and parties as points in a relational space**

- **Voter:**
  
$$V = (\mathbf{i}_V,\ \mathbf{v}_V,\ \mathbf{t}_V)$$
  
- **Party:**
  
$$P = (\mathbf{i}_P,\ \mathbf{p}_P,\ \mathbf{t}_P)$$

Each component is itself a vector in a subspace:

- **Identity space:** $\mathcal{I} \subset \mathbb{R}^{k_I}$  
- **Policy space:** $\mathcal{Po} \subset \mathbb{R}^{k_{Po}}$  
- **Tone space:** $\mathcal{T} \subset \mathbb{R}^{k_T}$

So the full **alignment space** is:

$$
\mathcal{A} = \mathcal{I} \times \mathcal{Po} \times \mathcal{T}
$$

Voters and parties are **configurations** in $\mathcal{A}$.

---

## **Axis Definitions**

### **1. Identity Alignment**  
Identity is modeled as similarity between two feature vectors:

$$
I(V,P) = \{sim}(\mathbf{i}_V, \mathbf{i}_P)
$$

with cosine similarity:

$$
\{sim}(\mathbf{x},\mathbf{y}) = 
\frac{\mathbf{x}\cdot\mathbf{y}}{\|\mathbf{x}\|\;\|\mathbf{y}\|}
$$

Identity features include cultural, demographic, community, and symbolic cues.  

Points:

- **Identity relation:**  

  $$I(V,P) = \{sim}(\mathbf{i}_V,\mathbf{i}_P)$$
  
- **Policy relation:**

  $$Po(V,P) = f_{\text{policy}}(\mathbf{v}_V,\mathbf{p}_P)$$
  
- **Tone relation:**
  
  $$T(V,P) = \{sim}(\mathbf{t}_V,\mathbf{t}_P)$$
  
---

### **2. Policy Alignment**  
Policy positions form an $n$-dimensional issue space. Let $\mathbf{v}$ be the voter’s ideal point and $\mathbf{p}$ the party’s platform.

Distance‑based formulation:

$$
Po(V,P) = 1 - \frac{\|\mathbf{v} - \mathbf{p}\|}{d_{\max}}
$$

Weighted issue‑by‑issue formulation:

$$
Po(V,P) = \sum_{j=1}^n \alpha_j\, s_j(v_j, p_j),
\qquad \sum \alpha_j = 1
$$

where $s_j \in [0,1]$ is the agreement score on issue $j$.  

---

### **3. Moral‑Tone Alignment**  
Tone is represented as a stylistic feature vector:

$$
T(V,P) = \{sim}(\mathbf{t}_V, \mathbf{t}_P)
$$

capturing dimensions such as respect/aggression, optimism/fear, pragmatism/purity, inclusion/exclusion.  

---

## **Overall Alignment**
The composite alignment score is a weighted sum of the three axes:

$$
A(V,P) = w_I\, I(V,P) + w_{Po}\, Po(V,P) + w_T\, T(V,P)
$$

with $A(V,P) \in [0,1]$.

These are **relational maps**:

$$I,\ Po,\ T : \mathcal{A} \times \mathcal{A} \to [0,1]$$

They don’t live *inside* the space — they **act on pairs of points** in the space.

---

## **Decision Rule**
The preferred party is the one maximizing overall alignment:

$$
P^* = \arg\max_{P \in \{D,R\}} A(V,P)
$$

Hybrid or mixed alignment is captured by the difference:

$$
\Delta = |A(V,D) - A(V,R)|
$$

Small $\Delta$ indicates the voter is not strongly aligned with either party.

Make it **dynamic**:

- Parties move over time:
  
$$P(t) = ( \mathbf{i}_P(t),\ \mathbf{p}_P(t),\ \mathbf{t}_P(t) )$$
  
- Voters evolve too:
  
$$V(t) = ( \mathbf{i}_V(t),\ \mathbf{v}_V(t),\ \mathbf{t}_V(t) )$$

Alignment becomes a **time‑dependent relational field**:

$$A_t(V,P) = A\big(V(t), P(t)\big)$$

Have:

- **Trajectories** of parties and voters in $\mathcal{A}$ 
- **Changing relational distances** and alignments over time  
- Possible **critical points** where $P^*(t)$ (preferred party) flips as trajectories cross relational thresholds.

## “Hybrid” views

Relational geometry view of “hybrid” voters

Define the **alignment difference**:

$$\Delta(V) = |A(V,D) - A(V,R)|$$

Geometrically:

- Small $\Delta(V)$ means $V$ lies near the **relational bisector** between $D$ and $R$ under their personal metric $g_V$.
- The “hybrid zone” is a **region** in $\mathcal{A}$ where many voters have low $\Delta$.

You can imagine:

- A **manifold of voters** embedded in $\mathcal{A}$  
- Two **moving party points**  
- A **relational field** $A(V,P)$ defined over all voter–party pairs  
- Regions where the field is nearly equal for both parties—your hybrid band.
- 
---

## **Optional Four‑Domain Policy Expansion**  
If policy is decomposed into governance, economic, social/cultural, and foreign‑policy domains:

$$
Po(V,P) = \sum_{k=1}^{4} \beta_k\, Po_k(V,P),
\qquad \sum \beta_k = 1
$$

Each $Po_k$ is computed using the same distance or issue‑agreement method as above.

