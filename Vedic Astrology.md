# Vedic Astrology

Vedic Astrology, also known as Jyotish Shastra, is the ancient Indian system of astrology that interprets cosmic influences on human life based on planetary positions and lunar constellations. Vedic Astrology emphasizes a holistic understanding of life, combining cosmic influences with personal effort (karma) to guide decisions and personal growth. It is widely practiced in India and has gained global interest for its detailed approach to personality analysis and future predictions.

Vedic Astrology, or Jyotish, is rooted in the Vedas, the ancient Hindu scriptures. Unlike Western astrology, which primarily uses the tropical zodiac, Vedic Astrology is based on the sidereal zodiac, which accounts for the actual positions of planets relative to constellations in the sky. Its primary goal is to guide individuals in understanding their life path, personality, relationships, health, and future events.

## Key Components

### Planets (Grahas)
There are nine major planets used in Vedic Astrology: Sun, Moon, Mars, Mercury, Jupiter, Venus, Saturn, Rahu (North Node of the Moon), and Ketu (South Node of the Moon). Each planet represents specific energies and influences various aspects of life.

### Zodiac Signs (Rashis)
The twelve zodiac signs correspond to segments of the sky, each with unique traits and characteristics affecting individuals differently based on the planet’s placement.

### Houses (Bhavas)
The twelve houses in a birth chart represent areas of life, such as wealth, career, relationships, and health. The combination of planetary positions in these houses provides insight into personal experiences and challenges.

### Nakshatras (Lunar Mansions)
The 27 lunar constellations provide additional granularity for interpreting individual birth charts, timing of events, and personality traits.

### Divisional Charts
Specialized charts, like the Navamsa (9th division), analyze specific life areas in more detail, especially relationships and spiritual progress.

## Applications

- **Horoscope Creation:** Vedic Astrology generates a natal chart (Kundli) based on birth date, time, and location, predicting life events and tendencies.
- **Transits and Dashas:** Planetary periods (dashas) and transit analysis help forecast potential opportunities and challenges.
- **Compatibility Analysis:** Matching horoscopes for marriage or partnerships to assess compatibility and harmony.
- **Remedial Measures:** Suggested rituals, gemstones, or mantras to balance planetary influences and mitigate negative effects.

#  Mathematical Core

## Types

```
Scalar angles     : degrees in [0, 360)
Sexagesimal angle : D M S   (deg, min, sec)
Index             : integer in a finite set
Duration          : years / months / days (Vimshottari)
Julian time       : JD, T
Coordinate        : geographic lat/lon; LST
```

## Variables and Fundamentals

```
lambda            ecliptic longitude (deg)
lambda_tr         tropical / Sayana longitude
lambda_sid        sidereal / Nirayana longitude
A                 ayanamsa (deg)
T                 Julian centuries from J2000.0
JD                Julian Day
Y                 calendar year (AD/CE)

R                 rasi / sign index          0=Aries ... 11=Pisces
delta             degree inside the sign     [0, 30)
N                 nakshatra index            0..26
dN                arc already travelled in birth nakshatra
S_N               nakshatra span             13 deg 20 min = 800' = 13.333... deg
P                 pada                       1..4

lambda_Moon       sidereal Moon at birth
lambda_Sun        sidereal Sun
lambda_Asc        sidereal Lagna / Ascendant
lambda_MC         sidereal Midheaven

D_p               full Vimshottari years of planet p
B_p               remaining mahadasha of p at birth
A_pq              antardasha of q inside p
Pr_pqr            pratyantardasha of r inside A_pq

i                 house number               1..12
C_i               cusp of house i
phi               geographic latitude
theta             local sidereal time (as angle)
eps               obliquity of the ecliptic
```

### Vimshottari year totals (sum = 120)

```
Ketu 7     Venus 20    Sun 6
Moon 10    Mars 7      Rahu 18
Jupiter 16 Saturn 19   Mercury 17
```

### Sequence

```
Ketu -> Venus -> Sun -> Moon -> Mars -> Rahu -> Jupiter -> Saturn -> Mercury
```

### Constants

```
circle          = 360 deg
sign span       = 30 deg
nakshatra span  = 13 deg 20 min = 800 arcmin
pada span       = 3 deg 20 min
tithi span      = 12 deg of Moon-Sun elongation
precession rate ~ 50.29 arcsec / year
J2000           JD 2451545.0
```

## Time Base

```
T = (JD - 2451545.0) / 36525

Meeus-style civil date -> JD
(standard astronomical conversion; A, B leap corrections; day fraction H/24)
```

