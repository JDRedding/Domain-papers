Straight line segments art
**Mathematical model of the artwork**

The piece is a generative composition of two families of thin straight line segments on a rectangular canvas. All lines are rendered in the same color against a uniform light-beige background. The visual density (solid appearance) arises purely from close, uniform spacing of the lines rather than from filled polygons or gradients.

### Notation
- Canvas: rectangle $[0, W] \times [0, H]$ (origin at bottom-left; $y$ increases upward).  
- $\mathbf{r}(s) = (x(s), y(s))$ – parametric point on a line segment.  
- $i, k \in \mathbb{Z}$ – discrete indices.  
- $\delta > 0$ – constant inter-line spacing.  
- $N$ – number of lines in a family.

### 1. Vertical line family (right-hand strip)

$$
L_v^{(i)} : \quad
\begin{cases}
x = x_0 + i\,\delta_v \\
y \in [y_{\min}, y_{\max}]
\end{cases}
\qquad i = 0,1,\dots,N_v
$$

where  
- $x_0$ is the left edge of the vertical strip,  
- $\delta_v$ is the horizontal spacing,  
- $y_{\min}$ and $y_{\max}$ define the vertical extent (from near the top of the canvas almost to the bottom).

These are axis-aligned segments of constant $x$.

### 2. Diagonal (parallelogram-filling) line family
The main form is a parallelogram $\mathcal{P}$ defined by a base point $\mathbf{p}$ and two linearly independent vectors $\mathbf{u},\mathbf{v}$:

$$
\mathcal{P} = \bigl\{\mathbf{p} + s\mathbf{u} + t\mathbf{v}\ \big|\ s,t\in[0,1]\bigr\}.
$$

The filling lines are parallel to $\mathbf{u}$ and spaced along the direction of $\mathbf{v}$:

$$
L_d^{(k)} : \quad
\mathbf{r}_k(s) = \mathbf{p} + s\mathbf{u} + t_k\mathbf{v},
\qquad s\in[0,1],\quad
t_k = \frac{k}{N_d},\quad
k = 0,1,\dots,N_d.
$$

Equivalently, in slope-intercept form (when $\mathbf{u}$ has nonzero $x$-component):

$$
y = m\,x + b_k,
$$

where the common slope is

$$
m = \frac{u_y}{u_x}
$$

and the intercepts $b_k$ are chosen so that the segments lie inside $\mathcal{P}$.

From the geometry of the image the slope satisfies $m < 0$ (lines run from upper-left to lower-right).

### Combined rendering
The final image is the set of all points belonging to any of the segments:

$$
\bigcup_{i=0}^{N_v} L_v^{(i)}
\;\cup\;
\bigcup_{k=0}^{N_d} L_d^{(k)}.
$$

Where the two families overlap (right half of the parallelogram), the lines cross, producing a denser texture.

### Typical parameter ranges that reproduce the observed proportions
- $N_d \approx 80$–$120$ (high density creates the solid-optical effect),  
- $N_v \approx 25$–$40$,  
- $\delta_d \ll \delta_v$ (diagonal spacing much finer than vertical spacing),  
- Parallelogram aspect ratio and tilt chosen so that the left tip lies near the left margin and the right side intersects the vertical strip.

These equations, together with a uniform stroke width and a single colour, are sufficient to generate the exact visual structure of the posted artwork.
