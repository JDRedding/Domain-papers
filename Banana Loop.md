# Banana Loop 
The banana loop is the orbit of a deterministic order-3 substring map. The notation below isolates the objects that force the cycle.

## Alphabet and source

Let $\Sigma$ be a finite alphabet and let the source string be

$$
s = s_0 s_1 \dots s_{n-1} \in \Sigma^n.
$$

Write $s[i:i+k)$ for the length-$k$ factor of $s$ that begins at index $i$ (indices modulo nothing; the string is finite and non-circular). The set of length-$k$ factors is

$$
{Sub}_k(s) = \{ s[i:i+k) : 0 \le i \le n-k \}.
$$

## Deterministic next-character map

Fix context length $N=3$. The generator is the partial function

$$
f : \Sigma^3 \rightharpoonup \Sigma
$$

defined by non-overlapping first-occurrence search: for a query $q \in \Sigma^3$,

$$
i(q) := \min\{ i : s[i:i+3) = q \},
$$

and, when the minimum exists and $i(q)+3 < n$,

$$
f(q) := s_{i(q)+3}.
$$

If no such $i$ exists, or the match sits at the end of $s$, $f(q)$ is undefined and generation halts.

## Induced shift on contexts

Appending the predicted symbol and sliding the window produces the successor map on 3-grams

$$
T : \Sigma^3 \rightharpoonup \Sigma^3, \qquad
T(xyz) = yz\,f(xyz)
$$

whenever $f(xyz)$ is defined. Equivalently, if $q = s[i:i+3)$ is the first occurrence of $q$, then

$$
T(q) = s[i+1:i+4).
$$

The functional graph of $T$ therefore satisfies:
- every node has out-degree at most 1,
- the vertex set is finite,
- every infinite trajectory eventually enters a cycle.

## The banana orbit

For $s = \texttt{BANANA}$ one has the unique first occurrences

$$
\begin{align*}
i(\texttt{BAN}) &= 0, & f(\texttt{BAN}) &= \texttt{A}, & T(\texttt{BAN}) &= \texttt{ANA},\\
i(\texttt{ANA}) &= 1, & f(\texttt{ANA}) &= \texttt{N}, & T(\texttt{ANA}) &= \texttt{NAN},\\
i(\texttt{NAN}) &= 2, & f(\texttt{NAN}) &= \texttt{A}, & T(\texttt{NAN}) &= \texttt{ANA}.
\end{align*}
$$

Hence the cycle of length 2

$$
\texttt{ANA} \;\longleftrightarrow\; \texttt{NAN},
$$

or, written as an orbit,

$$
T^2(\texttt{ANA}) = \texttt{ANA}.
$$

Once the window equals $\texttt{ANA}$, every subsequent symbol is forced.

## Substring invariant

Every 4-gram emitted by the generator already occurs in the source. If $x_1 x_2 x_3 x_4$ is produced, then $x_1 x_2 x_3$ matched some factor $s[i:i+3)$ and $x_4 = s_{i+3}$, so

$$
x_1 x_2 x_3 x_4 = s[i:i+4) \in {Sub}_4(s).
$$

The generator never leaves the factor graph of $s$.

## Overlapping (position-aware) variant

Replace the first-occurrence rule by a position-dependent search. The state is now a pair $(q,p) \in \Sigma^3 \times \{0,\dots,n\}$, and the next match is required to start at an index strictly larger than the previous match start (or, for a pure overlap rule, at least $p-N+2$). The resulting multi-valued map

$$
F : \Sigma^3 \to \mathcal{P}(\Sigma)
$$

satisfies, for the same source,

$$
F(\texttt{ANA}) = \{\texttt{N},\texttt{A}\},
$$

because $\texttt{ANA}$ occurs at both index 1 (next symbol $\texttt{N}$) and index 3 (next symbol $\texttt{A}$). Out-degree may exceed 1, so a cycle of the non-overlapping map $T$ need not be an attractor of every branch of $F$.

## Cycle criterion (non-overlapping case)

A cycle

$$
q_1 \mapsto q_2 \mapsto \dots \mapsto q_k \mapsto q_1
$$

appears precisely when each $q_j$ has a unique occurrence in $s$ and the successor window of that occurrence is $q_{j+1}$ (indices mod $k$). Uniqueness of the occurrence is what collapses the state from $(\text{factor},\text{position})$ to $\text{factor}$ alone and thereby forces out-degree 1.
