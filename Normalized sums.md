# Normalized sums
- 515 Analysis (series/sums)
- 512.7 Number theory (exponential sums)

## Distinction matters

The aggregate (resultant) normalization map is appropriate when the quantity of interest is the net effect (force, current, majority vote, etc.). The triadic (component-preserving) map is appropriate when the primary state is the mutual proportions among the three modes and overall intensity is a secondary, scale-dependent factor. In the latter framing the unit sphere $S^{2}$ (or its higher-dimensional analogues) is the space of pure relational configurations.

Both constructions perform ordinary Euclidean radial projection. They differ solely in which vector is normalized. That choice determines whether internal geometry is discarded or preserved.

## Aggregate meaning of resultant normalization

$$
S = \frac{y^{+} + y^{-} + y^{0}}{\| y^{+} + y^{-} + y^{0} \|}
$$

**Associated notation**
- $S$ — normalized result (unit quantity)
- $y^{+}$ — positive component
- $y^{-}$ — negative component
- $y^{0}$ — zero/neutral component
- $\|\cdot\|$ — Euclidean norm of the resultant

Normalization takes any nonzero vector and scales it so that its length becomes exactly 1 while leaving its direction unchanged. Geometrically this is radial projection onto the unit sphere (or unit circle in 2D, or the two points $\{\pm 1\}$ in 1D).

- All vectors that point the same way, regardless of length, land on the same point on the unit sphere.
- Magnitude is discarded; only direction is kept.
- The set of all possible normalized results is the unit sphere of the appropriate dimension.

### Equivalent form

$$
\mathbf{v} = y^{+} + y^{-} + y^{0}, \qquad
S = \frac{\mathbf{v}}{\|\mathbf{v}\|} \quad (\mathbf{v} \neq \mathbf{0})
$$

This is standard unit-vector normalization of the already-formed resultant:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|_{2}} \quad (\mathbf{v} \neq \mathbf{0}).
$$

### Norm of the resultant

In one dimension

$$
\|\mathbf{v}\| = |y^{+} + y^{-} + y^{0}|.
$$

In higher dimensions, after the components have been summed coordinate-wise,

$$
\|\mathbf{v}\| = \sqrt{v_x^{2} + v_y^{2} + \cdots}.
$$

The expression

$$
\sqrt{(y^{+})^{2} + (y^{-})^{2} + (y^{0})^{2}}
$$

is **not** $\|\mathbf{v}\|$; it is the norm of the triadic configuration $\mathbf{Y}$ defined below. In general

$$
\|\mathbf{v}\| \neq \|\mathbf{Y}\|.
$$

### Properties

$$
\|S\|_{2} = 1, \qquad S \parallel \mathbf{v}.
$$

The operation is undefined (or conventionally returns the zero vector) when

$$
\| y^{+} + y^{-} + y^{0} \| = 0.
$$

---

## Triadic (component-preserving) normalization

$$
\mathbf{Y} =
\begin{bmatrix}
y^{+} \\
y^{-} \\
y^{0}
\end{bmatrix},
\qquad
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|} = \frac{\mathbf{Y}}{\sqrt{(y^{+})^{2} + (y^{-})^{2} + (y^{0})^{2}}}
$$

**Associated notation**
- $\mathbf{Y}$ — triadic state vector in $\mathbb{R}^{3}$
- $\hat{\mathbf{Y}}$ — normalized triadic state (unit vector)
- $\|\cdot\|$ — Euclidean norm on $\mathbb{R}^{3}$

### Magnitude–direction decomposition

$$
A = \|\mathbf{Y}\|, \qquad
\mathbf{Y} = A \, \hat{\mathbf{Y}}, \qquad
\hat{\mathbf{Y}} \in S^{2}
$$

where $S^{2}$ is the unit sphere in $\mathbb{R}^{3}$.

---

## Two maps

The distinction is most cleanly expressed as two different maps on the same configuration:

- **Aggregate path** (collapse then normalize):  

