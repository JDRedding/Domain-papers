# Newton-quadratic 
- RDG-TEM-3

## **Newton dyad** ($r_1,r_2$)
Two roots are the only free data; midpoint, bisector, basins and both conjugacies are derived.

- **Root-bisector system** — two geometric generators that actually organize the plane: the pair and its perpendicular bisector.
- **Midpoint Newton** — the single critical point that splits the dynamics ($m\mapsto\infty$).
- **Conjugate Newton pair** —  the whole object *is* the pair of models $z\mapsto(z+1/z)/2$ and $z\mapsto z^2$.

## OBJECTS
```
  r1, r2     : Root          (r1 ≠ r2)
  m          : Critical      m = Mid(r1,r2)
  x          : Point
  L          : Line          L = PerpBisect(r1,r2)
  N          : PartialMap    N : ℂ \ {m} ⇢ ℂ̂
  f          : Poly2         f(x)=(x-r1)(x-r2)
```
## CONSTRUCTORS
```
  Mid        : Root × Root → Critical
  PerpBisect : Root × Root → Line
  Side       : Point × Root × Root → {Basin(r1), Basin(r2), Boundary}
  Newton     : Poly2 → PartialMap
```
## ALGEBRA
```
  f'(x) = 2x − (r1+r2)
  N(x)  = x − f(x)/f'(x)     (x ≠ m)
  N(m)  = ∞
  N(ri) = ri                 (i=1,2)
```
## TYPED EDGES
```
  Fixed      :  ri  ──N──►  ri
  Critical   :  m   ──N──►  ∞
  Basin      :  x ∉ L  ──N^ω──►  nearer(ri)
  Boundary   :  x ∈ L  ──►  Julia(N)
  PreCrit    :  N^{-k}(m) ⊂ L ,   cl(N^{-∞}(m)) = L
  Cycle      :  Per(N|L) ⊂ L ,    all repelling,
                 cl(Per(N|L)) = L
  Invariant  :  N(L \ {m}) ⊂ L
```
## CONJUGACY (two models)
```
  Model A  (roots → ±1, m → 0)
    T(r1)=1, T(r2)=-1, T(m)=0
    T∘N∘T^{-1}(z) = (z + 1/z)/2
    T(L) = iℝ  ∪ {∞}

  Model B  (roots → 0,∞)
    S(r1)=0, S(r2)=∞, S(L)= unit circle
    S∘N∘S^{-1}(z) = z²
    Julia = {|z|=1}
```
## SPECIAL CASE
```
  f(x)=x²+1,  r1=i, r2=-i
  L = ℝ ∪ {∞}
  x0 ∈ ℝ  ⇒  N^k(x0) ∈ ℝ for all k
  (exact imaginary part 0; no convergence)
```
