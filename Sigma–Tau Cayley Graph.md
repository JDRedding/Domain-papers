# Sigma–Tau Cayley Graph ($G_N$)
## The $\sigma$ - $\tau$ graph

Let $S_N$ be the symmetric group on $\{1,2,\dots,N\}$. Write permutations in one-line notation

$$
\pi=p_1p_2\dots p_N.
$$

Fix the two generators

$$
\tau=(1\ 2),\qquad
\sigma=(1\ 2\ \dots\ N).
$$

Acting on the left they become the concrete word operations

$$
\tau(\pi)=p_2p_1p_3\dots p_N
\qquad\text{(SWAP of the first two positions)}
$$

and

$$
\sigma(\pi)=p_2p_3\dots p_N p_1
\qquad\text{(ROTATE one place left)}.
$$

(The same theory works with a right action or with a right rotate; only the orientation of the edges changes.)

The **directed $\sigma$ - $\tau$ graph** (also called the Sigma-Tau graph) is the Cayley digraph

$$
G_N=\overrightarrow{{Cay}}(S_N,\{\sigma,\tau\}).
$$

It has $N!$ vertices and out-degree $2$. An edge is labelled $S$ when it is produced by $\tau$ and $R$ when it is produced by $\sigma$.

A Hamiltonian path in $G_N$ is precisely a listing of all $N!$ permutations in which each consecutive pair differs by exactly one of the two allowed moves. A Hamiltonian cycle exists only when such a listing can be closed.

## Existence

- A Hamiltonian **path** exists in $G_N$ for every $N\ge2$.
- A Hamiltonian **cycle** exists if and only if $N$ is odd (Rankin’s criterion forbids a cycle when $N>2$ is even).

Thus a claim “none for $N\ge5$” is false: already for $N=5$ there are five inequivalent directed Hamiltonian cycles.

## Small - $N$ catalogues (Gosper)

Write a path as the sequence of generators that produce it, starting from the identity. Distinct reverses are counted separately.

$$
\begin{array}{c|c|l}
N & \text{paths}+\text{reverses} & \text{generator words}\\
\hline
2 & 2+0 & S,\quad R\\
3 & 2+1 & SRRSR,\quad RRSRR\\
4 & 3+3 &
\begin{array}{l}
SRR\,RSR\,SRR\,RSR\,RRS\,RSR\,RSR\,RR\\
RSR\,SRR\,RSR\,RRS\,RSR\,RRS\,RSR\,RR\\
SRR\,RSR\,RRS\,RRS\,RSR\,RRS\,RRR\,SR
\end{array}
\end{array}
$$

Each word of length $N!-1$ visits every vertex exactly once.

## Diameter and local structure 
Useful auxiliary formulae

The underlying undirected graph still has degree $2$, so it is a disjoint union of cycles and paths; the directed version is an oriented 2-regular graph. The length of a shortest directed path from the identity to an arbitrary $\pi$ is the minimal number of factors

$$
\ell(\pi)=\min\{k\mid\pi=\sigma^{a_1}\tau^{b_1}\cdots\sigma^{a_k}\tau^{b_k},\; a_i\ge0,\;b_i\in\{0,1\}\}.
$$

No simple closed form for $\ell$ is known, but the existence proofs construct an explicit successor function

$$
{next}:S_N\to S_N,\qquad
{next}(\pi)\in\{\sigma(\pi),\tau(\pi)\}
$$

that is a permutation of $S_N$ consisting of a single $N!$ -cycle (odd $N$) or a single Hamiltonian path (all $N$).

## Relation to a 2-swap configuration graph

If every transposition (not merely the single fixed pair $\tau$) is allowed, one obtains the undirected configuration graph $G(P)$ of the previous messages; its diameter is the exact formula

$$
{diam}(G(P))=N-\max_i P_i.
$$

Restricting the generating set to $\{\sigma,\tau\}$ produces the far sparser $\sigma$ - $\tau$ graph discussed here.

## ASCII
```
# ------------------------------------------------------------
# Fundamental Types
# ------------------------------------------------------------
type Symbol        = integer
type Permutation   = sequence of N distinct Symbols
type Generator     = {σ, τ}
type Vertex        = Permutation
type Edge          = (Permutation → Permutation)
type CayleyGraph   = (Vertices, Edges)

# ------------------------------------------------------------
# Core Variables
# ------------------------------------------------------------
N        : integer, N ≥ 2
S_N      : symmetric group on {1,2,...,N}
π        : element of S_N, written π = p₁ p₂ ... p_N
σ        : N‑cycle (1 2 ... N)
τ        : transposition (1 2)
G_N      : directed Cayley graph Cay(S_N, {σ, τ})

# ------------------------------------------------------------
# Generator Actions (Left Action)
# ------------------------------------------------------------
# τ swaps the first two positions
τ(π) = p₂ p₁ p₃ ... p_N

# σ rotates left by one position
σ(π) = p₂ p₃ ... p_N p₁

# ------------------------------------------------------------
# Directed Sigma–Tau Graph Definition
# ------------------------------------------------------------
Vertices(G_N) = S_N
Edges(G_N)    = { π → σ(π),  π → τ(π) }
OutDegree     = 2
EdgeLabels    = S for τ,  R for σ

# ------------------------------------------------------------
# Hamiltonian Structure
# ------------------------------------------------------------
# A Hamiltonian path is a sequence of N! permutations
# where each step is exactly one generator application.

ExistsHamiltonianPath(N)   = true for all N ≥ 2
ExistsHamiltonianCycle(N)  = true iff N is odd

# Rankin’s criterion forbids directed Hamiltonian cycles
# for even N > 2.

# ------------------------------------------------------------
# Gosper’s Small‑N Catalogue
# ------------------------------------------------------------
# Paths written as generator words from the identity.
# Distinct reverses counted separately.

N = 2
Paths = 2
Words = S, R

N = 3
Paths = 2 + 1
Words = SRRSR,  RRSRR

N = 4
Paths = 3 + 3
Words:
  SRR RSR SRR RSR RRS RSR RSR RR
  RSR SRR RSR RRS RSR RRS RSR RR
  SRR RSR RRS RRS RSR RRS RRR SR

# Each word has length N! − 1 and visits all permutations.

# ------------------------------------------------------------
# Distance / Diameter Notes
# ------------------------------------------------------------
# Directed shortest path length from identity to π:
# No closed form known.
# Defined by minimal factorization:
#
#   ℓ(π) = min k such that
#          π = σ^{a₁} τ^{b₁} ... σ^{a_k} τ^{b_k}
#          with aᵢ ≥ 0,  bᵢ ∈ {0,1}

# Existence proofs construct:
#
#   next : S_N → S_N
#   next(π) ∈ { σ(π), τ(π) }
#
# next is a permutation of S_N forming:
#   - one N!‑cycle when N is odd
#   - one Hamiltonian path when N is even

# ------------------------------------------------------------
# Relation to 2‑Swap Configuration Graph G(P)
# ------------------------------------------------------------
# If all transpositions are allowed (not just τ),
# we obtain the undirected configuration graph G(P)
# for Parikh vector P = (1,1,...,1).

# Its diameter is:
#   diam(G(P)) = N − max_i P_i = N − 1

# Restricting generators to {σ, τ} yields the far sparser
# directed Sigma–Tau graph G_N described above.

# ------------------------------------------------------------
# Key Takeaway
# ------------------------------------------------------------
# The claim “none for N ≥ 5” is false.
# Hamiltonian paths exist for all N ≥ 2.
# Hamiltonian cycles exist for all odd N.
```
