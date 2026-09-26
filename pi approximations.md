# pi approximations

Different civilizations independently arrived at approximations of $\pi$. Most early values came from measuring circles or from practical geometry (areas of fields, altars, pyramids, and the like).

### Minimal set
Glyph culture

| Culture / lineage | Glyph | Frozen meaning |
|---|---|---|
| Egypt | $\varepsilon^{9}$ | $256/81$ |
| Babylon | $x^{;}$ | $25/8$ |
| China (Zu) | $x_{\mu}$ | $355/113$ |
| India (Āryabhaṭa) | $x_{\mathrm{Ā}}$ | $3.1416$ |
| Bible | $x_{\mathrm{B}}$ | $3$ |
| Greece | $x_{\mathrm{A}}^{\pm}$ | Archimedes bounds |
| Kerala | $x_{\Sigma}$ | Mādhava series |
| Persia | $x_{\mathrm{Kā}}$ | 16-digit polygon |
| Europe/hand | $x_{\mathrm{L}}$ | Ludolphine 35 digits |
| Machine | $\pi[N]$ | $N$ computed digits |

The pattern is consistent: every early civilization started with $3$, then refined it to something between $3.12$ and $3.16$. Later did  geometric algorithms produce more digits. After Zu Chongzhi, the next major leaps came from Indian (Mādhava, 14th century) and Persian (al-Kāshī, 1424) mathematicians using infinite series and huge polygons, reaching 11–16 decimal places. Maya calculations appear to have been comparable in accuracy to the Egyptian value.

None of these ancient civilizations used a dedicated single-letter symbol like the modern $\pi$. They described the ratio in words, gave a calculation rule, or used a named fraction. The Greek letter $\pi$ was first applied to the constant in 1706 by William Jones and later popularized by Euler. *Premodern* here means after the ancient civilizations already covered and before electronic computers (roughly 5th–19th century). *Modern* means the infinite-series and computer era. A dedicated glyph for each of these would not be “another π.” It should encode *how that culture isolated the ratio*: recipe, fraction, bound, series, or machine count. 

Convention: each glyph stands for *that community’s official stand-in for the circumference/diameter ratio*, like the modern $\pi$. The clean rule: **a glyph is a *named approximation object***, $\pi$ itself is the similar constant.

---

### Ancient 

**Egyptian area-recipe** 

Glyph: $x_{\mathrm{E}}$ or a boxed ninth-cut: $\boxed{8/9}^{2}$ as a single operator.  
Best compact form: $\varepsilon$ with a ninth-tick: $\varepsilon^{9}$.  
Meaning: “square eight-ninths of the diameter, then scale by 4.”  
Declared value: $\varepsilon^{9} := 256/81$.

**Babylonian sexagesimal**  

Glyph: $x_{;}$ or $\varpi_{60}$.  
Best compact form: $3{;}7{,}30$ ligatured as $x^{;}$.  
Declared value: $x^{;} := 25/8$.

**Sumerian variant**  

Glyph: $x_{\mathrm{Š}}$.  
Declared value: $x_{\mathrm{Š}} := 3 + 23/216$.

**Early Chinese “three”**  

Glyph: $x_{三}$ or simply $\tau_{3}$.  
Declared value: $\tau_{3} := 3$.

**Zhang Heng**  

Glyph: $x_{\sqrt{}}$.  
Declared value: $x_{\sqrt{}} := \sqrt{10}$.

**Liu Hui bounds**  
Glyph: a two-barred pi: $x^{\pm}_{\mathrm{H}}$.  
Declared pair:

$$
x^{\pm}_{\mathrm{H}} := \bigl(3.141024,\; 3.142708\bigr),\qquad x_{\mathrm{H}} := 3927/1250.
$$

**Zu Chongzhi**  
Two named glyphs, matching the historical names:

- Approximate ratio: $x_{\mathrm{约}}$ or $x_{y}$
- Close ratio: $x_{\mathrm{密}}$ or $x_{\mu}$

Declared values:

$$
x_{y} := 22/7,\qquad x_{\mu} := 355/113.
$$

The bound form can be written $x_{\mathrm{Z}}^{\pm}$.

**Śulba construction**  

Glyph: $x_{\mathrm{Ś}}$.  
Declared value: $x_{\mathrm{Ś}} := 18(3-2\sqrt{2})$.

**Āryabhaṭa circumference rule**  

Glyph: $x_{\mathrm{Ā}}$ or a 20 000-marked circle: $x_{20000}$.  
Declared value: $x_{\mathrm{Ā}} := 62832/20000$.

**Biblical molten-sea rounding**  

Glyph: $x_{\mathrm{B}}$.  
Declared value: $x_{\mathrm{B}} := 3$. Treat it as a *metrological* symbol, not a geometric one.

**Archimedes bounds**  

