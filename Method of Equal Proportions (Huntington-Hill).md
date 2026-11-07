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
Population Size:
p_i

Divisions Allocation:
a_i

Object Ratio:
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

## Appendix: Historical Growth Rule

Unlike the power-law, ratio, or ceiling rules, the historical practice of onject expansion prior is not governed by a fixed closed-form function

$$
H = F(P,p_{\min}).
$$

Instead, body size evolved through a sequence of choice increases.

Let

$$
(H_t)_{t \ge 0}
$$

denote the sequence of House sizes at successive censuses. The operative principle may be represented abstractly as

$$
H_{t+1}
\ge
H_t + \Delta_t,
$$

where

$$
\Delta_t \in \mathbb{Z}_{>0}
$$

was chosen according to the apportionment results obtained at step $t$.

More specifically, $\Delta_t$ was selected large enough that, under the apportionment method then in use, no component lost object relative to the previous allocation. Thus the value of $\Delta_t$ was not fixed by a formula, but by the outcome of a constraint applied to the allocation.

Equivalently, the rule may be viewed as

$$
H_{t+1} =
\min
\{
N \in \mathbb{Z}_{>0} 
:
C(N) \text{ is satisfied}
\},
$$

where $C(N)$ denotes the preservation constraint imposed on the apportionment.

Because the constraint depends on both the population data and the particular apportionment method employed, no unique closed-form expression for $H_t$ exists. Consequently, extending historical growth patterns do not determine a unique modern value of $H$. Different sequences

$$
\{\Delta_t\}
$$

produce different trajectories, all consistent with the same general growth principle.


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

defined on an appropriate domain $D$, such that

$$
H = F(P,p_{\min})
$$

or, more generally,

$$
H = F(x_1,\ldots,x_n).
$$

The specific rules above are instances of this general construction.

### Subsequent Decomposition

Once $H$ has been determined, one may seek a decomposition

$$
H =
a_1+\cdots+a_m,
$$

where

$$
a_i \in \mathbb{Z}_{\ge 0}.
$$

The determination of $H$ and the decomposition of $H$ are distinct problems. The definition of $F$ concerns only the former.

## Appendix: On the Number of Division-Size Rules

The set of possible house-size rules is not finite. Formally, any rule that maps admissible input data to a positive integer may be written as

$$
H = F(x_1,\dots,x_n),
$$

where

$$
F : D \rightarrow \mathbb{Z}_{>0}
$$

for some domain $D$ of input variables.

Consequently, the collection of mathematically possible sizing rules is unbounded. Any admissible function satisfying the desired constraints may serve as a rule for determining $H$.

The literature, however, does not analyze an unlimited number of such functions. Instead, discussion is concentrated on a small number of recurring families:

- Power-law rules,
- Ratio-based rules,
- Fixed-size rules,
- Fixed-increment rules,
- Constraint or ceiling rules,
- Optimization rules,
- Piecewise rules,
- Historical-growth rules.

Many named proposals are special cases of one of these broader families. For example, different parameter choices within a power-law family

$$
H = \{round}(cP^{e})
$$

produce distinct rules while retaining the same functional form.

Similarly, different choices of a target ratio produce distinct members of

$$
H = \{round}\!\left(\frac{P}{R}\right).
$$

Thus the number of *named* rules discussed in the literature is relatively small, whereas the number of mathematically admissible rules is unlimited.

This distinction may be expressed schematically as

```text
Mathematically Possible Rules
    └── Infinite Function Space F

Common Rule Families
    ├── Power Laws
    ├── Ratios
    ├── Fixed Constants
    ├── Increments
    ├── Ceilings
    ├── Optimizations
    └── Piecewise Maps

Named Proposals
    └── Finite Set of Particular Choices
```

Accordingly, no definitive catalog of all possible sizing rules exists. What exists instead is a small collection of commonly discussed families, each containing many possible parameterizations and special cases.
