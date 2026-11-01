# Normalized sums
## Distinction matters
The aggregate geometric meaning of resultant normalization map is appropriate when the physical or semantic quantity of interest is the net effect (force, current, majority vote, etc.). The triadic map is appropriate precisely when the relational claim is that the mutual proportions among the three modes constitute the primary state, and overall intensity is a secondary, scale-dependent factor. In that framing the unit sphere $S^{2}$ (or its higher-dimensional analogues) is the space of pure relational configurations. The formulas, the zero-vector caveat, the dimensional summary, and the table contrasting the two constructions are the geometric operation in ordinary normalization; the interpretive weight placed on which vector is normalized is what produces the relational versus aggregate reading.

## **Aggregate meaning of resultant normalization**

$$
S = \frac{y^{+} + y^{-} + y^{0}}{\| y^{+} + y^{-} + y^{0} \|}
$$

**Associated notation**
- $S$ — normalized result (unit quantity)
- $y^{+}$ — positive component
- $y^{-}$ — negative component
- $y^{0}$ — zero/neutral component
- $\| \cdot \|$ — Euclidean norm

Normalization takes any nonzero vector and scales it so that its length becomes exactly 1 while leaving its direction unchanged. Geometrically this is radial projection onto the unit sphere (or unit circle in 2D, or the two points $\{\pm 1\}$ in 1D).

- All vectors that point the same way, regardless of how long they are, land on the same point on the unit sphere.
- Magnitude (how strong or large the quantity is) is discarded; only direction (the relative balance of components) is kept.
- The set of all possible normalized results is the unit sphere of the appropriate dimension.

### **Equivalent form**

$$
\mathbf{v} = y^{+} + y^{-} + y^{0}, \qquad
S = \frac{\mathbf{v}}{\|\mathbf{v}\|} \quad (\mathbf{v} \neq \mathbf{0})
$$

The formula is the standard unit-vector normalization:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|_2} \quad (\mathbf{v} \neq \mathbf{0}).
$$

### **Norm definition** (when the terms are real numbers or vector components)

$$
\|\mathbf{v}\|_2 = \sqrt{(y^{+})^2 + (y^{-})^2 + (y^{0})^2}.
$$

### **Properties expressed mathematically**

$$
\|S\|_2 = 1, \qquad S \parallel \mathbf{v}.
$$

The operation is undefined (or conventionally returns the zero vector) when

$$
\| y^{+} + y^{-} + y^{0} \| = 0.
$$

---

## **Triadic (component-preserving) normalization**

$$
\mathbf{Y} =
\begin{bmatrix}
y^{+} \\
y^{-} \\
y^{0}
\end{bmatrix},
\qquad
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|}
= \frac{\mathbf{Y}}{\sqrt{(y^{+})^{2} + (y^{-})^{2} + (y^{0})^{2}}}
$$

### **Associated notation**
- $\mathbf{Y}$ — triadic state vector in $\mathbb{R}^{3}$
- $\hat{\mathbf{Y}}$ — normalized triadic state (unit vector)
- $\| \cdot \|$ — Euclidean norm on $\mathbb{R}^{3}$

### **Magnitude–direction decomposition**

$$
A = \|\mathbf{Y}\|, \qquad
\mathbf{Y} = A \, \hat{\mathbf{Y}}, \qquad
\hat{\mathbf{Y}} \in S^{2}
$$

where $S^{2}$ is the unit sphere in $\mathbb{R}^{3}$.

---

## **1D (scalar) version of the normalization**

The quantities are scalars:

- $y^{+}$ — positive contribution  
- $y^{-}$ — negative contribution  
- $y^{0}$ — neutral (zero-state) contribution  
- $v$ — total combined value  
- $|v|$ — absolute value (1D norm)  
- $S$ — normalized result  

### **Formation of the total**

$$
v = y^{+} + y^{-} + y^{0}
$$

### **Normalization**

$$
S = \frac{v}{|v|} \qquad (v \neq 0)
$$

In one dimension this reduces to the sign function:

$$
S =
\begin{cases}
+1 & \text{if } v > 0, \\
-1 & \text{if } v < 0.
\end{cases}
$$

When $v = 0$ the expression is undefined (or sometimes set to $0$ by convention).

#### **Example**

