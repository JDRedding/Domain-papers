# Relational Toroidal Geometry
RDG/MFE Framework

**Abstract**  
Toroidal differential geometry is reformulated inside the Relational Dynamic Geometry (RDG) and Momentum Flux Engine (MFE) framework. The classical labels \((\eta,\theta,\phi)\) are replaced by relational quantities
\[
E=\frac{R}{C},\qquad
S=\Delta\alpha,\qquad
F=\Phi_c.
\]
RDG supplies the accessibility structure; MFE supplies the evolution of relational states through that structure. Geometry is generated from relational accessibility rather than from an ambient Euclidean point set.

**1. RDG Foundations**  
SID decomposition:
\[
S=\text{Structure},\qquad
I=\text{Interaction},\qquad
D=\text{Dynamics}.
\]
Central principle:
\[
I\;\longrightarrow\;S\;\longrightarrow\;D.
\]

**2. Momentum Flux Engine (MFE)**  
The relational toroidal chart defines accessibility and differential structure but does not itself specify state evolution. State evolution is performed by the Momentum Flux Engine. Using the PED decomposition
\[
P=\text{Power},\qquad
E_v=\text{Evaluation},\qquad
D_v=\text{Dynamics},
\]
the MFE governs the evolution of relational states while RDG governs the geometry through which those states evolve. Symbolically,
\[
\text{MFE}:
(E,S,F)
\;\longmapsto\;
(E',S',F'),
\]
while
\[
\text{RDG}:
(E,S,F)
\;\longmapsto\;
D(E,S)
\;\longmapsto\;
(h,k)
\;\longmapsto\;
\Gamma.
\]
Thus RDG supplies accessibility and MFE supplies evolution.

**3. Relational State Variables**  
The state is the triple of relational facts
\[
(E,S,F),
\]
where
\[
E=\frac{R}{C}\in[0,1]
\quad\text{(realized closure fraction)},
\quad
S=\Delta\alpha
\quad\text{(oriented step)},
\quad
F=\Phi_c
\quad\text{(threaded flux/phase)}.
\]

**4. Relational Accessibility Generator**  
\[
D(E,S)=\cosh E-\cos S.
\]
Accessibility is the difference between amplified efficiency and orientation modulation. The open relational manifold is
\[
\mathcal{S}=\{D>0\}.
\]

**5. Relational Structure**  
Scale factors:
\[
h=\frac{a}{D},\qquad
k=\frac{a\sinh E}{D}.
\]
Accessibility matrix:
\[
\Gamma
=
\operatorname{diag}
\Biggl(
\frac{D}{a},\;
\frac{D}{a},\;
\frac{D}{a\sinh E}
\Biggr).
\]

**6. Relational Differential Operators**  

Gradient
\[
\nabla f
=
\hat{\mathbf{e}}_E\frac{D}{a}\partial_E f
+
\hat{\mathbf{e}}_S\frac{D}{a}\partial_S f
+
\hat{\mathbf{e}}_F\frac{D}{a\sinh E}\partial_F f.
\]

Divergence
\[
\nabla\cdot\mathbf{A}
=
\frac{D^3}{a^3\sinh E}
\Biggl[
\partial_E\Biggl(\frac{a^2\sinh E}{D^2}A_E\Biggr)
+
\partial_S\Biggl(\frac{a^2\sinh E}{D^2}A_S\Biggr)
+
\partial_F\Biggl(\frac{a^2}{D^2}A_F\Biggr)
\Biggr].
\]

Curl
\[
\begin{align*}
(\nabla\times\mathbf{A})_E
&=
\frac{D^2}{a^2\sinh E}
\Biggl(
\partial_S\Biggl(\frac{a\sinh E}{D}A_F\Biggr)
-
\partial_F\Biggl(\frac{a}{D}A_S\Biggr)
\Biggr),\\[1em]
(\nabla\times\mathbf{A})_S
&=
\frac{D^2}{a^2\sinh E}
\Biggl(
\partial_F\Biggl(\frac{a}{D}A_E\Biggr)
-
\partial_E\Biggl(\frac{a\sinh E}{D}A_F\Biggr)
\Biggr),\\[1em]
(\nabla\times\mathbf{A})_F
&=
\frac{D^2}{a^2}
\Biggl(
\partial_E\Biggl(\frac{a}{D}A_S\Biggr)
-
\partial_S\Biggl(\frac{a}{D}A_E\Biggr)
\Biggr).
\end{align*}
\]

Scalar Laplacian
\[
\nabla^2 f
=
\frac{D^3}{a^2\sinh E}
\Biggl[
\partial_E\Biggl(\frac{\sinh E}{D}\partial_E f\Biggr)
+
\partial_S\Biggl(\frac{\sinh E}{D}\partial_S f\Biggr)
+
\partial_F\Biggl(\frac{1}{D\sinh E}\partial_F f\Biggr)
\Biggr].
\]

**7. RDG/MFE Hierarchy**
\[
(E,S,F)
\;\xrightarrow{\text{RDG}}\;
D(E,S)
\;\rightarrow\;
(h,k)
\;\rightarrow\;
\Gamma
\;\rightarrow\;
\{\nabla,\nabla\cdot,\nabla\times,\nabla^2\},
\]
\[
(E,S,F)
\;\xrightarrow{\text{MFE}}\;
(E',S',F').
\]
RDG defines the relational accessibility structure. MFE generates trajectories through that structure.

---

**Appendix A — Classical Correspondence**  
The dictionary
\[
E\leftrightarrow\eta,\qquad
S\leftrightarrow\theta,\qquad
F\leftrightarrow\phi
\]
recovers the standard toroidal operators upon substitution of the pure generator \(D\).

**Appendix B — Null-Closure Boundary**  
The locus
\[
D=0\quad\Leftrightarrow\quad E=0\text{ and }S\in 2\pi\mathbb{Z}
\]
is the boundary of the relational manifold. It corresponds to vanishing realized closure and vanishing accessibility; geometry ceases.

**Appendix C — Regularized Accessibility Variant**  
Replace the generator by
\[
D_\varepsilon=\cosh E-\cos S+\varepsilon,\qquad\varepsilon>0.
\]
All formulas of Sections 5–6 remain valid with \(D\) replaced by \(D_\varepsilon\). The chart is then smooth on the closed state space. The constant \(\varepsilon\) is a purely geometric floor; physical readings remain optional and external to the construction.