Glyph: $xi_{\mathrm{A}}^{\pm}$.  
Declared pair:

$$
x_{\mathrm{A}}^{\pm} := \left(\frac{223}{71},\;\frac{22}{7}\right).
$$

The single working value people actually used from this lineage is just $22/7$, which can share Zu’s $x_{y}$.

**Ptolemy**  
Glyph: $xi_{\mathrm{P}}$.  
Declared value: $x_{\mathrm{P}} := 377/120$.

---

### Premodern stand-ins

**Fibonacci polygon value**  
Glyph: $x_{\mathrm{F}}$.  
Declared value: $x_{\mathrm{F}} := 3.141818$.

**Mādhava series**  
Glyph: $x_{\mathrm{M}}$ or a series-marked pi: $x_{\Sigma}$.  
This is the first glyph that should mean “the sum of the series,” not a frozen fraction.

**Kerala recorded expansion**  
Glyph: $x_{\mathrm{K}}$.  
Use it for the 31-digit *recorded* value, not for the infinite sum.

**al-Kāshī polygon**  
Glyph: $x_{2^{28}}$ or $x_{\mathrm{Kā}}$.  
Declared as a 16-digit truncation, not an exact fraction.

**Viète product**  
Glyph: $x_{\times}$.  
Meaning: “the infinite product,” not a decimal snapshot.

**Ludolphine number**  
Glyph: $x_{\mathrm{L}}$.  
Historically this already existed as a *name*; the glyph just freezes his 35-digit polygon result.

**Machin arctan**  
Glyph: $x_{\arctan}$ or $x_{\mathrm{Ma}}$.  
Meaning: evaluation of Machin’s formula, not of $x$ itself.

**Shanks hand tally**  
Glyph: $x_{\mathrm{Sh}}$.  
Important: declare it as *the 527-correct-digit string*, not the claimed 707.

The fraction trio in use, given stable glyphs:

$$
x_{7} := 22/7,\qquad
x_{113} := 355/113,\qquad
x_{106} := 333/106.
$$

---

### Modern 

These are extra "constants". They mark *methods*.

- Newton binomial truncation: $\pi_{\mathrm{N}}(n)$
- Machin-type family: $\pi_{\mathrm{M}} {a,b} (n)$
- ENIAC run: $\pi_{\mathrm{ENIAC}}$
- Chudnovsky partial sum: $\pi_{\mathrm{Ch}}(N)$
- Double-precision machine default: $\pi_{64}$
- Record computation to $N$ digits: $\pi[N]$

The Chudnovsky workhorse is then not a new constant but an evaluator:

$$
\pi_{\mathrm{Ch}}(N) := \left(12\sum_{k=0}^{N-1}\frac{(-1)^k(6k)!(545140134k+13591409)}{(3k)!(k!)^3(640320)^{3k+3/2}}\right)^{-1}.
$$

Everyday working glyphs:

$$
\pi_{7},\quad \pi_{113},\quad \pi_{5} := 3.14159,\quad \pi_{64}.
$$

---

## Ancient approximations

### Mesopotamia (Babylonians and Sumerians, c. 2000–1600 BCE)

- Common everyday value: $3$
- Better tablet value (Susa tablet): $25/8 = 3.125$ (error $\approx -0.53\%$)
- Sumerian variant: $3 + 23/216 \approx 3.1065$

They wrote numbers in cuneiform sexagesimal notation. The better approximation appears simply as the fraction $3;7,30$ (that is, $3 + 7/60 + 30/3600 = 25/8$). They had no special sign for the ratio itself.

### Ancient Egypt (c. 1850–1650 BCE)

No special symbol. The Rhind Mathematical Papyrus (copied from an older text) treats a circle of diameter 9 as having the same area as a square of side 8:

$$
\pi \approx 4 \times \left(\frac{8}{9}\right)^2 = \frac{256}{81} \approx 3.1605
$$

(error $\approx +0.60\%$). In words they gave a verbal recipe for the *area* of a circle: “Take away one-ninth of the diameter and square the remainder.” That is equivalent to $\pi \approx 256/81$, but they never isolated a single constant with its own name. Some later writers also credit the Egyptians with $22/7$, but that claim is disputed.

### Ancient China

They used ordinary words and later gave the fractions special names.

- Earliest recorded value (c. 1200 BCE): simply “three”
- Zhang Heng (c. 130 CE): $\sqrt{10} \approx 3.1623$
- Liu Hui (263 CE) and others spoke of “the ratio of the circumference to the diameter.” Liu Hui’s inscribed-polygon method gave

$$
3.141024 < \pi < 3.142708 \qquad\text{and}\qquad \frac{3927}{1250} = 3.1416
$$