$$
y^{+} = 10,\quad y^{-} = -3,\quad y^{0} = 2
\quad\Rightarrow\quad
v = 9
\quad\Rightarrow\quad
S = \frac{9}{|9|} = +1
$$

Any other positive net value (e.g., $v = 900$) likewise yields $S = +1$. Magnitude is discarded; only the sign remains.

### **Compact expression**

$$
S = \frac{y^{+} + y^{-} + y^{0}}{\left| y^{+} + y^{-} + y^{0} \right|}
\qquad
\bigl( y^{+} + y^{-} + y^{0} \neq 0 \bigr)
$$

---

## **2D normalization**

Each channel is now a 2-vector:

$$
y^{+} = \begin{bmatrix} y_x^{+} \\ y_y^{+} \end{bmatrix}, \quad
y^{-} = \begin{bmatrix} y_x^{-} \\ y_y^{-} \end{bmatrix}, \quad
y^{0} = \begin{bmatrix} y_x^{0} \\ y_y^{0} \end{bmatrix}.
$$

Form the resultant:

$$
\mathbf{v} = y^{+} + y^{-} + y^{0}
= \begin{bmatrix}
y_x^{+} + y_x^{-} + y_x^{0} \\
y_y^{+} + y_y^{-} + y_y^{0}
\end{bmatrix}.
$$

Normalize:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|}
= \frac{\begin{bmatrix} v_x \\ v_y \end{bmatrix}}{\sqrt{v_x^{2} + v_y^{2}}}
\qquad (\mathbf{v} \neq \mathbf{0}).
$$

The result satisfies $\|S\| = 1$ and lies on the unit circle $S^{1}$. Direction is preserved; length is scaled to 1. There are continuously many possible directions rather than only two.

---

## **3D version**

Each channel is now a 3-vector:

$$
y^{+} = \begin{bmatrix} y_x^{+} \\ y_y^{+} \\ y_z^{+} \end{bmatrix}, \quad
y^{-} = \begin{bmatrix} y_x^{-} \\ y_y^{-} \\ y_z^{-} \end{bmatrix}, \quad
y^{0} = \begin{bmatrix} y_x^{0} \\ y_y^{0} \\ y_z^{0} \end{bmatrix}.
$$

Form the resultant vector:

$$
\mathbf{v} = y^{+} + y^{-} + y^{0} = \begin{bmatrix}
y_x^{+} + y_x^{-} + y_x^{0} \\
y_y^{+} + y_y^{-} + y_y^{0} \\
y_z^{+} + y_z^{-} + y_z^{0}
\end{bmatrix}.
$$

Its Euclidean norm is

$$
\|\mathbf{v}\| = \sqrt{v_x^{2} + v_y^{2} + v_z^{2}}.
$$

The normalized result is the unit vector in the same direction:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|} = \frac{
\begin{bmatrix}
v_x \\
v_y \\
v_z
\end{bmatrix}
}{\sqrt{v_x^{2} + v_y^{2} + v_z^{2}}}
\qquad (\mathbf{v} \neq \mathbf{0}).
$$

Geometrically, $S$ lies on the unit sphere $S^{2}$ in $\mathbb{R}^{3}$:

$$
\|S\| = 1, \qquad S \in S^{2}.
$$

Every nonzero resultant is projected radially onto this sphere. All vectors pointing in the same direction (regardless of length) map to the same point; only the directional composition of the three channels survives.

---

## **Dimensional summary**

- 1D → sign function, $\{+1, -1\}$
- 2D → unit circle $S^{1}$
- 3D → unit sphere $S^{2}$

Higher dimensions replace the binary choice of sign with a continuous manifold of directions. All of the above is the standard Euclidean normalization of a sum (or of a vector), applied in the indicated dimension.

---

## **Relational normalization**

In a relational framing the three channels $y^{+}$, $y^{-}$, and $y^{0}$ are not interchangeable addends that exist prior to their relations. They are co-constituted modes whose mutual proportions define a state. Absolute magnitude is secondary; the primary object is the relational composition.

The two constructions differ exactly in what they treat as primary:

- **Resultant-first** (COnventional formula):  

