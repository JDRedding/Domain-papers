# Relational Heptahedron
Schroeppel-Szilassi-RDG-Heptahedron

RDG tri-mode operator

$$
\mathrm{RDG}(T^2) =
\big(
\mathrm{SID}(S,I,D),\;
\mathrm{PED}(\mathrm{Szilassi}),\;
\mathrm{PED}^\ast(\mathrm{Császár})
\big).
$$

Where

$$
\mathrm{SID}=(S,I,D),
$$

$$
S=\text{index-7 hexagonal cellulation},\quad
I=K_7,\quad
D=\{6,3\}_{1,2}.
$$

Correspondence:

$$
\begin{aligned}
\mathrm{RDG}(\mathrm{SID})&=\text{Schroeppel quotient / abstract toroidal heptahedron},\\
\mathrm{RDG}(\mathrm{PED})&=\mathrm{Szilassi},\\
\mathrm{Dual}(\mathrm{PED})&=\mathrm{Császár}.
\end{aligned}
$$

In compact form:

$$
\begin{aligned}
S&=\mathbb{E}/(2-\omega)\mathbb{E},
&&|S|=7,\\
I&=K_7,\\
D&=\{6,3\}_{2,1}=\{6,3\}_{1,2},\\
\chi&=
\begin{cases}
14-21+7=0 & \text{(hexagonal / Szilassi)},\\
7-21+14=0 & \text{(triangular / Császár)},
\end{cases}\\
H(1)&=7.
\end{aligned}
$$

Schroeppel’s “most regular” 7-coloring, Gosper’s abstract toroidal heptahedron, and the Szilassi polyhedron are the SID, abstract, and PED lenses on this single combinatorial object. Regular hexagonal geometry lives only in SID (or in the covering Euclidean tiling) and is lost under any faithful embedding into $\mathbb{R}^3$.

## Notation

Hexagonal (triangular) lattice as Eisenstein integers:

$$
\mathbb{E}=\mathbb{Z}[\omega],\qquad
\omega=e^{2\pi i/3}=-\tfrac12+\tfrac{\sqrt3}{2}i,
\qquad
\omega^2+\omega+1=0.
$$

Norm and bilinear form:

$$
N(a+b\omega)=a^2-ab+b^2,
\qquad
\langle z,w\rangle={Re}(\overline{z}w).
$$

(Equivalently $N(z)=z\overline{z}$.)

A torus is the quotient

$$
T^2=\mathbb{C}/\Lambda
$$

for a rank-2 lattice $\Lambda\subset\mathbb{C}$. Here $\Lambda$ is an index-7 sublattice of $\mathbb{E}$.

Equivalently, in real form:

$$
T^2 \;\cong\; \mathbb{R}^2 / \Lambda,
\qquad
\Lambda = \langle v_1, v_2\rangle.
$$

Hexagonal lattice:

$$
\mathcal{H} = \{ a\,h_1 + b\,h_2 \mid a,b\in\mathbb{Z} \}\;\cong\;\mathbb{E}.
$$

---

## Heawood number and Euler data

Genus-$g$ chromatic bound (Heawood):

$$
\chi(S_g)\le
H(g)=\lfloor\frac{7+\sqrt{1+48g}}{2}\rfloor.
$$

Torus: $g=1$, so $H(1)=7$.

Euler characteristic of a torus map:

$$
V-E+F=\chi(T^2)=0.
$$

For a $\{6,3\}$ map (hexagonal faces, 3 faces per vertex):

$$
2E=6F=3V
\quad\Longrightarrow\quad
V=2F,\quad E=3F.
$$

The 7-face (Schroeppel / Szilassi) case is therefore

$$
F=7,\qquad V=14,\qquad E=21.
$$

Dual $\{3,6\}$ (Császár / dual Heawood):

$$
V=7,\qquad F=14,\qquad E=21.
$$

---

## Index-7 lattice and 7-coloring

Color classes of Schroeppel’s tiling are cosets of a sublattice $\Lambda\subset\mathbb{E}$ of index 7. Such a primitive $\Lambda$ is principal:

$$
\Lambda=(2-\omega)\mathbb{E}.
$$

Norm check:

$$
N(2-\omega)=2^2-2(-1)+(-1)^2=4+2+1=7,
$$

so

$$
[\mathbb{E}:\Lambda]=N(2-\omega)=7,
\qquad
[\mathcal{H}:\Lambda]=7.
$$
The seven colors are the residue classes

$$
\mathbb{E}/\Lambda\cong\mathbb{Z}/7\mathbb{Z}.
$$

Two hexagon centers $z,w\in\mathbb{E}$ receive the same color iff

$$
z-w\in(2-\omega)\mathbb{E}.
$$

A fundamental parallelogram of area 7 (one hexagon per color) is spanned by any $\mathbb{Z}$-basis of $\Lambda$, e.g.

$$
S = \mathrm{Parallelogram}(v_1,v_2) ={span}_{\mathbb{R}}\{2-\omega,\;\omega(2-\omega)\},
\qquad
\mathrm{Area}(S)=7.
$$

The torus is

$$
T^2=\mathbb{C}/\Lambda\cong\mathbb{R}^2/\mathbb{Z}^2
$$

after identifying opposite sides of $S$.

---

## Regular-map parameters

The hexagonal map on this torus is the (chiral) regular map

$$
\{6,3\}_{2,1}
\quad\text{(also written $\{6,3\}_{1,2}$, $\{6,3\}(1,3)$, or Eisenstein $(i,j)=(1,2)$)}.
$$