- Zu Chongzhi (5th century) named his two famous fractions:
  - *yuelü* (约率, “approximate ratio”) = $22/7$
  - *milü* (密率, “close/precise ratio”) = $355/113 \approx 3.14159292\ldots$

  together with the tight bounds $3.1415926 < \pi < 3.1415927$. This remained the world’s best approximation for nearly 800 years.

### Ancient India (Vedic period onward)

Sanskrit verses described the calculation rather than a symbol.

- Śulba-sūtras (c. 800–200 BCE): several geometric constructions, one of which yields

$$
\pi \approx 18(3-2\sqrt{2}) \approx 3.088
$$

  (others hover around $3.004$–$3.125$). Some earlier texts even used slightly different values for the circumference ratio versus the area ratio.
- Āryabhaṭa (499 CE). His famous line is: “Add 4 to 100, multiply by 8, and add 62,000. This is approximately the circumference of a circle whose diameter is 20,000.” That is

$$
\pi \approx \frac{62832}{20000} = 3.1416
$$

- Later Indian mathematicians also used $\sqrt{10}$.

### Hebrew Bible (c. 6th century BCE)

1 Kings 7:23 describes a circular “molten sea” 10 cubits across and 30 cubits around, implying $\pi = 3$. This was almost certainly a rounded practical figure rather than a mathematical claim.

### Greco-Roman world

Archimedes, Ptolemy, and others simply wrote “the ratio of the circumference to the diameter.” They never assigned a letter to it. (The letter $\pi$ later chosen for the constant is the first letter of the Greek word *peripheria*, “circumference.”)

- Archimedes (c. 250 BCE) — first rigorous bounds, obtained from inscribed and circumscribed 96-gons:

$$
\frac{223}{71} < \pi < \frac{22}{7}
$$

  that is, $3.1408\ldots < \pi < 3.1429\ldots$
- Ptolemy (c. 150 CE): $377/120 = 3.141666\ldots$ (three correct decimals)

So the “symbols” were almost always ordinary language plus a specific fraction or computational rule, not a single abstract character.

## Premodern approximations (polygons, then early series)

These were still mostly geometric (inscribed and circumscribed polygons) until Indian and later European mathematicians introduced infinite series.

| Period / person | Approx. value or digits | Notes |
|---|---|---|
| Zu Chongzhi (China, c. 480) | $3.1415926 < \pi < 3.1415927$ and $355/113$ | Best in the world for ~800 years |
| Āryabhaṭa (India, 499) | $62832/20000 = 3.1416$ | 4 correct decimals |
| Fibonacci (1220) | $3.141818$ | Polygon method |
| Mādhava of Sangamagrāma (Kerala, c. 1400) | 11 then 13 digits | First infinite series for $\pi$ (Mādhava–Leibniz series) |
| Kerala school (c. 1500) | 31 digits recorded | Katapayadi notation |
| al-Kāshī (Persia, 1424) | 16 decimal digits | Huge polygon ($3 \times 2^{28}$ sides) |
| François Viète (1593) | 9 digits | First infinite *product* in Europe |
| Ludolph van Ceulen (1596–1615) | 20 then 35 digits | Last great Archimedean polygon calculation; “Ludolphine number” |
| John Machin (1706) | 100 digits | Famous arctan formula; first to break 100 digits |
| William Shanks (1873–74) | 527 correct digits (claimed 707) | Last major hand calculation; error after digit 527 |

Common *practical* fractions still used in this era:

- $22/7$
- $355/113$ (still one of the best simple fractions)
- $333/106$

## Modern approximations (series and computers)

Once calculus and computers arrived, the race became “how many digits,” not “a nicer fraction.”

Notable milestones:

- **Newton (1665):** about 16 digits with his binomial series (he later said he was “ashamed” how far he carried it).
- **Machin-type formulas** dominated hand and early machine work for 250 years.
- **ENIAC (1949):** 2,037 digits — first major electronic computation.
- **1961:** 100,000+ digits (Shanks and Wrench).
- **1973:** 1 million digits.
- **1980s onward:** Ramanujan-inspired and AGM (arithmetic–geometric mean) algorithms (the Borweins, the Chudnovsky brothers, Kanada, and others).
- **Chudnovsky formula (1988)** is still one of the workhorses:

$$
\frac{1}{\pi} = 12\sum_{k=0}^{\infty}\frac{(-1)^k(6k)!(545140134k+13591409)}{(3k)!(k!)^3(640320)^{3k+3/2}}
$$

- Current records are in the **hundreds of trillions** of digits (purely a computational and benchmark exercise; 40–50 digits already far exceed any physical need).

### Everyday modern approximations people actually use

- $22/7 \approx 3.142857$ (error $\sim 0.04\%$)
- $355/113 \approx 3.14159292$ (error $\sim 8\times 10^{-8}$)
- $3.1416$ or $3.14159$
- Calculator/computer default: 15–17 digits (double precision)