$$
(y^{+}, y^{-}, y^{0}) \longmapsto v = y^{+} + y^{-} + y^{0} \longmapsto S = \frac{v}{\|v\|}.
$$

  The channels exist only as contributions to a single aggregate. Once the sum is formed, their mutual proportions are gone. Only the net effect remains.

- **Relation-first** (RDG triadic form):  

$$
\mathbf{Y} = \begin{bmatrix} y^{+} \\ y^{-} \\ y^{0} \end{bmatrix}, \qquad
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|}.
$$

  The ordered triple is the primary object. Normalization acts on the configuration itself, preserving the ratios $y^{+} : y^{-} : y^{0}$ while stripping overall scale. The factorization
  
$$
\mathbf{Y} = A\,\hat{\mathbf{Y}}, \qquad A = \|\mathbf{Y}\|
$$

  cleanly separates intensity (activation, field strength) from relational shape (the point on the unit sphere).

### Triadic relational state (preferred relational form)

The fundamental object is the ordered triple regarded as a single relational configuration:

$$
\mathbf{Y} =
\begin{bmatrix}
y^{+} \\
y^{-} \\
y^{0}
\end{bmatrix}
\in \mathbb{R}^{3}.
$$

This point encodes the simultaneous positive, negative, and neutral contributions as an indivisible relational structure.

Normalization projects the configuration onto the unit sphere of pure relational proportions:

$$
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|} = \frac{\mathbf{Y}}{\sqrt{(y^{+})^{2} + (y^{-})^{2} + (y^{0})^{2}}},
\qquad
\hat{\mathbf{Y}} \in S^{2}.
$$

- $\hat{\mathbf{Y}}$ retains only the relative balance among the three modes.
- Total intensity is factored out as a separate scalar:

$$
A = \|\mathbf{Y}\|, \qquad
\mathbf{Y} = A\,\hat{\mathbf{Y}}.
$$

In relational language, $A$ is the overall activation or field strength, while $\hat{\mathbf{Y}}$ is the pure relational geometry of the triad. The pair $(A, \hat{\mathbf{Y}})$ separates intensity from configuration.

### Why the formula is non-relational

The formula collapses the triad:

$$
\mathbf{v} = y^{+} + y^{-} + y^{0},
\qquad
S = \frac{\mathbf{v}}{\|\mathbf{v}\|}.
$$

Once the sum is taken, the distinct relational channels no longer exist as independent modes; only their net resultant remains. This is an aggregate or resultant representation, not a triadic relational state. It discards the internal geometry that relationalism treats as primary.

### Relational picture

In every case the geometric operation is the same: radial projection onto the unit sphere of the configuration space. The sphere itself is the space of pure relational states; points on it differ only by how the modes stand to one another, not by how large the whole is.

| Construction | What is primary | What is discarded | Relational status |
|--------------|-----------------|-------------------|------------|
| Conventional formula (sum then normalize) | Net resultant $\mathbf{v}$ | Internal channel relations | Aggregate / non-relational |
| Triadic normalization $\hat{\mathbf{Y}}$ | Mutual proportions of the three modes | Overall intensity $A$ | Relational configuration on $S^{2}$ |

Under a relational dynamic geometry reading, the component-preserving map $\mathbf{Y} \mapsto \hat{\mathbf{Y}}$ is the natural operation: it isolates the relational geometry of the triad while treating total activation as a separate, scale-dependent factor. The collapsed sum does not.

In both dimensions the conceptual move is identical. Resultant-first keeps the net effect and discards internal geometry. Relation-first keeps the internal geometry of the triad (or multi-channel state) and treats magnitude as a secondary scale factor. That is the core of a relational reading: the primary object is the relational composition, and normalization isolates that composition on the unit manifold.

In the relational reading the primary object remains the ordered triple of channels; the unit sphere of the appropriate dimension is the space of pure relational states. The dimensional pattern continues:

- 1D → $\{\pm 1\}$
- 2D → unit circle $S^{1}$
- 3D → unit sphere $S^{2}$
- 4D → unit 3-sphere $S^{3}$

(with the relational versions living on the correspondingly higher-dimensional spheres of the uncollapsed configuration).

---

#### **1D case.**

**1D**: The collapsed normalization reduces to the sign function. The relational state reduces to a binary opposition. Normalization yields the sign, i.e., which mode dominates:

$$
S = {sgn}(y^{+} + y^{-} + y^{0}) \in \{+1, -1\}.
$$

