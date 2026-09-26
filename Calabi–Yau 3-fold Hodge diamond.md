# **Calabi–Yau 3-fold Hodge diamond**

**Types / spaces**
- $X$: compact Calabi–Yau threefold (complex dim 3)
- $H^{p,q}(X)$: Dolbeault cohomology groups
- $h^{p,q}$: Hodge numbers $= \dim_{\mathbb{C}} H^{p,q}(X)$
- $b_k$: Betti numbers $= \dim H^k(X;\mathbb{C})$
- $\chi(X)$: topological Euler characteristic
- $c_3(TX)$: third Chern class of the tangent bundle

**Fundamental relations**
- $h^{p,q} = h^{q,p}$ (complex conjugation)
- $h^{p,q} = h^{3-p,3-q}$ (Serre / Poincaré duality)

**Forced values (SU(3) holonomy)**
- $h^{0,0} = h^{3,3} = 1$
- $h^{3,0} = h^{0,3} = 1$
- $h^{1,0} = h^{0,1} = h^{2,0} = h^{0,2} = 0$
- $h^{3,1} = h^{1,3} = h^{3,2} = h^{2,3} = 0$

**Independent Hodge numbers**
- $h^{1,1}$ (Kähler moduli)
- $h^{2,1}$ (complex-structure moduli)
- $h^{2,2} = h^{1,1}$
- $h^{1,2} = h^{2,1}$

**Hodge diamond (figure)**

```
           1
         0   0
       0  h11  0
      0  0   0  0
       0  h21  0
           1
```

**Betti numbers**
- $b_0 = b_6 = 1$
- $b_1 = b_5 = 0$
- $b_2 = b_4 = h^{1,1}$
- $b_3 = 2 + 2 h^{2,1}$

**Euler characteristic**

$$
\chi(X) = \sum_{k=0}^{6} (-1)^k b_k = 2(h^{1,1} - h^{2,1})
$$

**Equivalent Chern-class formula**

$$
\chi(X) = \int_X c_3(TX)
$$

**Mirror symmetry**
- swaps $h^{1,1} \leftrightarrow h^{2,1}$
- hence sends $\chi \to -\chi$

## Further work
- Mirror Symmetry
- String Theory Compactification
- Calabi-Yau manifold properties
