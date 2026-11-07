# Method of Equal Proportions (Huntington-Hill)
***Abstract Formulation***

Let there be $m$ entities (states, parties, etc.) with positive sizes
$p_1,p_2,\dots,p_m$ (populations, votes, etc.) and a total of $H$
indivisible divisions to allocate. Let $a_i$ denote the number of divisions
assigned to entity $i$, with

$$
\sum_{i=1}^{m} a_i = H,
\qquad
a_i \in \mathbb{Z}_{\ge 0}.
$$

## Priority Value

The priority of entity $i$ for receiving an additional divisions when it
currently holds $a_i$ divisions is

$$
A_i(a_i) =
\frac{p_i}{\sqrt{a_i(a_i+1)}}.
$$

If every entity is guaranteed at least one division, initialize with
$a_i=1$ and allocate the remaining $H-m$ divisions. Otherwise, an
alternative initial divisor or eligibility threshold must be specified.

## Sequential Allocation Procedure

1. Initialize $a_i \leftarrow a_i^{(0)}$ for each entity.

2. While

$$
\sum_{i=1}^{m} a_i < H,
$$

   compute all priority values $A_i(a_i)$.

3. Assign the next divisions to the entity

$$
k   =
*{arg\,max}_{1\le i\le m}
A_i(a_i).
$$

4. Update

$$
a_k \leftarrow a_k + 1.
$$

5. Repeat until exactly $H$ divisions have been assigned.

## Representation Ratio

The representation ratio of entity $i$ is

$$
r_i=
\frac{p_i}{a_i},
$$

interpreted as the population represented per divisions.

## Characterizing Property

The Huntington-Hill allocation seeks to equalize representation ratios
across entities. It is characterized by the use of the geometric-mean
divisor and is equivalent to selecting the allocation for which no
single-divisions transfer improves proportional representation according to
the equal-proportions criterion.

For two entities $i$ and $j$, the relative disparity in
representation may be expressed as

$$
\left|
\frac{r_i}{r_j} - 1
\right| =
\left|
\frac{p_i/a_i}{p_j/a_j} - 1
\right|.
$$

## Place Among Highest-Averages Methods

Within the general highest-averages framework,

$$
A_i(a_i) =
\frac{p_i}{d(a_i)},
$$

where the divisor function $d$ determines the apportionment rule:

$$
\begin{aligned}
\text{Jefferson / D'Hondt:} \quad & d(a)=a+1,\\
\text{Webster / Sainte-Laguë:} \quad & d(a)=a+\tfrac12,\\
\text{Huntington-Hill / Equal Proportions:} \quad &
d(a)=\sqrt{a(a+1)}.
\end{aligned}
$$

Thus Huntington-Hill is the geometric-mean member of the
highest-averages family.

## Compact Form

```text
Population / Vote Size:
p_i

divisions  Allocation:
a_i

Representation Ratio:
r_i = p_i / a_i

Priority Function:
A_i(a_i) = p_i / sqrt(a_i(a_i+1))

Allocation Rule:
k = argmax_i A_i(a_i)

Update:
a_k <- a_k + 1

Constraint:
Σ_i a_i = H
```
