# Marine Navigation Mathematics (Classical)

A consolidated mathematical reference covering plane sailing, dead reckoning, rhumb-line navigation, great-circle navigation, celestial navigation, Mercator sailing, and magnetic navigation.

## Route Geometry

$$
\text{Sphere}
\rightarrow
\text{Great Circles}
\rightarrow
\text{Rhumb Lines}
$$

## Daily Navigation

$$
Speed \times Time
\rightarrow
Distance
\rightarrow
Dead\ Reckoning
\rightarrow
Estimated\ Position
$$

## Position Correction

$$
Dead\ Reckoning +
Celestial\ Observation =
Navigational\ Fix
$$

## Historical Ocean Navigation

$$
\boxed{
DR +
Plane\ Sailing +
Mid\ Latitude\ Sailing +
Celestial\ Navigation +
Mercator\ Sailing +
Magnetic\ Navigation =
Classical\ Ocean\ Navigation
}
$$

---

# 1. Fundamental Quantities

## Geographic Coordinates

$$
L = \text{Latitude}
$$

$$
\lambda = \text{Longitude}
$$

$$
\Delta L = L_2-L_1
$$

$$
\Delta\lambda=\lambda_2-\lambda_1
$$

where

- $L_1,L_2$ = initial and final latitude
- $\lambda_1,\lambda_2$ = initial and final longitude

---

## Mean Latitude

$$
L_m=\frac{L_1+L_2}{2}
$$

---

## Distance Units

By definition,

$$
1^\circ = 60'
$$

$$
1' = 1\;\text{nautical mile}
$$

Therefore

$$
1^\circ = 60\;\text{nautical miles}
$$

---

# 2. Difference of Latitude

Angular difference:

$$
\Delta L=L_2-L_1
$$

Distance equivalent:

$$
l=60\Delta L
$$

Inverse:

$$
\Delta L=\frac{l}{60}
$$

where

- $l$ = north-south distance (nm)

---

# 3. Plane Sailing

Applicable for short distances.

## Components

$$
l=D\cos C
$$

$$
p=D\sin C
$$

where

- $D$ = distance run
- $C$ = course
- $l$ = latitude component
- $p$ = departure

---

## Course

$$
\tan C=\frac{p}{l}
$$

$$
C=\arctan\left(\frac{p}{l}\right)
$$

---

## Distance

$$
D=\sqrt{l^2+p^2}
$$

Equivalent:

$$
D^2=l^2+p^2
$$

---

# 4. Departure

Departure is east-west distance measured in nautical miles.

$$
p=D\sin C
$$

Or

$$
p=\text{DLo}'\cos L
$$

where

- DLo' = longitude difference in arc-minutes

---

# 5. Parallel Sailing

Travel occurs along one latitude.

## Basic relation

$$
p=\text{DLo}'\cos L
$$

## Longitude difference

$$
\text{DLo}'=\frac{p}{\cos L}
$$

## Latitude recovery

