# STEINER SYSTEM S(5,8,24)
# Witt Design — Structural Summary

DEFINITION
A Steiner system S(t,k,n) is a pair (X, B) with:
- |X| = n points
- B = set of k-element blocks
- Every t-subset of X lies in exactly one block

For the Witt design:
  t = 5
  k = 8
  n = 24

POINT SET
X = {1, 2, ..., 24}

BLOCK PARAMETERS
Block size: k = 8
Total blocks: b = C(24,5) / C(8,5)
             = 42,504 / 56
             = 759

Replication number (blocks containing a given point):
  r = C(23,4) / C(7,4)
    = 8855 / 35
    = 253

INTERSECTION SPECTRUM
Two distinct blocks intersect in:
  {0, 2, 4}
Never in {1, 3, 5, 6, 7}

AUTOMORPHISM GROUP
Aut(S(5,8,24)) = M24
- Order: 244,823,040
- 5-transitive on 24 points
- Transitive on blocks and flags (x,B)

CODING THEORY LINK
Extended binary Golay code G24:
- Length: 24
- Dimension: 12
- Minimum distance: 8
- Perfect 3-error-correcting

Weight-8 codewords ↔ blocks of S(5,8,24)
Total weight-8 codewords = 759

DERIVED / RESIDUAL DESIGNS
Derived design (remove point x, keep blocks containing x):
  S(4,7,23)

Residual design (remove blocks containing x):
  Strongly regular graph with parameters (23, 22, 21, 20)


OPERATOR FORM (RDG-COMPATIBLE)
Define operator:
  W : C(X,5) → C(X,8)

Properties:
1. Extension:
     W(T) ⊇ T
2. Uniqueness:
     W(T1) = W(T2)  ⇔  T1,T2 ⊆ same block
3. Intersection regularity:
     |W(T1) ∩ W(T2)| ∈ {0,2,4}
4. Global relational symmetry:
     W is M24-equivariant

KEY IDENTITIES
C(24,5) = 42,504
C(8,5)  = 56
b       = 759

C(23,4) = 8855
C(7,4)  = 35
r       = 253

UNIQUENESS
S(5,8,24) is unique up to isomorphism.
Proof uses:
- intersection constraints
- Golay code structure
- M24 transitivity
