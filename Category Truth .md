# Category "Truth"  
## Standard category-theoretic form

### Core types and maps

| Symbol | Role |
|---|---|
| $M$ | motive / model / geometric object |
| $R$ | realization base (cohomology theory, analytic site, coefficient ring, …) |
| ${Real}$ | realization functor |
| ${Model}$ | model functor |
| $\eta$ | unit of the adjunction |
| $\varepsilon$ | counit of the adjunction |

**Other notation**

- $\{Fiber}(R)$: fiber associated to the base $R$
- $37$: numeric tag; not an operator
- $3\{No.}$: marked index or generator count; not a standard operator (No.: #)
- $\eta$: unit
- $\varepsilon$: counit (“COUNT $\varepsilon$”)

### Functors

$$
 {Real} : \mathbf{M} \longrightarrow \mathbf{Model}(R)
$$

$$
 {Real}(M) \longrightarrow  {Model}(R)
$$

### Adjunction

$$
 {Real} \dashv  {Model}
$$

Unit and counit:

$$
\eta :  {Id}_{\mathbf{M}} \Longrightarrow  {Model} \circ  {Real}
$$

$$
\varepsilon :  {Real} \circ  {Model} \Longrightarrow  {Id}_{R}
$$

Triangle identities:

$$
\varepsilon_{ {Real}(M)} \circ  {Real}(\eta_M) =  {id}_{ {Real}(M)}
$$

$$
{Model}(\varepsilon_R) \circ \eta_{ {Model}(R)} =  {id}_{ {Model}(R)}
$$

### Fibers

Informal slogan: *traverse the realization fibers (no empty sets)*.

$$
{Fib}_x\bigl( {Real}(M)\bigr)
= {Real}(M) \times_{ {Spec} R} \{x\}
$$

Non-emptiness condition:

$$
{Fib}_x\bigl({Real}(M)\bigr) \neq \emptyset
\quad\text{for relevant points } x
$$

equivalently

$$
{Real}(M)_x \neq \emptyset
$$