## Ayanamsa and Sidereal Longitude

```
Master conversion
  lambda_sid = (lambda_tr - A) mod 360

Linear Lahiri-style
  A(Y) = 23 deg 51 min + 50.29 arcsec * (Y - 2000)

Polynomial from J2000 (approx Lahiri)
  A ~= 23.85306 + 1.39722*T + 0.00018*T^2     (deg)

Epoch form used in many textbooks
  A = ((Y - 285) * 50.29 arcsec) / 3600       (deg)

Meaning
  A = angular gap between tropical 0 Aries and sidereal 0 Aries
  caused by precession of the equinoxes
```

## Sign, Nakshatra, Pada

```
Sign index
  R = floor(lambda_sid / 30)

Degree in sign
  delta = lambda_sid mod 30

Nakshatra index
  N = floor(lambda_sid / (13 + 20/60)) mod 27

Arc inside nakshatra
  dN = lambda_sid mod (13 + 20/60)

Pada
  P = floor(dN / (3 + 20/60)) + 1            // 1..4
```

## Vimshottari Dasha

```
Birth nakshatra lord p = ruler of N
  (Ashwini/Magha/Mula=Ketu, Bharani/PPhalguni/PAshadha=Venus, ...)

Balance remaining at birth
  B_p = D_p * (1 - dN / S_N)
      = D_p * (S_N - dN) / S_N

Antardasha of q inside mahadasha p
  A_pq = (D_p * D_q) / 120                  years
       = (D_p * D_q * 12) / 120             months

Pratyantardasha of r inside A_pq
  Pr_pqr = (D_p * D_q * D_r) / (120^2)      years
         = (D_p * D_q * D_r) / 14400        months

Deeper levels
  multiply one more D_* and divide by one more 120

Sub-period order
  start from the parent lord, then walk the fixed 9-planet sequence
```

## Houses (Bhavas)

### Whole sign (default rasi-chart rule)

```
R_i = (R_Asc + i - 1) mod 12
entire sign of Lagna = house 1
next sign = house 2, etc.
```

### Equal houses from Lagna

```
C_i = (lambda_Asc + 30*(i-1)) mod 360
```

### Sripati / Bhava-chalit

```
C_1  = lambda_Asc
C_10 = lambda_MC
C_7  = C_1  + 180
C_4  = C_10 + 180

trisect each quadrant (Porphyry step), e.g. houses 1-4:
  d14 = (C_4 - C_1) mod 360
  C_2 = C_1 + d14/3
  C_3 = C_1 + 2*d14/3

Sripati then takes house cusp as midpoint of adjacent
Porphyry cusps; house body runs midpoint-to-midpoint
```

## Vargas (Divisional Charts)

```
Navamsa D9
  each 30-deg sign split into 9 parts of 3 deg 20 min
  R_D9 = (9*R + floor(delta / (3+20/60))) mod 12
  delta_D9 = 9 * (delta mod (3+20/60))

General varga idea
  split the 30-deg sign into n equal parts
  map part-index onto 12 signs by that varga's counting rule
  (direct; or reverse in even signs for some charts)
```

## Lagna (Spherical Form)

```
Tropical ascendant from LST theta, latitude phi, obliquity eps:

  tan(lambda_Asc) =  cos(theta)
                    / (-sin(theta)*cos(eps) - tan(phi)*sin(eps))

Choose the rising quadrant, then
  lambda_Asc_sid = (lambda_Asc_tr - A) mod 360

Related textbook form with declination delta of the rising degree:

  Lagna = arctan( (sin(theta)*cos(delta) - tan(phi)*sin(delta))
                  / cos(theta) )
```

## Tithi

```
dL = (lambda_Moon - lambda_Sun) mod 360
Tithi = floor(dL / 12) + 1                 // 1..30
one tithi = 12 deg of elongation
one paksha = 15 tithis
```

## Pipeline

```
civil birth date/time/place
  -> JD, LST, latitude
  -> tropical longitudes (Sun, Moon, planets, Asc, MC)
  -> subtract Ayanamsa A
  -> sidereal longitudes
  -> R, delta, N, pada
  -> Vimshottari balance from Moon's dN
  -> houses (whole-sign and/or Sripati)
  -> vargas from sign-splitting rules
  -> tithi from Moon-Sun elongation

The astronomy layer (VSOP87 / Swiss Ephemeris) supplies lambda_tr.
The Jyotish layer is the set of formulas above.
```
