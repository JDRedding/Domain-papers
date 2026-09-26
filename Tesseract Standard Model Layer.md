# Tesseract Standard Model Layer
## One generation on $Q_4$, evolved by $U(\theta)$

The clean join is not “put gluons on a tesseract.” It is this: **one SM generation is 16 Weyl states, and $Q_4$ has 16 vertices.** The quantum layer then becomes a variational evolution whose basis *is* that generation, with electroweak mixing written as a trainable 2-plane rotation and the Higgs VEV as a background that opens masses along selected edges.

**Dictionary**

| Tesseract / quantum layer | Standard Model |
|---|---|
| $V=\{0,1\}^4$, $\lvert V\rvert=16$ | 16 Weyl fermions of one generation (incl. $\nu_R$) |
| computational basis $\lvert x\rangle$ | fermion species label |
| Hamming edge $d_H=1$ | change of one binary quantum number |
| Pauli $X,Y,Z$ on 4 qubits | same matrices that generate $\mathrm{SU}(2)_L$ |
| $U(\theta)=\exp(-iH(\theta))$ | variational stand-in for a slice of SM evolution |
| trainable angle in a 2-plane | Weinberg angle $\theta_W$ |
| background 1-body field | Higgs VEV $v$ |

Color $\mathrm{SU}(3)_c$ is **external**: each quark vertex carries a color index $c=1,2,3$. The cube organizes flavor / electroweak quantum numbers, not the eight gluons.

**What is exact vs analogical**

Exact:

- 16 vertices $\leftrightarrow$ one generation including $\nu_R$,
- $\mathrm{SU}(2)_L$ as Hamming-isospin edges and Pauli matrices,
- $\theta_W$ as a 2-plane rotation inside the same variational layer,
- Higgs VEV as the field that both breaks the graph symmetry and writes masses.

Analogical / extra structure:

- $\mathrm{SU}(3)_c$ (color is an external fiber),
- three generations (three copies of $Q_4$, or a 5th bit),
- continuum spacetime (the cube is internal / flavor space, not 4D Minkowski).

So the merged object is a **4-qubit variational generation**: the tesseract is the fermion bookkeeping, the quantum layer is the trainable evolution, and the Standard Model is the symmetry-and-mass pattern imposed on that Hamiltonian.

---

**Vertices as one generation**

Label the 16 basis states so they reproduce the SM count

$$
\underbrace{Q_L}_{3\times 2}
+\underbrace{u_R}_{3}
+\underbrace{d_R}_{3}
+\underbrace{L_L}_{2}
+\underbrace{e_R}_{1}
+\underbrace{\nu_R}_{1} =16.
$$

A concrete bit assignment (one of many):

$$
x=(c_1,c_0,\,I_3+\tfrac12,\,R)
$$

- two bits for a discrete color/species tag among the 16 slots,
- one bit for weak isospin ($I_3=\pm\tfrac12$ inside every doublet),
- one bit for “right-handed singlet vs left-handed doublet.”

Doublets $Q_L=(u_L,d_L)$ and $L_L=(\nu_L,e_L)$ occupy **Hamming neighbors** that differ only in the isospin bit. That is the geometric meaning of $\mathrm{SU}(2)_L$ on $Q_4$: the weak generators flip one edge class.

---

**Gauge fields as edge Hamiltonians**

Write a parameterized Hamiltonian on the same 16-dimensional space used by the quantum layer:

$$
H(\theta) =
H_{\mathrm{kin}}
+H_{\mathrm{SU}(2)}
+H_{Y}
+H_{\mathrm{QCD}}
+H_{\Phi}.
$$

**Electroweak, native to the cube.**  
On every isospin edge $\{u,d\}$ (or $\{\nu,e\}$):

$$
H_{\mathrm{SU}(2)} =
g\sum_{\text{isospin edges}}
W^a\,\frac{\sigma^a}{2}
\qquad
(\sigma^a\text{ act on that 2-plane}).
$$

Hypercharge is diagonal in the vertex basis:

$$
H_Y =
g'\sum_{v\in V} Y_v\,B\,\lvert v\rangle\langle v\rvert.
$$

Weinberg mixing is exactly a 2-parameter rotation in the $(B,W^3)$ plane — the same kind of object as a layer angle:

$$
\begin{pmatrix} A \\ Z \end{pmatrix} =
\begin{pmatrix}
\cos\theta_W & \sin\theta_W \\
-\sin\theta_W & \cos\theta_W
\end{pmatrix}
\begin{pmatrix} B \\ W^3 \end{pmatrix},
\qquad
e=g\sin\theta_W=g'\cos\theta_W.
$$

In the circuit, $\theta_W$ can be a **trainable** gate angle. Charged currents $W^\pm$ live on the same isospin edges:

$$
W^\pm=\frac{W^1\mp i W^2}{\sqrt{2}}.
$$

**Color, not native.**  
Gluons act on the extra color index of the quark vertices only:

$$
H_{\mathrm{QCD}} =
g_s\,G^A\frac{\lambda^A}{2}
\quad\text{on }Q_L,u_R,d_R.
$$

They do not have to be edges of $Q_4$.

---

**Higgs as a background on the graph**

The potential is unchanged:

$$
V(\Phi)=\mu^2(\Phi^\dagger\Phi)+\lambda(\Phi^\dagger\Phi)^2,
\quad\mu^2<0,
\quad
\langle\Phi\rangle=\begin{pmatrix}0\\ v/\sqrt{2}\end{pmatrix},
\quad v\approx 246\,\mathrm{GeV}.
$$

On $Q_4$, $\langle\Phi\rangle$ is a **constant 1-body field** that picks the down-type direction of every doublet and thereby:

1. breaks $\mathrm{SU}(2)_L\times\mathrm{U}(1)_Y\to\mathrm{U}(1)_{\mathrm{EM}}$,
2. turns selected edges into mass terms.

Yukawa couplings become weighted edges from left-handed vertices to right-handed vertices:

$$
H_{\Phi} =
\sum_f y_f\frac{v}{\sqrt{2}}
\bigl(\lvert f_L\rangle\langle f_R\rvert+\mathrm{h.c.}\bigr),
\qquad
m_f=y_f\frac{v}{\sqrt{2}}.
$$

Those $\lvert f_L\rangle$–$\lvert f_R\rangle$ pairs are generally **not** Hamming neighbors (they differ in the chirality bit *and* possibly others). So masses are the **non-graph** edges: the Higgs is what adds chords to $Q_4$.

Physical Higgs oscillation is a small fluctuation of that background:

$$
m_h=\sqrt{2\lambda}\,v\approx 125\,\mathrm{GeV}/c^2.
$$

---

**The layer**

One Tesseract SM layer is the unitary you already had, now with SM-structured parameters:

$$
U(\theta)=\exp\bigl(-i H(\theta)\bigr)
$$

built from the same gates

$$
R_x,\;R_y,\;R_z
$$

plus two-qubit (or two-vertex) rotations on:

- the 4-regular Hamming edges $\to$ kinetic / weak mixing,
- the isospin 2-planes $\to$ $W^a$,
- the Yukawa chords $\to$ fermion masses after $v\neq 0$.

A minimal parameter count that still looks like the SM:

- $\theta_W$ (one mixing angle),
- $g,g',g_s$ (or just the three gauge strengths),
- $v$ (or $\mu^2,\lambda$),
- Yukawas $y_u,y_d,y_e$ (one generation; three generations = three stacked 16-cubes).
