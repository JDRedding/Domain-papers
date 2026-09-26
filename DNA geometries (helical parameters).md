# DNA geometries (helical parameters)

DNA geometries are described by a common set of helical parameters. The same two antiparallel strands keep Watson–Crick pairing; only the screw (rotation and translation per step) changes.

**Notation**
- $n$: base pairs per full turn
- $\Omega$: helical twist (rotation) per base pair
- $h$: rise (axial translation) per base pair
- $P$: pitch (axial length of one complete turn)
- $\eta$: inclination of the base-pair plane relative to the plane perpendicular to the helix axis
- $D_x$: displacement of the base-pair centre from the helix axis

**Fundamental relations**

$$
n=\frac{360^\circ}{\Omega},\qquad P=n\cdot h
$$

(The sign of $\Omega$ is positive for a right-handed helix and negative for a left-handed helix.)

**Typical values**

| Form | Sense | $n$ | $\Omega$ | $h$ (Å) | $P$ (Å) | $\eta$ | $D_x$ (Å) |
|------|-------|-------|------------|-----------|-----------|----------|-------------|
| A    | right | 11    | $\approx +32.7^\circ$ | 2.3–2.6 | $\approx 28$ | $+19^\circ$ | $\approx-4.5$ to $-5.2$ |
| B    | right | 10.5  | $\approx +34.3^\circ$ | 3.32–3.4 | $\approx 33$–34 | $\approx-1^\circ$ | $\approx 0$ |
| C    | right | 9.33  | $\approx +38.6^\circ$ | $\approx 3.32$ | $\approx 31$ | modest positive | modest negative |
| Z    | left  | 12    | $\approx-30^\circ$ (or $-60^\circ$ per dinucleotide) | 3.7–3.8 | $\approx 45$ | $\approx-7^\circ$ to $-9^\circ$ | $\approx-3$ to $-4$ |

(The Z-form repeating unit is a dinucleotide, which produces the characteristic zigzag backbone.)

**Parametric helix equations**  
A point on a helical backbone of radius $r$ is given by

$$
x=r\cos\phi,\qquad
y=r\sin\phi,\qquad
z=\frac{P}{2\pi}\phi
$$

where the azimuthal angle advances by $\Omega$ at each successive base pair. The two strands are related by a 180° rotation about the helix axis plus a half-pitch translation, preserving the antiparallel orientation.

These parameters fully determine the short-wide A helix, the everyday B helix, the compact C helix and the elongated left-handed Z helix.