$$
\cos L=\frac{p}{\text{DLo}'}
$$

---

## Degree Form

$$
p=60(\text{DLo})\cos L
$$

and

$$
\text{DLo} =
\frac{p}{60\cos L}
$$

---

# 6. Mid-Latitude Sailing

## Mean Latitude

$$
L_m=\frac{L_1+L_2}{2}
$$

## Departure Relation

$$
p=\text{DLo}'\cos L_m
$$

## Longitude Difference

$$
\text{DLo}' =
\frac{p}{\cos L_m}
$$

Combining with plane sailing:

$$
\text{DLo}' =
\frac{D\sin C}{\cos L_m}
$$

---

# 7. Rhumb-Line Navigation

A rhumb line maintains constant heading.

## Latitude Component

$$
\Delta L=D\cos C
$$

## Departure

$$
p=D\sin C
$$

## Longitude Difference

$$
\text{DLo}' =
\frac{p}{\cos L_m}
$$

Substituting:

$$
\text{DLo}' =
\frac{D\sin C}{\cos L_m}
$$

---

## Course

$$
\tan C =
\frac{p}{\Delta L}
$$

or

$$
\tan C =
\frac{\text{DLo}'\cos L_m}{\Delta L}
$$

---

## Distance

$$
D =
\sqrt{(\Delta L)^2+p^2}
$$

---

# 8. Dead Reckoning

Distance from speed and time:

$$
D=V_bt
$$

where

- $V_b$ = vessel speed
- $t$ = elapsed time

---

## Latitude Change

$$
\Delta L
\approx
\frac{D\cos C}{60}
$$

---

## Longitude Change

$$
\Delta\lambda
\approx
\frac{D\sin C}{60\cos L}
$$

---

## Position Update

$$
L_{new}=L_{old}+\Delta L
$$

$$
\lambda_{new} =
\lambda_{old}+\Delta\lambda
$$

---

# 9. Great-Circle Distance

The spherical law of cosines gives:

$$
\cos D =
\sin L_1\sin L_2 +
\cos L_1\cos L_2\cos\Delta\lambda
$$

Therefore

$$
D =
\arccos
\left(
\sin L_1\sin L_2 +
\cos L_1\cos L_2\cos\Delta\lambda
\right)
$$

---

## Distance Conversion

If $D$ is in degrees:

$$
\text{Distance}_{nm}=60D
$$

If $D$ is in radians:

$$
\text{Distance}_{nm} =
60D\frac{180}{\pi}
$$

or

$$
\text{Distance}_{nm} =
3440.065D
$$

---

# 10. Great-Circle Initial Course

$$
\tan C =
\frac{\sin\Delta\lambda}
{\cos L_1\tan L_2-\sin L_1\cos\Delta\lambda}
$$

Preferred computational form:

$$
C=
{atan2}
\left(
\sin\Delta\lambda,
\cos L_1\tan L_2 -
\sin L_1\cos\Delta\lambda
\right)
$$

---

# 11. Alternate Great-Circle Course Formula

After distance $D$ is known:

$$
\cos C =
\frac
{\sin L_2-\sin L_1\cos D}
{\cos L_1\sin D}
$$

Thus

$$
C=
\arccos
\left(
\frac
{\sin L_2-\sin L_1\cos D}
{\cos L_1\sin D}
\right)
$$

---

# 12. Spherical Law of Cosines

For any spherical triangle:

$$
\cos a =
\cos b\cos c +
\sin b\sin c\cos A
$$

---

# 13. Spherical Law of Sines

$$
\frac{\sin A}{\sin a} =
\frac{\sin B}{\sin b} =
\frac{\sin C}{\sin c}
$$

---

# 14. Navigational Triangle

Vertices:

- $P$ = North Pole
- $A$ = Departure Point
- $B$ = Destination

Sides:

$$
PA=90^\circ-L_1
$$

$$
PB=90^\circ-L_2
$$

$$
AB=D
$$

Angles:

$$
\angle P=\Delta\lambda
$$

$$
\angle A=C
$$

---

# 15. Velocity Made Good (VMG)

$$
\text{VMG}
=
V_b\cos\theta
$$

where

- $\theta$ = angle between heading and target direction

Special cases:

$$
\theta=0
\Rightarrow
VMG=V_b
$$

$$
\theta=90^\circ
\Rightarrow
VMG=0
$$

---

# 16. Meridian Convergence

Length of one degree longitude:

$$
D_\lambda =
60\cos L
$$

nautical miles.

Length of one minute longitude:

$$
M_\lambda =
\cos L
$$

nautical miles.

Length of one degree latitude:

$$
D_\phi =
60
$$

nautical miles.

---

# 17. Earth Geometry

Arc length:

$$
s=R\theta
$$

Angular distance:

$$
\theta=\frac{s}{R}
$$

Conversion:

$$
NM=60\theta
$$

when $\theta$ is in degrees.

---

# 18. Mercator Sailing

Mercator sailing improves rhumb-line calculations.

## Meridional Parts

Approximation:

$$
M =
7915.704\,
\log_{10}
\left(
\tan
\left(
45^\circ+\frac{L}{2}
\right)
\right)
$$

---

Difference:

$$
\Delta M=M_2-M_1
$$

---

Course:

$$
\tan C
=
\frac{\text{DLo}'}{\Delta M}
$$

---

Distance:

$$
D =
\Delta L\sec C
$$

---

# 19. Celestial Navigation

## Sextant Reduction

Observed altitude:

$$
H_a
=
H_s+I_c
$$

True altitude:

$$
H_o =
H_s+I_c-Dip-Ref+SD+PA
$$

where

- $H_s$ = sextant altitude
- $I_c$ = index correction
- $Dip$ = dip correction
- $Ref$ = refraction
- $SD$ = semidiameter
- $PA$ = parallax

---

# 20. Local Hour Angle

West longitude:

$$
LHA=GHA+Lon
$$

East longitude:

$$
LHA=GHA-Lon
$$

---

# 21. Celestial Triangle

Sides:

$$
PZ=90^\circ-Lat
$$

$$
PS=90^\circ-Dec
$$

$$
ZS=90^\circ-H
$$

---

# 22. Altitude Equation

Fundamental celestial-navigation equation.

$$
\sin H_c =
\sin Lat \sin Dec +
\cos Lat \cos Dec \cos LHA
$$

Thus

$$
H_c =
\arcsin
\left(
\sin Lat \sin Dec +
\cos Lat\cos Dec\cos LHA
\right)
$$

---

# 23. Azimuth Equation

$$
\cos Z =
\frac
{\sin Dec-\sin Lat\sin H_c}
{\cos Lat\cos H_c}
$$

---

# 24. Intercept Method

Intercept:

$$
a=H_o-H_c
$$

Distance:

$$
Intercept_{nm} =
60(H_o-H_c)
$$

when expressed in degrees.

If in minutes:

$$
Intercept_{nm} =
H_o-H_c
$$

---

# 25. Latitude by Meridian Altitude

At local noon:

$$
Lat =
90^\circ-H_o+Dec
$$

with sign adjustments depending on body position.

---

# 26. Longitude by Chronometer

Earth rotates:

$$
360^\circ
\text{ per }
24h
$$

Thus

$$
15^\circ/h
$$

Longitude:

$$
Longitude =
(Local\ Time-GMT)\times15^\circ
$$

---

# 27. Polaris Latitude

Approximation:

$$
Lat
\approx
Altitude(Polaris)
$$

More precisely:

$$
Lat =
H_P+Corrections
$$

---

# 28. Horizon Distance

Exact:

$$
d =
\sqrt{2Rh+h^2}
$$

Approximate:

$$
d
\approx
\sqrt{2Rh}
$$

Practical rule:

$$
d
\approx
1.17\sqrt{h}
$$

where

- $h$ = feet
- $d$ = nautical miles

---

# 29. Dip Correction

Approximation:

$$
Dip
\approx
0.97\sqrt h
\text{ minutes}
$$

---

# 30. Atmospheric Refraction

Approximation:

$$
Ref
\approx
\frac{0.97}{\tan H}
\text{ minutes}
$$

---

# 31. Parallax

$$
PA =
HP\cos H
$$

where

- $HP$ = horizontal parallax

---

# 32. Line of Position

Circle of equal altitude:

$$
H_o = Constant
$$

Two observations:

$$
LOP_1\cap LOP_2 =
Fix
$$

Three observations:

$$
LOP_1\cap LOP_2\cap LOP_3
=
Best\ Fix
$$

---

# 33. Magnetic Navigation

Variation:

$$
T=M+Var
$$

or

$$
M=T-Var
$$

where

- $T$ = true course
- $M$ = magnetic course

---

Deviation:

$$
M=C+Dev
$$

or

$$
C=M-Dev
$$

where

- $C$ = compass course

---

Complete relation:

$$
T=C+Dev+Var
$$

or

$$
C=T-Var-Dev
$$