$$
\mathbb{R}^{3} \xrightarrow{R} \mathbb{R} \xrightarrow{\text{normalize}} \{-1,+1\}
$$

  (or the analogous map $\mathbb{R}^{3d}\to\mathbb{R}^{d}\to S^{d-1}$ when each mode is a $d$-vector).  
  The linear aggregation $R(\mathbf{Y})=y^{+}+y^{-}+y^{0}$ reduces dimension before the radial projection.

- **Relational path** (normalize without collapse):  

$$
\mathbb{R}^{3} \xrightarrow{\text{normalize}} S^{2}
$$

  (or $\mathbb{R}^{3d}\to S^{3d-1}$).  
  Dimension is preserved until the final radial projection.

Because $R$ is linear,

$$
R\Bigl(\frac{\mathbf{Y}}{\|\mathbf{Y}\|}\Bigr) = \frac{R(\mathbf{Y})}{\|\mathbf{Y}\|},
$$

so the final unit resultant is independent of order. What is not independent of order is the information retained: the aggregate path irreversibly discards the internal proportions that live on the higher-dimensional sphere.

---

## 1D (scalar) version

The quantities are scalars. Form the total

$$
v = y^{+} + y^{-} + y^{0}
$$

and normalize

$$
S = \frac{v}{|v|} \qquad (v\neq 0).
$$

In one dimension this reduces to the sign function

$$
S =
\begin{cases}
+1 & \text{if } v > 0, \\
-1 & \text{if } v < 0.
\end{cases}
$$

When $v=0$ the expression is undefined (or conventionally returns 0).

**Example.**  
$y^{+}=10$, $y^{-}=-3$, $y^{0}=2$ gives $v=9$ and $S=+1$. Any other positive net value yields the same result. Magnitude is discarded; only the sign remains.

Compact form:

$$
S = \frac{y^{+} + y^{-} + y^{0}}{|y^{+} + y^{-} + y^{0}|}
\qquad (y^{+} + y^{-} + y^{0} \neq 0).
$$

---

## 2D normalization

Each channel is a 2-vector. Form the resultant

$$
\mathbf{v} = y^{+} + y^{-} + y^{0} = \begin{bmatrix}
y_x^{+} + y_x^{-} + y_x^{0} \\
y_y^{+} + y_y^{-} + y_y^{0}
\end{bmatrix}
$$

and normalize

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|} = \frac{\begin{bmatrix} v_x \\ v_y \end{bmatrix}}{\sqrt{v_x^{2} + v_y^{2}}}
\qquad (\mathbf{v}\neq\mathbf{0}).
$$

The result satisfies $\|S\|=1$ and lies on the unit circle $S^{1}$.

---

## 3D version

Each channel is a 3-vector. Form the resultant

$$
\mathbf{v} = y^{+} + y^{-} + y^{0} = \begin{bmatrix}
y_x^{+} + y_x^{-} + y_x^{0} \\
y_y^{+} + y_y^{-} + y_y^{0} \\
y_z^{+} + y_z^{-} + y_z^{0}
\end{bmatrix},
$$

compute

$$
\|\mathbf{v}\| = \sqrt{v_x^{2} + v_y^{2} + v_z^{2}},
$$

and normalize

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|}
\qquad (\mathbf{v}\neq\mathbf{0}).
$$

Geometrically $S$ lies on the unit sphere $S^{2}$ in $\mathbb{R}^{3}$.

---

## Dimensional summary (aggregate maps)

- 1D $\to$ sign function, $\{+1,-1\}$
- 2D $\to$ unit circle $S^{1}$
- 3D $\to$ unit sphere $S^{2}$

Higher dimensions replace the binary choice of sign with a continuous manifold of directions. All of the above is the standard Euclidean normalization of a sum, applied in the indicated dimension.

---

## Relational normalization

In a relational framing the three channels are co-constituted modes whose mutual proportions define a state. Absolute magnitude is secondary; the primary object is the relational composition.

- **Resultant-first** (aggregate):  

$$
(y^{+}, y^{-}, y^{0}) \longmapsto v = y^{+} + y^{-} + y^{0} \longmapsto S = \frac{v}{\|v\|}.
$$

  Once the sum is formed, mutual proportions are gone. Only the net effect remains.

