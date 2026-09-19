# RDG Rubric cube

### Preliminaries

An $n\times n\times n$ coloured cube ($n\ge 2$) has six square faces. Each face is an $n\times n$ array of **facelets**. There are

$$
N=6n^{2}
$$

facelets in total. This document describes the **surface graph** of those facelets, not the cubie (physical piece) graph.

**Index sets**

| Symbol | Type | Meaning |
|---|---|---|
| $n$ | $\mathbb{N}_{\ge 2}$ | stickers along one face edge |
| $F=\{0,1,2,3,4,5\}$ | finite set | faces $U,R,F,D,L,B$ |
| $L=\{0,\dots,n-1\}^2$ | finite set | local $(r,c)$ on a face |
| $V=\{0,\dots,N-1\}$ | finite set | flattened facelet ids |
| $E\subseteq\binom{V}{2}$ | undirected edges | surface adjacency |
| $\Phi:V\to\mathbb{R}^2$ | embedding | sector-polar layout |
| $\Psi:V\to S^2$ | optional map | cube $\to$ sphere |

Local coordinates: $r$ increases downward, $c$ increases rightward, both as seen from outside the cube. Face centre in index space:

$$
c_\star=\frac{n-1}{2}\in\mathbb{R}.
$$

Flattening bijection and inverse:

$$
\begin{align*} {id}&:F\times L\to V,\\ {id}(f,r,c)&=fn^{2}+rn+c,\\ {id}^{-1}(i) &=( \bigl\lfloor i/n^{2}\bigr\rfloor,\; \bigl\lfloor(i\bmod n^{2})/n\bigr\rfloor,\; i\bmod n ).
\end{align*}
$$

A **ring index** on a face is the Chebyshev distance from the face centre:

$$
k(r,c)=\max\bigl(|r-c_\star|,\,|c-c_\star|\bigr),\qquad K=\max_{r,c}k(r,c).
$$

For odd $n$, $K=(n-1)/2$ and there is a unique cell with $k=0$. For even $n$, $K=n/2$ (or $(n-1)/2$ before integer rounding) and the innermost cells form a $2\times 2$.

---

### 1. The cube surface as one RDG object

$$
\mathcal{C}_n=(V,E,\Phi).
$$

This is already a geometry triad:

- **Structure** — the lattice $F\times L$,
- **Interaction** — which pairs of facelets share a side,
- **Dynamics** — the six face-turn permutations acting on $V$.

Optional extra data: colours $\chi:V\to F$ (solved colouring), and a spherical chart $\Psi$.

---

### 2. Structure layer

```
SID.Structure
 ├─ Faces F = {0,…,5}
 ├─ Local grid L = {0,…,n−1}²
 ├─ Vertex set V ≅ F × L
 ├─ Rings k : L → [0,K]
 └─ Degrees: interior 4, glued boundary 4
```

Cardinalities:

$$
|V|=6n^{2},\qquad |E|=12n^{2}.
$$

On one face, ring sizes (exact Chebyshev, odd $n$):

$$
\bigl|\{(r,c):k(r,c)=k\}\bigr| = \begin{cases} 1 & k=0,\\ 8k & 0<k<K,\\ 4(n-1) & k=K. \end{cases}
$$

**Cubie-type partition** (secondary, not required for $G$):

| Class | Count | Description |
|---|---|---|
| centres | $6$ if $n$ odd, else $0$ | unique face centres |
| inner facelets | $6(n-2)^2-6\cdot\mathbf{1}_{n\text{ odd}}$ | strict interior, not centre |
| edge facelets | $24(n-2)$ | boundary but not corner |
| corner facelets | $24$ | $(r,c)\in\{0,n-1\}^2$ on each face |

For $n=3$ this is $6+0+24+24$.

---

### 3. Interaction layer

Two facelets are adjacent when they share a positive-length side on the cube surface.

```
SID.Interaction
 ├─ Grid: (f,r,c) ∼ (f,r,c±1), (f,r±1,c)
 ├─ Belts: 12 maps e_k : {0,…,n−1} → V×V
 └─ Charts: each face carries coordinates (u,v)
```

Compressed edge set:

$$
E=\bigl\{\{i,j\}:{id}^{-1}(i)\sim{id}^{-1}(j)\bigr\},
$$

where $\sim$ is the symmetric closure of grid steps union the twelve belt pairings. One consistent family of belts (outside view) is

$$
\begin{align*}
e_{UF}(i)&=\bigl({id}(0,n-1,i),\,{id}(2,0,i)\bigr),\\
e_{UR}(i)&=\bigl({id}(0,i,n-1),\,{id}(1,0,n-1-i)\bigr),\\
e_{UB}(i)&=\bigl({id}(0,0,i),\,{id}(5,0,n-1-i)\bigr),\\
e_{UL}(i)&=\bigl({id}(0,i,0),\,{id}(4,0,i)\bigr),\\
e_{DF}(i)&=\bigl({id}(3,0,i),\,{id}(2,n-1,i)\bigr),\\
e_{DR}(i)&=\bigl({id}(3,i,n-1),\,{id}(1,n-1,i)\bigr),\\
e_{DB}(i)&=\bigl({id}(3,n-1,i),\,{id}(5,n-1,n-1-i)\bigr),\\
e_{DL}(i)&=\bigl({id}(3,i,0),\,{id}(4,n-1,n-1-i)\bigr),\\
e_{FR}(i)&=\bigl({id}(2,i,n-1),\,{id}(1,i,0)\bigr),\\
e_{FL}(i)&=\bigl({id}(2,i,0),\,{id}(4,i,n-1)\bigr),\\
e_{BR}(i)&=\bigl({id}(5,i,0),\,{id}(1,i,n-1)\bigr),\\
e_{BL}(i)&=\bigl({id}(5,i,n-1),\,{id}(4,i,0)\bigr).
\end{align*}
$$

