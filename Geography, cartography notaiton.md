# Geography, cartography, geodesy, and navigation material
Mathematical equations and formulas, with notation.

## Earth model and coordinates

Approximate spherical Earth (common for maps and distances):

$$
R \approx 6371\,\text{km}
$$

Circumference:

$$
C = 2\pi R
$$

A point is given by latitude $\varphi$ (or $\phi$) and longitude $\lambda$, usually in radians.

- $\varphi \in [-\pi/2,\pi/2]$: north positive  
- $\lambda \in (-\pi,\pi]$: east positive  

## Great-circle distance (travel / navigation)

**Haversine formula** (numerically stable for short and long distances):

$$
\begin{aligned}
\Delta\varphi &= \varphi_2 - \varphi_1 \\
\Delta\lambda &= \lambda_2 - \lambda_1 \\
a &= \sin^2\!\left(\frac{\Delta\varphi}{2}\right) + \cos\varphi_1\cos\varphi_2\sin^2\!\left(\frac{\Delta\lambda}{2}\right) \\
c &= 2\,{atan2}\bigl(\sqrt{a},\,\sqrt{1-a}\bigr) \\
d &= R\,c
\end{aligned}
$$

Equivalent spherical law of cosines:

$$
d = R\arccos\bigl(\sin\varphi_1\sin\varphi_2 + \cos\varphi_1\cos\varphi_2\cos\Delta\lambda\bigr)
$$

Initial bearing (forward azimuth):

$$
\theta = {atan2}\bigl(
\sin\Delta\lambda\cos\varphi_2,\;
\cos\varphi_1\sin\varphi_2 - \sin\varphi_1\cos\varphi_2\cos\Delta\lambda
\bigr)
$$

**Notation**  
- $\varphi_1,\lambda_1$: latitude and longitude of point 1  
- $\varphi_2,\lambda_2$: latitude and longitude of point 2  
- $\Delta\varphi,\Delta\lambda$: differences  
- $a$: haversine intermediate  
- $c$: central angle (radians)  
- $d$: great-circle distance  
- $\theta$: initial bearing  
- ${atan2}(y,x)$: two-argument arctangent  

## Map scale

Representative fraction:

$$
S = \frac{d_{\text{map}}}{d_{\text{ground}}}
$$

Example: $1:50\,000$ means $S = 1/50\,000$.

On a sphere the local linear scale also depends on the projection.

## Mercator projection

Cylindrical conformal projection. Longitude $\lambda$ and latitude $\varphi$ in radians, reference longitude $\lambda_0$:

$$
\begin{aligned}
x &= R(\lambda - \lambda_0) \\
y &= R\ln\left[\tan\left(\frac{\pi}{4} + \frac{\varphi}{2}\right)\right]
     = R\,{arctanh}(\sin\varphi)
\end{aligned}
$$

Inverse:

$$
\begin{aligned}
\lambda &= \frac{x}{R} + \lambda_0 \\
\varphi &= 2\arctan\left(e^{y/R}\right) - \frac{\pi}{2}
\end{aligned}
$$

Local scale factor (increases toward the poles):

$$
k = \frac{1}{\cos\varphi} = \sec\varphi
$$

Area scale is $k^2$.

**Notation**  
- $x,y$: projected plane coordinates  
- $\lambda_0$: central meridian  
- $k$: linear scale factor  

## Simple cylindrical 
(equirectangular / plate carrée)

$$
x = R(\lambda - \lambda_0),\qquad
y = R\varphi
$$

Used in many GIS “unprojected” lat/lon grids.

## Geodetic (ellipsoidal) Earth

WGS84 ellipsoid parameters:

$$
\begin{aligned}
a &= 6378137\,\text{m} && \text{(semi-major axis)} \\
f &= 1/298.257223563 && \text{(flattening)} \\
b &= a(1-f) && \text{(semi-minor axis)} \\
e^2 &= f(2-f) && \text{(first eccentricity squared)}
\end{aligned}
$$

Meridional radius of curvature:

$$
M(\varphi) = \frac{a(1-e^2)}{(1-e^2\sin^2\varphi)^{3/2}}
$$

Prime-vertical radius of curvature:

$$
N(\varphi) = \frac{a}{\sqrt{1-e^2\sin^2\varphi}}
$$

Length of a meridian arc from the equator to latitude $\varphi$ is given by an elliptic integral (series expansions are used in practice).

**Notation**  
- $a$: equatorial radius  
- $b$: polar radius  
- $f$: flattening  
- $e$: first eccentricity  
- $M(\varphi)$: meridional radius of curvature  
- $N(\varphi)$: prime-vertical radius of curvature  

## Surveying basics

Plane (local) distance from measured slope distance $s$ and vertical angle $\alpha$:

$$
d_{\text{horizontal}} = s\cos\alpha
$$

Simple plane triangulation (law of sines) for a triangle with known side $a$ and angles $A,B,C$:

$$
\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C}
$$

**Notation**  
- $s$: slope (measured) distance  
- $\alpha$: vertical angle  
- $a,b,c$: side lengths  
- $A,B,C$: opposite angles  

## GIS / raster and map algebra 
(conceptual)

A map is often a function from coordinates to attributes:

$$
z = f(x,y)\quad\text{or}\quad z = f(\lambda,\varphi)
$$

Map algebra examples (cell-wise):

$$
z_{\text{out}} = z_1 + z_2,\qquad
z_{\text{out}} = \sqrt{(z_x)^2 + (z_y)^2}
$$

(the second is a simple slope magnitude from partial derivatives of a DEM).

**Notation**  
- $z$: attribute or elevation value  
- $z_x,z_y$: partial derivatives of a digital elevation model  

## Relational-tension operators 

Scale tension:

$$
{Describe}(\text{Earth}, s_1) \neq {Describe}(\text{Earth}, s_2)
$$

Projection tension:

$$
{Transform}(\text{Globe} \rightarrow \text{Plane}) \rightarrow {Loss}(\text{shape}, \text{area}, \text{distance})
$$

Boundary tension:

$$
{Partition}(\text{Earth}) \rightarrow {Mismatch}(\text{physical}, \text{cultural}, \text{political})
$$

Place-name / identity tension:

$$
{Index}(\text{Place}) \rightarrow {Conflict}(\text{label}, \text{identity})
$$

Travel / navigation tension:

$$
{Navigate}(\text{Earth}) \rightarrow {Tradeoff}(\text{risk}, \text{reward})
$$

Temporal tension:

$$
{Dynamics}(\text{Earth}) \rightarrow {Lag}(\text{Representation})
$$

Data / evaluation tension:

$$
{Measure}(\text{Earth}) \neq {Evaluate}(\text{Earth})
$$

Representation vs. navigation:

$$
{Represent}(\text{Earth}) \neq {Navigate}(\text{Earth})
$$

Power tension:

$$
{Power}(\text{Representation}) \rightarrow {Bias}(\text{Structure})
$$

