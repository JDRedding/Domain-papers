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

## Appendix: Abstract Formulations of Integer-Sizing Rules

Let

$$
P > 0
$$

be a real number and let

$$
p_{\min} > 0
$$

satisfy

$$
p_{\min} \le P.
$$

Let

$$
H \in \mathbb{Z}_{>0}
$$

be an integer determined from these quantities.

### Power-Law Rule

$$
H =
{round}
\left(
P^{1/3}
\right)
$$

or, more generally,

$$
H =
{round}
\left(
cP^{e}
\right),
$$

where

$$
c > 0,
\qquad
e \in (0,1).
$$

A common empirical choice is

$$
e \approx 0.45,
\qquad
c \approx 0.1.
$$

### Ratio Rule

$$
H =
{round}
\left(
\frac{P}{p_{\min}}
\right).
$$

### Threshold Ceiling

Given a fixed constant

$$
T > 0,
$$

$$
H
\le
\left\lfloor
\frac{P}{T}
\right\rfloor.
$$

### Incremental Sequence

Let

$$
(H_t)_{t\ge 0}
$$

be a sequence defined by

$$
H_{t+1} =
H_t+\Delta_t,
$$

where

$$
\Delta_t \in \mathbb{Z}_{>0}
$$

is determined by an external rule.

Equivalently,

$$
H_t = H_0 +
\sum_{k=0}^{t-1}\Delta_k.
$$

### Constant-Shift Rule

$$
H =
H_0+k,
$$

where

$$
H_0 \in \mathbb{Z}_{>0},
\qquad
k \in \mathbb{Z}_{>0}
$$

are fixed constants.

### General Form

Each rule determines an integer-valued function

$$
F :
D \rightarrow \mathbb{Z}_{>0},
$$

defined on an appropriate domain \(D\), such that

$$
H = F(P,p_{\min})
$$

or, more generally,

$$
H = F(x_1,\ldots,x_n).
$$

The specific rules above are instances of this general construction.

### Subsequent Decomposition

Once \(H\) has been determined, one may seek a decomposition

$$
H =
a_1+\cdots+a_m,
$$

where

$$
a_i \in \mathbb{Z}_{\ge 0}.
$$

The determination of \(H\) and the decomposition of \(H\) are distinct problems. The definition of \(F\) concerns only the former.
