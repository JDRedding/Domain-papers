# CONTOUR INTEGRAL  ∮
History + fundamentals (Sommerfeld, 1917)

## HISTORY
```
- 1917: Arnold Sommerfeld first used ∮ in Annalen der Physik
  paper: "Die Drudesche Dispersionstheorie vom Standpunkte
          des Bohrschen Modelles und die Konstitution von
          H2, O2 und N2"
- Construction: Leibniz elongated-S integral  ∫
                + a circle through the stem
                = closed-path (contour) integral  ∮
- Precursor: E.B. Wilson put a small circle UNDER the
             integral sign (Vector Analysis, 1901/1909;
             Advanced Calculus, 1911/1912)
- Sommerfeld's centered-circle form became the standard
  in complex analysis, electromagnetism, and quantum physics
```

## SYMBOL FAMILY (ASCII / Unicode)
```
  ∫     indefinite / ordinary integral
  ∬     double integral
  ∭     triple integral
  ∮     closed contour integral          (this one)
  ∯     closed surface integral
  ∰     closed volume integral
  ∱     clockwise integral
  ∲     anticlockwise contour integral
  ∳     clockwise contour integral
```

## WHAT IT MEANS
```
  ∮_C  f(z) dz     integral of f along a closed curve C

  C is a closed oriented path in the complex plane
  (or a closed loop in R^2 / R^3 for vector fields)
```

## FUNDAMENTALS
```
  Complex (Cauchy):
    If f is holomorphic inside and on simple closed C
    (positively oriented),
      ∮_C f(z) dz  =  0                 (Cauchy's theorem)
      f(a) = (1/(2πi)) ∮_C f(z)/(z-a) dz   (Cauchy integral formula)
      residues:  ∮_C f = 2πi Σ Res(f; poles inside C)

  Vector calculus (Green / Stokes / Kelvin-Stokes):
    ∮_C P dx + Q dy  =  ∬_D (∂Q/∂x - ∂P/∂y) dA
    ∮_C F · dr       =  ∬_S (curl F) · dS
```

## TYPICAL VARIABLES
```
  z, w          complex variable          z = x + iy
  f(z)          complex function
  C, Γ, γ       closed contour (path)
  dz            complex line element      dz = dx + i dy
  a, z0         point inside C
  Res(f, z0)    residue of f at z0
  n             winding number of C about a point
  F             vector field
  dr            real line element along C
  D, S          region / surface bounded by C
```

## ORIENTATION
```
  Positive (standard): counterclockwise
  Negative:            clockwise
  Winding number n(C,a) multiplies 2πi in residue theorems
```

## SOMMERFELD CONTEXT (the 1917 paper)
```
  Applied Bohr's atomic model to Drude optical-dispersion
  theory for the molecules H2, O2, N2.
  Closed-path integrals appeared naturally when summing
  contributions around orbits / poles in the complex plane.
```

## RELATED (same physicist)
```
  Sommerfeld integrals: Green's function for a dipole
  above a lossy ground plane — fundamental in antenna theory.
```

## FUTURE WORK
- Cauchy Residue Theorem
- Green's Theorem