This is the most compressed possible relational geometry: a binary dominance relation. Proportional information is entirely lost; only which side wins survives. Distinct configurations such as $(100, -99, 0)$ and $(2, -1, 0)$ become identical.

---

#### **2D case.**  

**2D**: The relational configuration lives on the unit circle $S^{1}$. Direction encodes the continuous balance between the two active dimensions of each channel. When each channel carries coordinates, the relational state can be represented as a matrix (or flattened vector) whose Euclidean norm is taken across all entries. Normalization again yields a unit configuration $\hat{\mathbf{Y}}$. Geometrically the ordinary resultant lives on the circle $S^{1}$; the relational reading simply keeps the full normalized configuration rather than collapsing first. The same intensity–configuration split applies: distance from the origin is activation, location on the normalized manifold is relational balance.

---

#### **3D case.**  

**3D**: The relational configuration lives on the unit sphere $S^{2}$. Each point on $S^{2}$ is a distinct proportional relation among the three channels.

---

#### **4D case.**

Each channel is now a 4-vector:

$$
y^{+} = \begin{bmatrix} y_x^{+} \\ y_y^{+} \\ y_z^{+} \\ y_w^{+} \end{bmatrix}, \quad
y^{-} = \begin{bmatrix} y_x^{-} \\ y_y^{-} \\ y_z^{-} \\ y_w^{-} \end{bmatrix}, \quad
y^{0} = \begin{bmatrix} y_x^{0} \\ y_y^{0} \\ y_z^{0} \\ y_w^{0} \end{bmatrix}.
$$

Form the resultant vector:

$$
\mathbf{v} = y^{+} + y^{-} + y^{0} = \begin{bmatrix}
y_x^{+} + y_x^{-} + y_x^{0} \\
y_y^{+} + y_y^{-} + y_y^{0} \\
y_z^{+} + y_z^{-} + y_z^{0} \\
y_w^{+} + y_w^{-} + y_w^{0}
\end{bmatrix}.
$$

Its Euclidean norm is

$$
\|\mathbf{v}\| = \sqrt{v_x^{2} + v_y^{2} + v_z^{2} + v_w^{2}}.
$$

The normalized result is the unit vector in the same direction:

$$
S = \frac{\mathbf{v}}{\|\mathbf{v}\|} = \frac{
\begin{bmatrix}
v_x \\
v_y \\
v_z \\
v_w
\end{bmatrix}
}{\sqrt{v_x^{2} + v_y^{2} + v_z^{2} + v_w^{2}}}
\qquad (\mathbf{v} \neq \mathbf{0}).
$$

Geometrically, $S$ lies on the unit 3-sphere $S^{3}$ in $\mathbb{R}^{4}$:

$$
\|S\| = 1, \qquad S \in S^{3}.
$$

Every nonzero resultant is projected radially onto this 3-sphere. All vectors pointing in the same direction (regardless of length) map to the same point; only the directional composition of the three channels survives. The space of possible directions is now a three-dimensional manifold.

**Relational (triadic) form in 4D**

When the channels are 4-vectors, the ordered triple may be kept as a single relational configuration by stacking:

$$
\mathbf{Y} =
\begin{bmatrix}
y^{+} \\
y^{-} \\
y^{0}
\end{bmatrix}
\in \mathbb{R}^{12},
$$

or equivalently as a $3\times 4$ matrix. Normalization acts on this configuration:

$$
\hat{\mathbf{Y}} = \frac{\mathbf{Y}}{\|\mathbf{Y}\|} = \frac{\mathbf{Y}}{\sqrt{\|y^{+}\|^{2} + \|y^{-}\|^{2} + \|y^{0}\|^{2}}},
\qquad
\hat{\mathbf{Y}} \in S^{11}.
$$

The factorization

$$
\mathbf{Y} = A\,\hat{\mathbf{Y}}, \qquad A = \|\mathbf{Y}\|
$$

again isolates overall intensity from the pure relational geometry. The resultant-first map collapses first to a vector in $\mathbb{R}^{4}$ and then projects onto $S^{3}$; the relation-first map projects the full twelve-component (or matrix) configuration onto $S^{11}$, preserving the mutual proportions among the three modes before any aggregation.
