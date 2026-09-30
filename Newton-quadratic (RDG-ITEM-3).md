# Newton-quadratic 
- RDG-ITEM-3

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

## Calculus analogue 
RDG‑ITEM‑CALC‑1 

Same typed‑object, constructor, algebra, dynamics, and sphere‑model format** for a *matching diagram* that feels like a sibling to r Newton dyad. Below is the module: the calculus counterpart to r Newton‑quadratic page.

### **Calculus dyad** $(x,f)$

A single real function $f:\mathbb{R}\to\mathbb{R}$ generates the algebra, the velocity field, and the enrolled sphere‑view.  
The free data is the **graph**; derivative, flow, critical points, and compactification are derived.

---

### OBJECTS
```
  x          : Point
  f          : RealMap       f : ℝ → ℝ
  Df         : Derivative    Df(x) = f'(x)
  V          : VectorField   V(x) = f'(x)
  C          : Critical      C = { x | f'(x)=0 }
  S2         : Sphere        S2 = ℝ ∪ {∞} enrolled by stereographic projection
  F̂          : SphereMap     F̂ : S2 → S2  (compactified f)
  V̂          : TangentField  V̂ : S2 → TS2 (lifted derivative)
```
---

### CONSTRUCTORS
```
  Deriv      : RealMap → Derivative
  Flow       : Derivative → VectorField
  Crit       : Derivative → Set(Point)
  Enroll     : ℝ → S2
  LiftMap    : RealMap × Enroll → SphereMap
  LiftField  : VectorField × Enroll → TangentField
```

These mirror r Newton constructors:

- `Mid` ↔ `Crit`  
- `PerpBisect` ↔ `Enroll`  
- `Newton` ↔ `Flow`  
- `Side` ↔ sign of derivative (left/right flow)

---

### ALGEBRA
```
  f'(x) = lim_{h→0} (f(x+h) - f(x)) / h
  V(x)  = f'(x)
  C     = { x | V(x)=0 }
```

This is the calculus analogue of r Newton algebra block:

- Newton: `N(x) = x - f/f'`  
- Calculus: `ẋ  = f'(x)`

Both use the derivative as the engine; calculus just uses it directly.

---

### TYPED EDGES
```
  Flow       :  x   ──V──►  x + ε·V(x)
  Critical   :  c∈C ──V──►  c
  Attract    :  V'(c) < 0  (stable)
  Repel      :  V'(c) > 0  (unstable)
  Boundary   :  x → ∞  (compactifies to north pole)
  Enrolled   :  x ∈ ℝ  ──Enroll──►  great-circle strip on S2
  Tangent    :  V̂(p) tangent to S2 at p
```

This mirrors r Newton typed edges:

- `Fixed` ↔ `Critical`  
- `Basin` ↔ `Attract`  
- `Cycle` ↔ none (calculus has no iteration cycles)  
- `Boundary` ↔ `∞` on sphere  
- `Invariant` ↔ tangent flow on great circle

---

### SPHERE MODEL (calculus analogue of Model A / Model B)

#### Model A — **Real line → great circle**
```
  Enroll(x) = stereographic(x)
  F̂(p)      = Enroll(f(Enroll^{-1}(p)))
  V̂(p)      = tangent lift of f'(Enroll^{-1}(p))
```

- The real axis becomes a **great circle**  
- The derivative becomes a **tangent vector field**  
- Critical points become **zero vectors** on the circle  
- ±∞ become the **north pole**

#### Model B — **Height → latitude**
```
  x     ↦ longitude
  f(x)  ↦ latitude
  f'(x) ↦ tangent arrow along longitude
```

This is the calculus analogue of the Newton Model B (unit circle Julia set):

- Instead of Julia = unit circle,  get **graph = embedded strip**  
- Instead of $z^2$, get **height‑latitude mapping**

---

### SPECIAL CASE  
#### Linear function $f(x)=ax+b$

```
  f'(x)=a
  V(x) =a
  C    = ∅
```

Sphere view:

- Constant tangent field  
- Great circle with uniform arrows  
- No critical points  
- North pole reached only by compactification

This is the calculus analogue of r Newton special case $f(x)=x^2+1$:  
simple geometry, no convergence, pure boundary behavior.

---

### ASCII 

```
ALGEBRA
  f : ℝ → ℝ
  Df(x) = f'(x)

DYNAMICS
  ẋ = f'(x)
  C = { x | f'(x)=0 }

SPHERE VIEW
  ℝ ∪ {∞}  ≅  S2
  x        ↦  great circle
  f(x)     ↦  latitude
  f'(x)    ↦  tangent arrow
```

---
