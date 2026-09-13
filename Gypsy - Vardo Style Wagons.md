# Gypsy - Vardo Style Wagons

## Fundamentals

Horse-drawn living wagons adopted by British Romani (Romanichal) around the 1850s.

The name *vardo* comes from Ossetic *wærdon*, meaning “cart.”

Before vardos, families used tents or slept under tilt carts.

**Heyday:** late 1800s to early 1900s (“wagon time”).

Usually pulled by one horse; a second “sider” horse could be added for hills or heavy loads.

Large rear wheels often sit outside the body for better off-road travel.

Interiors typically include a stove, a raised rear bed with storage beneath, benches, and cupboards.

Decoration (carving, bright paint, gold leaf) signaled wealth and status.

Few original examples remain; most today are restored or built for fairs, glamping, or display.

## Main Types

**Burton**  
Oldest British living-wagon style. Smaller wheels; originally plain, later decorated. Less suited to rough ground.

**Brush (Fen)**  
Straight sides, rear half-door with shutters, no skylight (mollycroft). Exterior racks for goods. Functioned as a traveling storefront.

**Reading (Kite)**  
Iconic “rich man’s” wagon. Straight sides that slope outward toward the eaves, high arched roof, large rear wheels outside the body. Named after the builders Dunton of Reading. Lavish carving and paint.

**Ledge (Cottage)**  
Body extends over the rear wheels on ledges, creating more interior space. Cottage-like shape, robust frame, often with porches and a mollycroft.

**Bow Top (Barrel Top)**  
Lightest and most recognizable. Low wooden sides; canvas or cotton-duck roof stretched over curved wooden bows. Often painted green to blend into woodland. Good for hills and fords.

**Open Lot**  
Similar to the Bow Top but open at the front (curtain instead of a full door). Canvas can be rolled back. Lighter and more common in later years; often built on existing cart bases.

## Variables That Change the Wagon

- **Roof:** canvas bow vs wooden barrel vs sloped wooden  
- **Walls:** straight sloped vs ledge-overhang vs low-sided  
- **Wheels:** size difference (rear usually larger); placement inside or outside the body  
- **Skylight:** mollycroft present or absent  
- **Door:** front porch vs rear
- **Size / weight:** typically 9–13 ft long, 10–12 ft high; 700–1450+ kg
- **Decoration:** plain working wagon vs heavily carved and gilded  
- **Materials:** oak, ash, elm, walnut, pine; tongue-and-groove boards; canvas duck  
- **Purpose:** family home vs market stall / hawker cart vs showman’s wagon  

Modern versions are often built on trailer frames rather than horse-drawn and used as tiny homes, glamping units, or fair displays.

---

# Gypsy / Vardo Wagon Equations and Notation

## Notation

| Symbol | Meaning | Unit |
|---|---|---|
| $L$ | body length (floor) | $\mathrm{m}$ |
| $W_f$ | floor width (inside, between walls at floor) | $\mathrm{m}$ |
| $W_e$ | eave / roof width | $\mathrm{m}$ |
| $H$ | overall height from ground | $\mathrm{m}$ |
| $h$ | interior headroom / wall height to spring of roof | $\mathrm{m}$ |
| $\theta$ | wall flare angle from vertical (Reading / kite sides) | $\mathrm{rad}$ or $^\circ$ |
| $\alpha$ | road grade angle | $\mathrm{rad}$ |
| $R$ | bow-roof radius | $\mathrm{m}$ |
| $s$ | roof arc length | $\mathrm{m}$ |
| $\phi$ | roof half-angle | $\mathrm{rad}$ |
| $D_r$, $D_f$ | rear and front wheel diameters | $\mathrm{m}$ |
| $C$ | wheel circumference | $\mathrm{m}$ |
| $N$ | wheel revolutions | — |
| $d$ | distance travelled | $\mathrm{m}$ |
| $t_r$, $t_f$ | rear and front track (wheel centre to centre) | $\mathrm{m}$ |
| $\delta$ | wheel dish / camber offset | $\mathrm{m}$ |
| $m$ | wagon mass (tare + load) | $\mathrm{kg}$ |
| $W$ | weight, $W = mg$ | $\mathrm{N}$ |
| $g$ | gravitational acceleration | $9.81\,\mathrm{m\,s^{-2}}$ |
| $\mu_r$ | rolling-resistance coefficient | — |
| $F_d$ | draft (pull) force | $\mathrm{N}$ |
| $F_h$ | sustainable horse draft | $\mathrm{N}$ |
| $m_h$ | horse body mass | $\mathrm{kg}$ |
| $h_{\mathrm{CG}}$ | centre-of-gravity height above ground | $\mathrm{m}$ |
| $T$ | track width (outer wheel contact) | $\mathrm{m}$ |
| $v$ | speed | $\mathrm{m\,s^{-1}}$ |
| $\rho$ | curve radius | $\mathrm{m}$ |

## Typical Historical Ranges

Use these as starting values when substituting into the equations.

| Type | $L$ | $W_f$ | $H$ | $m$ |
|---|---|---|---|---|
| Reading | $3.0$–$3.4\,\mathrm{m}$ | $1.35\,\mathrm{m}$ | $3.3\,\mathrm{m}$ | $\approx 1450\,\mathrm{kg}$ |
| Ledge | $3.5$–$3.7\,\mathrm{m}$ (incl. porch) | $1.30\,\mathrm{m}$ | $3.5\,\mathrm{m}$ | $\approx 1250\,\mathrm{kg}$ |
| Bow Top | $3.0\,\mathrm{m}$ | $1.58\,\mathrm{m}$ at floor | $3.0\,\mathrm{m}$ | $\approx 700\,\mathrm{kg}$ |