- **Relation-first** (triadic):
  
$$
\mathbf{Y} = \begin{bmatrix} y^{+} \\ y^{-} \\ y^{0} \end{bmatrix}, \qquad
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|}.
$$

  The ordered triple is primary. Normalization preserves the ratios $y^{+}:y^{-}:y^{0}$ while stripping overall scale. The factorization

$$
\mathbf{Y} = A\,\hat{\mathbf{Y}}, \qquad A = \|\mathbf{Y}\|
$$

  separates intensity from relational shape.

### Triadic relational state

The fundamental object is the ordered triple regarded as a single relational configuration

$$
\mathbf{Y} =
\begin{bmatrix}
y^{+} \\
y^{-} \\
y^{0}
\end{bmatrix}
\in \mathbb{R}^{3}.
$$

Normalization projects it onto the unit sphere of pure relational proportions:

$$
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|} \in S^{2}.
$$

The pair $(A,\hat{\mathbf{Y}})$ with $A=\|\mathbf{Y}\|$ isolates overall activation from configuration.

### Why the aggregate formula is non-relational

The map

$$
\mathbf{v} = y^{+} + y^{-} + y^{0}, \qquad
S = \frac{\mathbf{v}}{\|\mathbf{v}\|}
$$

collapses the triad. After the sum is taken the distinct channels no longer exist as independent modes; only their net resultant remains. This discards the internal geometry that a relational reading treats as primary.

| Construction | What is primary | What is discarded | Relational status |
|--------------|-----------------|-------------------|-------------------|
| Aggregate (sum then normalize) | Net resultant $\mathbf{v}$ | Internal channel relations | Aggregate / non-relational |
| Triadic normalization $\hat{\mathbf{Y}}$ | Mutual proportions of the three modes | Overall intensity $A$ | Relational configuration on $S^{2}$ (or higher) |

Under a relational dynamic geometry reading the component-preserving map $\mathbf{Y}\mapsto\hat{\mathbf{Y}}$ is the natural operation: it isolates the relational geometry of the triad while treating total activation as a separate scale factor.

The dimensional pattern for the relational versions continues on the spheres of the uncollapsed configuration:
- 1D channels $\to$ points on $S^{2}$
- 2D channels $\to$ points on $S^{5}$
- 3D channels $\to$ points on $S^{8}$
- 4D channels $\to$ points on $S^{11}$

---

#### 1D case

The collapsed normalization reduces to the sign function. Distinct configurations such as $(100,-99,0)$ and $(2,-1,0)$ become identical. Proportional information is entirely lost; only which side wins survives.

#### 2D case

The relational configuration lives on the unit sphere of the stacked six-component vector ($S^{5}$). The ordinary resultant lives on the circle $S^{1}$. The relational reading simply keeps the full normalized configuration rather than collapsing first.

#### 3D case

The relational configuration lives on $S^{8}$. Each point encodes a distinct proportional relation among the three channels.

#### 4D case

Each channel is a 4-vector. The aggregate resultant lives in $\mathbb{R}^{4}$ and normalizes to a point of $S^{3}$.  

The relational form stacks the three 4-vectors into a single configuration

$$
\mathbf{Y}\in\mathbb{R}^{12}
$$

(or a $3\times 4$ matrix) and normalizes

$$
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|} \in S^{11}.
$$

The factorization $\mathbf{Y}=A\,\hat{\mathbf{Y}}$ again isolates overall intensity.  

The resultant-first map collapses $12\to 4$ before projecting onto $S^{3}$; the relation-first map projects the full twelve-component configuration onto $S^{11}$, preserving mutual proportions before any aggregation. The dimensional reduction is irreversible.


## Appendix A. Clarification on order of operations and final aggregate direction

The linearity identity

$$
R\Bigl(\frac{\mathbf{Y}}{\|\mathbf{Y}\|}\Bigr) = \frac{R(\mathbf{Y})}{\|\mathbf{Y}\|}
$$

holds for any linear aggregation operator $R$. The right-hand side does **not** in general have unit norm. Its Euclidean norm is

