# Finite‑Carrier Saturation
Bounded‑Layer Exhaustion Principles
- Finite‑Relational Ceiling Condition
- Fixed‑Carrier Evolution Cutoff
- Carrier‑Bound Capacity

## TYPES
```
Carrier        := finite set of nodes with relational structure
Relation       := typed edge between nodes
Layer          := derived relation-system built from Carrier
Capacity       := functional measuring strength of a chosen relation-pattern
Index          := natural number tagging expansion of a carrier-family
```
## VARIABLES
```
E              : Carrier              // fixed finite relational geometry
E_n            : Carrier              // n-indexed expanding geometries
R(t)           : Layer                // relation-layer explored at parameter t
C_K(t)         : Capacity             // capacity on E as R(t) evolves
b_n            : Capacity             // capacity on E_n as n increases
t              : evolution parameter  // time / interpolation / regularization
n              : dimension index      // counts relational degrees of freedom
```
## FUNDAMENTALS
```
1. FINITE_CARRIER(E)
   E has finitely many nodes and finitely many admissible relation-patterns.
   Therefore any evolution R(t) can only explore a finite catalogue of layers.

2. CAPACITY_ON_FIXED(E)
   C_K(t) evaluates the strength of the relational pattern in R(t) on E.
   Since E is finite, there exists a maximal relational configuration R_max.
   Once R(t) reaches R_max, C_K(t) cannot increase further.

3. EXPANDING_FAMILY(E_n)
   E_n is a family of carriers whose relational degrees of freedom grow with n.
   Each step n -> n+1 introduces new nodes and new admissible relations.

4. CAPACITY_ON_EXPANDING(E_n)
   b_n measures relational strength on E_n.
   As n increases, relational complexity increases proportionally.
   Therefore b_n grows roughly in proportion to n.
```
## BEHAVIOR
```
Saturation on fixed carrier:
   C_K(t) stops increasing once R(t) reaches the maximal relational pattern
   permitted by the finite carrier E.

Linear growth on expanding carriers:
   b_n increases proportionally to n because each E_n contains n units
   of relational freedom.
```
## SUMMARY
```
C_K(t) : evolves on a fixed finite carrier E
         => explores finite relational catalogue
         => eventually stops increasing (saturates)

b_n    : evaluated on expanding carriers E_n
         => relational degrees of freedom grow with n
         => increases proportionally to n (linear growth)
```