Rear wheels on Reading types are often $\Delta D \approx 0.45\,\mathrm{m}$ ($18\,\mathrm{in}$) larger than the front wheels.

Wall flare on Reading-style builds is often $\theta \approx 5^\circ$–$8^\circ$.

## Geometry — Sloped Sides (Reading / Kite)

$$
W_e = W_f + 2h\tan\theta
$$

$$
\theta = \arctan\left(\frac{W_e-W_f}{2h}\right)
$$

Wall length along the slope:

$$
L_{\mathrm{wall}} = \frac{h}{\cos\theta}
$$

## Geometry — Bow / Barrel Roof

Treat the canvas or wooden bows as a circular arc of radius $R$ spanning floor width $W_f$ (or eave width $W_e$).

Half-angle (arc less than a semicircle):

$$
\phi = \arcsin\left(\frac{W_f}{2R}\right)
$$

Rise of the crown above the spring line:

$$
h_{\mathrm{rise}} = R\bigl(1-\cos\phi\bigr)
$$

Arc length of one bow:

$$
s = 2R\phi,\qquad \phi\ \text{in radians}
$$

Workshop approximation (string-and-pencil method with diameter $\approx 2\times$ wall width):

$$
R \approx W_f
$$

## Wheel Kinematics

$$
C = \pi D
$$

$$
d = NC = N\pi D
$$

If rear and front diameters differ,

$$
\frac{d_r}{d_f} = \frac{D_r}{D_f}.
$$

The same $N$ would imply different path lengths: the wagon is not a rigid rolling pair like a railway axle.

## Track and Dish

Outer stability track $T$ increases when the rear wheels sit outside the body:

$$
T_r > T_f.
$$

The front track is narrower to ease turning.

Dish / negative-camber offset $\delta$ moves the contact patch outward relative to the hub.

## Volume (rough interior)

Rectangular-box estimate:

$$
V_{\mathrm{box}} = L\,W_f\,h
$$

Flared Reading prismoid (mean width):

$$
V_{\mathrm{flare}} = Lh\,\frac{W_f+W_e}{2}
$$

Bow-top addition of the roof segment:

$$
A_{\mathrm{seg}} = R^{2}\bigl(\phi-\sin\phi\cos\phi\bigr)
$$

$$
V_{\mathrm{bow}} = V_{\mathrm{box}} + A_{\mathrm{seg}}L
$$

## Draft on Level Ground

$$
F_d = \mu_r W = \mu_r mg
$$

Typical values of $\mu_r$:

| Surface | $\mu_r$ |
|---|---|
| hard road / packed gravel | $0.02$–$0.05$ |
| dirt / grass | $0.06$–$0.10$ |
| loose sand | $\sim 0.30$ |

## Draft on a Grade

$$
F_d = \mu_r mg\cos\alpha + mg\sin\alpha
$$

Small-grade approximation, with percent grade $p=100\tan\alpha$:

$$
F_d \approx \mu_r mg + mg\left(\frac{p}{100}\right)
$$

Example: a $10\%$ grade adds about $0.10W$ to the pull.

## Horse Pull Capacity (rule of thumb)

Sustainable draft at walk ($v\sim 1\,\mathrm{m\,s^{-1}}$):

$$
F_h \approx (0.10\text{–}0.14)\,m_h g
$$

Peak short effort can approach or exceed body weight.

A single cob / light draught horse ($m_h\sim 400$–$600\,\mathrm{kg}$) is the historical match for a $700$–$1450\,\mathrm{kg}$ vardo on reasonable roads; a sider horse is added on hills.

## Stability / Tipping (static)

Tipping begins when the vertical through the centre of gravity falls outside the downhill wheel contact.

Critical lean angle:

$$
\beta_{\mathrm{crit}} = \arctan\left(\frac{T}{2h_{\mathrm{CG}}}\right)
$$

Lower $h_{\mathrm{CG}}$ and a wider rear track (wheels outside the body) increase $\beta_{\mathrm{crit}}$.

This is why Reading and Ledge rear wheels sit outside the body.

## Cornering (centrifugal)

Lateral force:

$$
F_c = \frac{mv^{2}}{\rho}
$$

Overturn risk rises when $F_c h_{\mathrm{CG}}$ exceeds the restoring moment $\tfrac{1}{2}TW$.

Keep speed down on tight lanes.

## Axle Load Split (two-axle)

Let the centre of gravity lie a distance $a$ behind the front axle and $b$ in front of the rear axle, with wheelbase

$$
L_{\mathrm{wb}} = a+b.
$$

Then

$$
R_{\mathrm{front}} = W\,\frac{b}{L_{\mathrm{wb}}},\qquad
R_{\mathrm{rear}} = W\,\frac{a}{L_{\mathrm{wb}}}.
$$

Traditional layouts put more load on the larger rear wheels.

## Units Check

Keep SI units consistent: $\mathrm{m}$, $\mathrm{kg}$, $\mathrm{N}$, $\mathrm{rad}$.

Historical conversions:

$$
1\,\mathrm{ft} = 0.3048\,\mathrm{m}
$$

$$
1\,\mathrm{in} = 0.0254\,\mathrm{m}
$$

$$
1\,\mathrm{kgf} \approx 9.81\,\mathrm{N}
$$

## Future Work

- Romani cultural history  
- Traditional woodworking techniques  
- Reading vardo structural stress  
- Celtic caravan history
