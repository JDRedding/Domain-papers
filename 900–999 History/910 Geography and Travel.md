# Geography, Cartography, and Travel
- 910 Geography & travel

Works in this area describe the Earth, its regions, geographic features, human settlements, and travel resources. They include physical geography, maps, atlases, gazetteers, and travel planning materials. Today the same functions are served by:

- National Geographic, DK, and Oxford world atlases
- Online gazetteers and geoname databases
- GIS platforms that layer physical, demographic, and economic data
- GPS and digital mapping services
- Country-specific and thematic travel series (Lonely Planet, Rough Guides, etc.)

The field continues to link description of the planet with the tools needed to study, represent, and travel across it. In summary, this subject area covers geography, cartography, and travel from general principles to region-specific details, supporting global exploration, travel planning, and geographic research. It brings together the description of Earth, the systems used to measure and represent it, and the practical materials people use to move across it.

## Broad Categories

- **General Geography and Travel**: Geographic encyclopedias, atlases, globes, and general studies of travel, as well as the techniques and history of geographic study.
- **Dictionaries, Gazetteers, and Place Information**: Geographic dictionaries, gazetteers, and statistical information organizing places around the world.
- **Cartography and Geographic Systems**: Works explaining maps, surveying, geographic measurement, and world systems such as longitude and latitude.
- **Regional Geography**: Studies of places by region, covering Europe, Asia, Africa, North America, South America, Oceania, and other areas.
- **Travel Guides and Regional Accounts**: Country-specific information, travel accounts, and regional guides for planning and exploration.

## Purpose and Use

These materials group atlases, maps, gazetteers, and travel guides in a structured way so readers can find global, regional, and country-specific information. They also connect geography with history, culture, and exploration, supporting cross-disciplinary research.

- **Physical and human geography** covers landforms, climate, ecosystems, population, cities, and how people organize space.
- **Cartography** is the theory and practice of maps: projections, scale, symbolization, surveying, and (today) GIS and remote sensing.
- **Place reference works** include gazetteers, geographic dictionaries, and statistical compilations that index names, coordinates, and basic facts.
- **Travel literature and guides** range from classic voyage accounts to contemporary country and regional handbooks used for planning.

These materials sit at the intersection of science, history, and practical navigation. A single atlas can show physical relief, political boundaries, and thematic data; a gazetteer turns that map into a searchable list of places; a travel guide adds culture, logistics, and itineraries.

#### Examples

- A world atlas or thematic map collection
- A gazetteer of global cities
- A guidebook for travelers to Japan
- A statistical overview of African countries
- A regional travel guide for New Zealand

### Landmark Works

Ptolemy’s *Geography* (2nd century) combined a treatise on map-making, a gazetteer of coordinates, and the first systematic atlas of the known world. It remained the foundation of European and Islamic cartography for more than a millennium.

Abraham Ortelius’s *Theatrum Orbis Terrarum* (1570) is usually regarded as the first modern atlas: a bound collection of maps of the whole world with accompanying text. Gerardus Mercator later gave the word “atlas” its present meaning and produced the projection still used for many navigation charts.

Classic travel accounts—Marco Polo, Ibn Battuta, Pigafetta’s narrative of Magellan’s circumnavigation, and later collections such as Hakluyt’s *Principal Navigations*—supplied both geographic data and the narrative tradition that evolved into modern guidebooks.

National and imperial gazetteers (for example the *Imperial Gazetteer of India*) organized place-names, administrative units, and statistics on a systematic scale.

## Mathematical formulas 
- used in geography, cartography, geodesy, and travel/navigation
 These are the equations that sit behind atlases, gazetteers, GPS routing, and GIS layers.

### Earth model and coordinates
Approximate spherical Earth (common for many maps and distances):

$$
R \approx 6371\,\text{km}
$$

Circumference:

$$
C = 2\pi R
$$

A point is given by latitude $\varphi$ (or $\phi$) and longitude $\lambda$, usually in radians for the formulas below.

- $\varphi \in [-\pi/2,\pi/2]$: north positive  
- $\lambda \in (-\pi,\pi]$: east positive  

### Great-circle distance (travel / navigation)
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

### Map scale
Representative fraction:

$$
S = \frac{d_{\text{map}}}{d_{\text{ground}}}
$$

Example: $1:50\,000$ means $S = 1/50\,000$.

On a sphere the local linear scale also depends on the projection (see Mercator below).

### Mercator projection
Cylindrical conformal projection still used for many navigation charts. With longitude $\lambda$ and latitude $\varphi$ in radians, and reference longitude $\lambda_0$:

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

### Simple cylindrical (equirectangular / plate carrée)
$$
x = R(\lambda - \lambda_0),\qquad
y = R\varphi
$$

(used in many GIS “unprojected” lat/lon grids).

### Geodetic (ellipsoidal) Earth
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

### Surveying basics
Plane (local) distance from measured slope distance $s$ and vertical angle $\alpha$:

$$
d_{\text{horizontal}} = s\cos\alpha
$$

Simple plane triangulation (law of sines) for a triangle with known side $a$ and angles $A,B,C$:

$$
\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C}
$$

### GIS / raster and map algebra (conceptual)
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