The adjacency operator $A\in\{0,1\}^{N\times N}$ is the usual graph matrix of $G$; the Laplacian is $L={diag}(\deg)-A$.

---

### 4. Dynamics layer

A **move** is a permutation of $V$. Write $S_V$ for the symmetric group on $V$.

Clockwise $90^\circ$ turn of face $f$:

$$
R_f\bigl({id}(f,r,c)\bigr)={id}(f,\,c,\,n-1-r),
$$

and $R_f$ fixes all ids with a different face index. Cycle type of $R_f$:

- odd $n$: one fixed centre, plus $(n^{2}-1)/4$ four-cycles on that face;
- even $n$: $n^{2}/4$ four-cycles on that face.

The belt operator $B_f$ cycles the four neighbouring side-columns (each of length $n$) as $n$ disjoint four-cycles. The generator is

$$
T_f=B_f\circ R_f\in S_V.
$$

```
SID.Dynamics
 └─ T_f = face rotation × belt cycle
```

The (legal-state) cube group is the image of

$$
\mathcal{G}_n=\langle T_0,\dots,T_5\rangle\le S_V
$$

after restricting to even permutations of corners and edges, compatible orientations, and (for even $n$) the usual parity constraints on inner orbits. Half-turns and inverses are $T_f^{2}$ and $T_f^{-1}=T_f^{3}$.

Solved colouring $\chi_0$ is constant on each face. A general state is $\chi=\chi_0\circ g$ for some $g\in\mathcal{G}_n$.

---

### 5. Geometry layer

Normalised face coordinates:

$$
u=\frac{c-c_\star}{\max(n-1,1)},\qquad
v=\frac{r-c_\star}{\max(n-1,1)}\in\bigl[-\tfrac12,\tfrac12\bigr].
$$

Sector angle and radius:

$$
\theta_f=\frac{(2f+1)\pi}{6},\qquad
\rho(k)=r_{\min}+\frac{k}{K}(r_{\max}-r_{\min})
\quad(K>0).
$$

If $K=0$ ($n=2$ after collapsing), use a single radius. Embedding:

$$
\Phi\bigl({id}(f,r,c)\bigr)
=
\rho\bigl(k(r,c)\bigr)
\begin{pmatrix}
\cos(\theta_f+\alpha u+\beta v)\\
\sin(\theta_f+\alpha u+\beta v)
\end{pmatrix}.
$$

Parameters: $0<r_{\min}<r_{\max}$, angular spreads $\alpha,\beta\ge 0$ with $\alpha+\beta<\pi/3$ so sectors do not overlap.

```
RDG.Geometry
 ├─ Chart: sector-polar
 ├─ Radial coordinate: k(r,c)
 ├─ Angular coordinate: θ_f + αu + βv
 └─ Embedding: Φ : V → ℝ²
```

Drawn edges are segments $[\Phi(i),\Phi(j)]$ for $\{i,j\}\in E$. Animating a move $T_f$ keeps radii fixed and applies $T_f$ to the angular coordinate.

**Optional sphere chart.** Let $\mathbf{q}(i)\in[-a,a]^3$ be the cube-surface point of facelet $i$. Radial projection:

$$
\Psi_{\mathrm{rad}}(i)=\frac{\mathbf{q}(i)}{\|\mathbf{q}(i)\|}\in S^{2}.
$$

Nowell–Joriki map on the unit cube, $\mathbf{q}=(x,y,z)$:

$$
\begin{align*}
s_x&=x\sqrt{1-\tfrac12 y^{2}-\tfrac12 z^{2}+\tfrac13 y^{2}z^{2}},\\
s_y&=y\sqrt{1-\tfrac12 x^{2}-\tfrac12 z^{2}+\tfrac13 x^{2}z^{2}},\\
s_z&=z\sqrt{1-\tfrac12 x^{2}-\tfrac12 y^{2}+\tfrac13 x^{2}y^{2}}.
\end{align*}
$$

$\Psi$ is independent of $\Phi$; one may compose $\Psi$ with stereographic projection if a second planar picture is needed.

---

### 6. Worked special cases

- $n=2$: $|V|=24$, one ring, pocket-cube surface. No centres. $\mathcal{G}_2$ is the pocket-cube group.
- $n=3$: $|V|=54$, rings $k=0,1$ (centres / edges+corners), classical Rubik surface graph.
- odd $n$: six true centres sit on the inner circle and are fixed by their own $R_f$.
- even $n$: innermost ring is six $2\times 2$ blocks.

---

### 7. Tri-mode summary

```
CubeSurface_n = (V, E, Φ)
 ├─ SID.Structure
 │    id : F × L → V
 │    k : L → [0, K]
 │    |V| = 6n² , |E| = 12n²
 │
 ├─ SID.Interaction
 │    grid ∼  and belts e_k(i)
 │    A, L  (adjacency, Laplacian)
 │
 ├─ SID.Dynamics
 │    T_f = B_f ∘ R_f ∈ S_V
 │    G_n = ⟨T_0,…,T_5⟩
 │
 └─ RDG.Geometry
      Φ sector-polar
      Ψ : V → S²   (optional)
```

---

### Future work

- operator algebra generated by $\{R_f,B_f\}$ with braid/commutation relations,
- compressed generating set and cycle index for general $n$,
- spectrum of $L$ on the surface graph,
- lift from facelets $V$ to the cubie configuration space.
