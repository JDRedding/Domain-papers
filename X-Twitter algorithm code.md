# X/Twitter algorithm code
Here are the main mathematical definitions, formulas, and associated notation for four concepts: TweepCred, RealGraph, TwHIN, and SimClusters. These are drawn from the open-sourced sources. They are the core equations. TweepCred is a post-processed PageRank, RealGraph is a logistic probability on interaction features, TwHIN is a TransE-style dense embedding, and SimClusters is a sparse community membership vector obtained from bipartite graph factorization + community detection. All four feed into candidate generation and ranking stages of the X recommendation system.

## 1. TweepCred (Reputation / Scaled PageRank)

**Raw PageRank mass** (standard iterative form, with damping/jump probability $d \approx 0.1$):

$$
PR(u) = \frac{d}{N} + (1-d) \sum_{v \in \text{in-neighbors}(u)} \frac{PR(v) \cdot w_{v \to u}}{\text{out-weight}(v)}
$$

where $w_{v \to u}$ can be 1 (unweighted) or a RealGraph-derived weight.

**Post-adjustment for high following/follower ratio** (from `Reputation.adjustReputationsPostCalculation`):

Let  
- $F =$ number of followers  
- $G =$ number of followings (friends)  

If $G > 2500$:

$$
r = \frac{1 + G}{1 + F}
$$

$$
\text{divFactor} = \exp\Bigl(3.0 \cdot (r - 0.6) \cdot \ln(\ln G)\Bigr)
$$

$$
\text{adjustedMass} = \frac{\text{mass}}{\max\bigl(1,\; \min(50,\; \text{divFactor})\bigr)}
$$

Otherwise $\text{adjustedMass} = \text{mass}$.

**Scaling to TweepCred score** $\in [0,100]$ (from `Reputation.scaledReputation`):

$$
\text{TweepCred}(u) = 
\begin{cases}
0 & \text{if } PR(u) = 0 \text{ or } PR(u) < 10^{-20} \\
\text{clamp}\bigl({round}(130 + 5.21 \cdot \ln(PR(u))),\; 0,\; 100\bigr) & \text{otherwise}
\end{cases}
$$

(The constants come from a linear fit mapping log-PageRank of the strongest accounts $\to 95$ and weakest $\to 15$.)

## 2. RealGraph (Directed Tie-Strength / Interaction Probability)

RealGraph produces a directed weighted graph where the weight on edge $A \to B$ is the predicted probability of *any* future interaction from $A$ to $B$.

It is a **logistic regression**:

$$
P(A \text{ interacts with } B) = \sigma(\mathbf{w}^\top \mathbf{x}_{A,B}) = \frac{1}{1 + e^{-\mathbf{w}^\top \mathbf{x}_{A,B}}}
$$

where $\mathbf{x}_{A,B}$ is a feature vector containing:
- Counts / EWMA / days-since-last for each interaction type (favorite, retweet, reply, mention, profile click, etc.)
- Follow relationship type and age
- Common neighbors, topic overlap, user-level activity features, etc.

The model is trained with labels $+1$ (interaction occurred in a future window) / $-1$ (did not).

## 3. TwHIN (Dense Heterogeneous Information Network Embeddings)

TwHIN uses a **TransE-style** scoring function on a heterogeneous graph (multiple node types + multiple relation types).

For an edge $e = (s, r, t)$ (source entity, relation, target entity):

$$
f(s, r, t) = (\boldsymbol{\theta}_s + \boldsymbol{\theta}_r)^\top \boldsymbol{\theta}_t
$$

Training objective (negative sampling):

$$
\max_{\theta} \sum_{e \in E} \Biggl[ \log \sigma\bigl(f(e)\bigr) + \sum_{e' \in N(e)} \log \sigma\bigl(-f(e')\bigr) \Biggr]
$$

where $N(e)$ are negative (corrupted) edges and $\sigma$ is the sigmoid.  
The resulting dense vectors $\boldsymbol{\theta}$ live in a shared embedding space and are used for similarity / ranking features.

## 4. SimClusters (Sparse Community Embeddings)

**Notation**  
- $A \in \mathbb{R}^{m \times n}$: bipartite follow-graph matrix (consumers $\times$ producers)  
- $k \approx 145\,000$: number of communities  

**Known-For matrix** $V \in \mathbb{R}^{n \times k}$ (maximally sparse):  
Each producer is assigned to at most one community via Metropolis-Hastings community detection on the producer-producer cosine-similarity graph.

**Consumer (Interested-In) embeddings**:

$$
U = A V
$$

(often truncated to keep only the strongest community scores per user).

**Producer embeddings** $\tilde{V}$:  
For each producer, the cosine similarity between its follower vector and each community’s Interested-In vector.

A **SimClusters embedding** of a user or tweet is therefore a sparse vector

$$
\mathbf{s} = \bigl[(c_1, s_1), (c_2, s_2), \dots \bigr]
$$

where $c_i$ are community IDs and $s_i > 0$ are affiliation strengths.

**Similarity** between two embeddings $\mathbf{s}$ and $\mathbf{t}$:

$$
\text{cosine}(\mathbf{s}, \mathbf{t}) = \frac{\mathbf{s} \cdot \mathbf{t}}{\|\mathbf{s}\|_2 \|\mathbf{t}\|_2}
$$

(computed efficiently via approximate nearest-neighbor search over the sparse representations).

---
