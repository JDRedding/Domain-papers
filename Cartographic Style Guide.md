## 🗺️ Cartographic Style Guide
Fantasy Maps (Ruins & Relics Edition)

### **1. Core Aesthetic Principles**
- **Monochrome Engraving** — black‑and‑white linework with controlled hachures; evokes historical atlases and surveyor charts.  
- **High‑contrast readability** — prioritize clarity over ornamentation; avoid dense textures that obscure labels.  
- **Diegetic authenticity** — maps should feel like artifacts *from the world*, not external illustrations.

---

## 🧭 2. Geographic Projection & Layout

### **Projection**
- Use a **pseudo‑Mercator** or **equirectangular** grid for familiarity.  
- Graticule lines every **5°** or **10°** depending on map scale.  
- Latitude/longitude labels in small caps.

#### 1. Equirectangular (Plate Carrée) Projection
The simplest equal-spaced latitude–longitude grid used for familiarity and easy labeling:

$
\begin{align*}
x &= R\,(\lambda - \lambda_0)\cos\varphi_1 \\
y &= R\,(\varphi - \varphi_0)
\end{align*}
$

- $\lambda, \varphi$: longitude and latitude (radians)  
- $\lambda_0, \varphi_0$: central meridian and reference parallel  
- $R$: radius of the generating sphere (or fictitious planetary radius in world units)  
- $\varphi_1$: standard parallel (often $04 for pure plate carrée)  

Graticule lines every $5^\circ$ or $10^\circ$ are simply constant - $\lambda$ or constant - $\varphi$ isolines under this mapping.

#### 2. Mercator (and pseudo-Mercator) Projection
The conformal cylindrical projection commonly approximated for fantasy maps:

$$
\begin{align*}
x &= R\,(\lambda - \lambda_0) \\
y &= R\,\ln\left[\tan\left(\frac{\pi}{4} + \frac{\varphi}{2}\right)\right]
\end{align*}
$$

or equivalently

$$
y = R\,\text{artanh}(\sin\varphi).
$$

Scale factor $k$ increases with latitude:

$$
k(\varphi) = \frac{1}{\cos\varphi}.
$$

Pseudo-Mercator variants simply replace the true spherical formulas with a slightly adjusted $R$ or a clipped polar cutoff to keep the map finite.

### **Scale**
- Define a diegetic unit (e.g., *Avenian Miles*).  
- Use a **bar scale**, not numeric-only scale, for visual clarity.

A diegetic unit (e.g., Avenian mile) is related to map distance by the representative fraction (RF):

$$
\text{RF} = \frac{D_{\text{map}}}{D_{\text{ground}}} = \frac{1}{S}.
$$

For a bar scale of length $L_{\text{bar}}$ representing ground distance $D$:

$$
L_{\text{bar}} = \frac{D}{S}.
$$

On an equirectangular map the local ground distance corresponding to a map increment $\Delta x, \Delta y$ is approximately

$$
ds \approx R\sqrt{(\Delta\lambda\cos\varphi)^2 + (\Delta\varphi)^2}.
$$

#### Spherical Distance (useful for placing features consistently)
Great-circle distance between two points $(\varphi_1,\lambda_1)$ and $(\varphi_2,\lambda_2)$:

$$
\Delta\sigma = 2\arcsin\sqrt{\sin^2\left(\frac{\Delta\varphi}{2}\right) + \cos\varphi_1\cos\varphi_2\sin^2\left(\frac{\Delta\lambda}{2}\right)}
$$

(haversine form). Ground distance $d = R\Delta\sigma$.

### **Compass Rose**
- Minimalist: four cardinal points only.  
- Optional embellishment: cultural motifs from Valna (e.g., Avenon sunburst).

---

## 🏔️ 3. Terrain Symbology

### **Mountains**
- Render with **hachures**, not shaded relief.  
- Orientation of strokes indicates slope direction.  
- Major ranges labeled along their spine.

### **Forests**
- Stylized tree icons in clusters.  
- Density indicates forest thickness.  
- Ancient or magical forests get unique icon variants.

### **Deserts**
- Sparse dotted texture.  
- Dune lines for major sand seas.

### **Water Bodies**
- Seas: horizontal wave lines.  
- Rivers: single bold line tapering upstream.  
- Lakes: solid fill with thin outline.

---

## 🏙️ 4. Settlement & Political Markers

### **Cities**
- Solid circle with radiating tick marks for capitals.  
- Medium circle for major cities.  
- Small dot for towns.

### **Borders**
- Solid line for political borders.  
- Dashed line for disputed territories.  
- Dotted line for cultural regions.

### **Regions**
- Label in uppercase serif type.  
- Curved text following geographic shape.

---

## 🔤 5. Typography Rules

### **Typefaces**
- **Serif** for all labels (evokes historical atlases).  
- Avoid decorative fantasy fonts.

### **Hierarchy**
- **CONTINENTS** — large caps, letterspaced.  
- **REGIONS** — medium caps.  
- **CITIES** — small caps.  
- **Features** (rivers, mountains) — italics.

### **Placement**
- Rivers: label parallel to flow.  
- Mountains: label along ridge line.  
- Seas: large, centered, gently curved.

---

## 🧩 6. Decorative Elements (Optional but Consistent)

### **Insets**
- Use for dense regions or historical overlays.  
- Frame with thin double-line border.

### **Heraldry**
- Place faction sigils in corners or near capitals.  
- Keep monochrome to match map aesthetic.

### **Cartouche**
- Title block with date (e.g., *2662 Betheladoran Calendar*).  
- Include scale and mapmaker credit.

---

## 📐 7. Line Weight System
Line-Weight Hierarchy as Visual Order

While artistic, the recommended weights (0.8–1.0 pt coastlines, 0.6 pt borders/major rivers, $\ldots$, 0.2 pt graticule) can be treated as a discrete visual scale ordered by semantic importance. No deeper formula is required; the numerical sequence itself encodes the ranking.

- **0.8–1.0 pt** — coastlines (primary visual anchor).  
- **0.6 pt** — borders, major rivers.  
- **0.4 pt** — minor rivers, roads.  
- **0.3 pt** — hachures, forest icons.  
- **0.2 pt** — graticule lines.

---

## 🧱 8. Material & Texture Guidelines

- Paper tone: light cream or parchment.  
- No artificial aging unless diegetic (e.g., “Recovered from the Library of Dwinovar”).  
- Keep texture subtle to preserve readability.

---

## 📚 9. Lore Integration Rules

### **Calendars & Dates**
- Always include the world’s calendar system.  
- Use consistent notation (e.g., *2662 B.C.* = *Betheladoran Calendar*).

### **Cultural Cartography**
- Different factions may have variant map styles — but all must obey the core guide.  
- Example:  
  - Avenon maps use sunburst motifs.  
  - Tashamar maps use angular, gothic borders.

---

## 🧭 10. Production Workflow

1. **Define region scope**  
2. **Sketch landmasses**  
3. **Place major terrain**  
4. **Add political boundaries**  
5. **Apply typography hierarchy**  
6. **Final pass:** balance contrast, spacing, and label collisions.

---

## next steps

- **A printable PDF-style layout**  
- **A symbol sheet for  artists**  
- **A full Ruins & Relics cartographer’s handbook**  