$$
\left\| \frac{R(\mathbf{Y})}{\|\mathbf{Y}\|} \right\| = \frac{\|R(\mathbf{Y})\|}{\|\mathbf{Y}\|},
$$

which equals 1 only in special cases.

Consequently the statement “the final unit resultant is independent of order” is true only after an additional normalization. Precisely,

$$
\frac{ R\bigl(\mathbf{Y}/\|\mathbf{Y}\|\bigr) }{ \bigl\| R\bigl(\mathbf{Y}/\|\mathbf{Y}\|\bigr) \bigr\| } = \frac{R(\mathbf{Y})}{\|R(\mathbf{Y})\|}
$$

whenever $R(\mathbf{Y})\neq\mathbf{0}$. In other words the two composite maps

$$
\text{normalize}\;\to\;\text{aggregate}\;\to\;\text{normalize}
$$

and

$$
\text{aggregate}\;\to\;\text{normalize}
$$

produce identical unit vectors in the aggregate space.

The geometric distinction between the pipelines is therefore not the final aggregate direction. It is the information that is retained or discarded before that final projection occurs.

---

## Appendix B. Information-theoretic view of the two pipelines

The document describes two distinct processing pipelines on a configuration $\mathbf{Y}\in\mathbb{R}^{3d}$.

**Aggregate pipeline**

$$
\mathbf{Y}\;\xrightarrow{R}\; R(\mathbf{Y})\;\xrightarrow{\text{normalize}}\;\hat{R}.
$$

Information loss occurs at the linear map

$$
R:\mathbb{R}^{3d}\to\mathbb{R}^{d}.
$$

The dimensional reduction $3d\to d$ is irreversible. Subsequent normalization yields a point of the lower-dimensional sphere $S^{d-1}$.

**Relational pipeline**

$$
\mathbf{Y}\;\xrightarrow{\text{normalize}}\;\hat{\mathbf{Y}}.
$$

No aggregation is performed. Only overall scale is removed. After projection the configuration lives on the sphere $S^{3d-1}$, whose dimension is exactly one less than that of the original configuration space.

The two pipelines therefore differ by the placement of the aggregation operator, not by the normalization step itself.

---

## Appendix C. Compact formal statement

Let each of the three modes be a vector in $\mathbb{R}^{d}$, so that the triadic configuration may be written

$$
\mathbf{Y}=(y^{+},y^{-},y^{0})\in\mathbb{R}^{3d}.
$$

Define the linear aggregation

$$
R:\mathbb{R}^{3d}\to\mathbb{R}^{d},\qquad R(\mathbf{Y})=y^{+}+y^{-}+y^{0}.
$$

Then

$$
\hat{\mathbf{Y}}=\frac{\mathbf{Y}}{\|\mathbf{Y}\|}\in S^{3d-1}
$$

preserves the mutual proportions among the three modes, while

$$
\hat{R}=\frac{R(\mathbf{Y})}{\|R(\mathbf{Y})\|}\in S^{d-1}
$$

preserves only the direction of their vector sum.

The fundamental distinction is the placement of the aggregation operator:

$$
\mathbf{Y}\longmapsto\hat{\mathbf{Y}}
\qquad\text{versus}\qquad
\mathbf{Y}\longmapsto R(\mathbf{Y})\longmapsto\hat{R}.
$$

The first map removes scale alone. The second map removes scale after first discarding the relational degrees of freedom that live in the kernel of $R$.

The resulting sphere hierarchy is

$$
\begin{align*}
d=1 &\quad\Rightarrow\quad S^{2},\\
d=2 &\quad\Rightarrow\quad S^{5},\\
d=3 &\quad\Rightarrow\quad S^{8},\\
d=4 &\quad\Rightarrow\quad S^{11}.
\end{align*}
$$

---

## Appendix D. Zero-resultant caveat 

When $R(\mathbf{Y})=\mathbf{0}$ the aggregate normalization is undefined (or returns the zero vector by convention). The relational normalization $\hat{\mathbf{Y}}$ remains well-defined whenever $\mathbf{Y}\neq\mathbf{0}$. This supplies an additional, concrete illustration that the two pipelines retain different information.