Face count in Eisenstein parameters $(i,j)$:

$$
F=i^2+ij+j^2
$$

in one common normalization, or

$$
F=2(i^2+ij+j^2)
$$

in the other; for $(i,j)=(1,2)$ the first convention giving $F=7$ is the one matching the Heawood map. Traditional parameters $(a,b)$ with $a+b$ even satisfy

$$
F=\frac{a^2+3b^2}{4};
$$

$(a,b)=(1,3)$ yields $F=7$.

Dual triangular map:

$$
\{3,6\}_{2,1}\quad\text{(also $\{3,6\}_{1,2}$)},\qquad
\text{1-skeleton }=K_7.
$$

Flatness of the torus forces the only regular types

$$
\frac1p+\frac1q=\frac12
\qquad\Longrightarrow\qquad
\{p,q\}\in\{\{3,6\},\{4,4\},\{6,3\}\}.
$$

---

## 1. Torus and fundamental domain (RDG-$S$)

$$
T^2 \;\cong\; \mathbb{R}^2 / \Lambda,
\qquad
\Lambda = \langle v_1, v_2\rangle,
\qquad
[\mathcal{H}:\Lambda]=7,
\qquad
S=\mathrm{Parallelogram}(v_1,v_2),\quad\mathrm{Area}(S)=7.
$$

---

## 2. SID structure (cells)

Seven hexagonal faces:

$$
S=\{c_1,c_2,\dots,c_7\},
\qquad
\mathrm{Area}(c_i)=1.
$$

Hexagonal combinatorics:

$$
\forall i:\; \deg_{\partial}(c_i)=6.
$$

Coloring is a decoration of $S$, not part of the SID skeleton: the seven cells are already the seven residue classes of $\mathbb{E}/\Lambda$.

---

## 3. SID interaction (adjacency graph)

Forced complete adjacency:

$$
I=K_7.
$$

Equivalently:

$$
\forall i\neq j:\; c_i\sim c_j.
$$

Dual graph:

$$
G^\ast=K_7.
$$

This is the maximally saturated interaction operator on 7 SID-cells: each hexagon has six neighbors and there are only six other cells.

---

## 4. SID dynamics (triangular embedding)

Unique triangular torus embedding of $K_7$:

$$
D=\mathrm{Embed}(K_7,T^2)
$$

with

$$
\mathrm{Faces}(D)=\{\text{triangles}\},
\qquad
\deg(v)=6
$$

on the dual (Császár / $\{3,6\}$) side, and hexagonal faces of degree 6 on the primal side.

Regular map notation:

$$
D=\{6,3\}_{1,2}=\{6,3\}_{2,1}.
$$

Euler checks (both sides of the duality):

Primal (hexagonal / Szilassi / Schroeppel quotient):

$$
V=14,\quad E=21,\quad F=7,
\qquad
V-E+F=0.
$$

Dual (triangular / Császár):

$$
V=7,\quad E=21,\quad F=14,
\qquad
V-E+F=0.
$$

The adjacency pattern forces this unique toroidal triangularization of $K_7$.

---

## Adjacency / SID interaction (expanded)

Let the seven hexagonal cells be $c_0,\dots,c_6$. After the quotient,

$$
c_i\sim c_j\quad\text{for all }i\neq j,
$$

so the dual graph is

$$
I=K_7.
$$

---

## Automorphism group

Orientation-preserving automorphisms:

$$
{Aut}^+( \{6,3\}_{2,1} )
\cong
C_7\rtimes C_6
\cong F_{21}
$$

(the Frobenius group of order 21). Full flag-transitive group of the dual Heawood map has order $42=2\cdot21$ when reflections of the covering tiling are included; the torus map itself is chiral.

Affine action realizing $F_{21}$ on colors $\mathbb{Z}/7\mathbb{Z}$:

$$
x\mapsto ax+b,
\qquad
a\in\{1,2,4\}=(\mathbb{Z}/7\mathbb{Z})^\times{}^2,\quad
b\in\mathbb{Z}/7\mathbb{Z}.
$$

---

## 5. PED realization (Szilassi polyhedron)

Geometric embedding:

$$
\mathrm{PED}(S,I,D)=\mathrm{Szilassi}.
$$

Faces:

$$
\mathrm{Faces}(\mathrm{Szilassi})=7.
$$

Adjacency:

$$
\forall i\neq j:\; c_i\cap c_j\text{ is an edge}.
$$

Counts:

$$
F=7\text{ hexagons},\quad
E=21,\quad
V=14,\quad
g=1.
$$

Non-regularity constraint:

$$
\neg\mathrm{Embeddable}(\text{RegularHex},\, T^2\hookrightarrow\mathbb{R}^3).
$$

SID admits a metric of regular hexagons (pull-back of the Euclidean hexagonal tiling). A polyhedral embedding into $\mathbb{R}^3$ requires a PL realization of the same cell complex with straight edges and planar faces. No such realization exists with all faces regular hexagons and without self-intersection; Szilassi faces are therefore irregular hexagons.

---

## 6. PED dual (Császár polyhedron)

Dual polyhedron:

$$
\mathrm{PED}^\ast=\mathrm{Császár}.
$$

Vertices:

$$
V(\mathrm{Császár})=7.
$$

Complete 1-skeleton:

$$
E(\mathrm{Császár})=\binom{7}{2}=21.
$$

Triangular faces:

$$
F(\mathrm{Császár})=14.
$$

Every pair of Szilassi faces shares exactly one edge; every pair of Császár vertices is joined by an edge. The 1-skeleton is $K_7$.
