# Ameraucana
The Ameraucana is an American chicken breed known for its blue eggs, bearded and muffed face, and hardy, generally friendly temperament. It is a popular choice for backyard flocks. The Ameraucana is a hardy, moderately productive breed valued for blue eggs and a distinctive appearance. It suits backyard flocks well and can thrive in cold climates with proper care. Buy from reputable breeders if authenticity and breed type matter.

## History and Origin

The Ameraucana was developed in the United States in the 1970s from Araucana-type chickens imported from Chile. Breeders selected for the blue-egg gene while eliminating the ear-tuft and rumpless traits found in Araucanas, both of which are associated with lethal or semi-lethal genetics that can kill chicks in the shell.

The name combines “America” and “Araucana.” Bantam varieties began receiving American Bantam Association recognition as early as 1979–1980 (Wheaten and White in 1980). Large fowl and the original eight color varieties were admitted to the American Poultry Association *Standard of Perfection* in 1984.

## Appearance and Varieties

Ameraucanas have a distinctive “chipmunk-faced” look created by a full beard and muffs. They have bright reddish-bay eyes, a pea comb, small or nearly absent wattles, a normal tail, and clean (unfeathered) slate-blue to black legs with four toes.

Standard weights:

| Class | Cock | Hen | Cockerel | Pullet |
| --- | --- | --- | --- | --- |
| Large fowl | 6.5 lb | 5.5 lb | 5.5 lb | 4.5 lb |
| Bantam | 30 oz | 26 oz | 26 oz | 24 oz |

The original eight APA-recognized varieties, admitted in 1984, are black, blue, blue wheaten, brown red, buff, silver, wheaten, and white. Self-blue large fowl were added in 2020 and splash large fowl in 2023. The ABA recognizes additional bantam varieties, including self-blue and splash.

## Temperament and Behavior

Ameraucanas are generally docile, independent, and reasonably friendly. Temperament varies with individual birds and how they are raised; some are calm, others more skittish. They typically socialize well with their own kind, occupy the middle of the pecking order in mixed flocks, and are alert to predators. Many enjoy human company but are not usually lap chickens.

## Egg Laying and Broodiness

Hens lay blue eggs. Production is moderate: often about 3–4 medium eggs per week, or roughly 150–200 eggs per year, depending on strain and management. The shell is blue throughout, not tinted only on the surface.

These eggs should not be confused with the mixed blue, green, olive, or pink eggs of Easter Eggers and other colored-egg hybrids. Ameraucana hens are rarely broody, so natural hatching is uncommon.

## Care and Hardiness

**Climate.** The small pea comb makes the breed relatively cold-hardy. Birds tolerate moderate heat if given shade and water, and they do best in dry, draft-free housing.

**Housing.** Provide at least 4 sq ft per bird in the coop and 10 sq ft in the run. Predator-proof enclosures are essential.

**Diet.** Use a standard chick starter, then a grower or layer ration. Offer free-choice calcium, such as oyster shell, to laying hens.

**Health.** Ameraucanas are generally healthy and may live 7–8 years. They have no unique breed-specific diseases, but routine care for parasites, mites, and respiratory illness still applies.

## Distinction from Similar Birds

True Ameraucanas should not be confused with Easter Eggers or with birds sold as “Americana,” “Americauna,” or similarly misspelled names. Easter Eggers are mixed-heritage birds that may lay blue, green, or other colored eggs and often lack standardized traits such as a consistent pea comb, beard and muffs, or recognized color varieties.

##  Breed equations

These are discrete constraints, not a single closed-form equation, but they are the formal conditions used in the APA/ABA standards. A bird matches the Ameraucana type only if all of the following hold:

$$
\begin{align*}
\text{comb} &= \text{pea}, \\
\text{beard and muffs} &= \text{present}, \\
\text{ear tufts} &= \text{absent}, \\
\text{tail} &= \text{present (not rumpless)}, \\
\text{shanks} &= \text{clean, slate to black}, \\
\text{toes} &= 4, \\
\text{eggshell} &= \text{blue}.
\end{align*}
$$

### Blue-egg genetics

Blue shells come from the dominant *oocyan* allele $O$ (a retroviral insertion). Notation:

- $O$: blue-egg allele  
- $o$: wild-type (no blue deposition)

A hen’s phenotype for shell color is:

$$
\text{shell color} =
\begin{cases}
\text{blue} & \text{if genotype } \in \{OO,\, Oo\} \\
\text{not blue} & \text{if genotype } = oo
\end{cases}
$$

True-breeding Ameraucanas are selected toward

$$
P(O \mid \text{Ameraucana}) \to 1,
$$

so most standard birds are $OO$ or at least $Oo$. Easter Eggers are often only $Oo$ and may also carry brown-shell genes that shift the color to green.

If brown pigment $B$ is also present, a simple mixing rule is:

$$
\text{observed color} \approx
\begin{cases}
\text{blue} & O\_ \;\text{and no brown overlay} \\
\text{green / olive} & O\_ \;\text{and brown overlay} \\
\text{brown / tinted} & oo \;\text{and brown overlay}.
\end{cases}
$$

### Lethal alleles Ameraucanas were bred to remove

Araucana ear tufts are associated with a dominant, semi-lethal locus $T$:

- $TT$: almost always lethal in the shell  
- $Tt$: tufted, reduced viability  
- $tt$: clean-faced, viable  

Rumplessness is a separate dominant locus $Rp$.

Mendelian expectation for a $Tt \times Tt$ mating:

$$
\begin{align*}
P(TT) &= \tfrac14 && \text{(usually dead in shell)} \\
P(Tt) &= \tfrac12 && \text{(tufted)} \\
P(tt) &= \tfrac14 && \text{(clean-faced)}.
\end{align*}
$$

Expected hatch of live chicks is therefore at most

$$
\mathbb{E}[\text{live fraction}] \le 1 - P(TT) = \tfrac34,
$$

and often lower because some $Tt$ embryos also die.

Ameraucana selection is the complementary condition:

$$
T = t,\qquad Rp \text{ absent},\qquad \text{beard/muffs present},\qquad \text{full tail present}.
$$

Absence of beard and muffs, or presence of ear tufts, is a disqualification.

### Standard weights

APA large-fowl targets (pounds):

$$
\begin{align*}
W_{\text{cock}} &= 6.5, &
W_{\text{hen}} &= 5.5, \\
W_{\text{cockerel}} &= 5.5, &
W_{\text{pullet}} &= 4.5.
\end{align*}
$$

Bantam targets (ounces):

$$
\begin{align*}
w_{\text{cock}} &= 30, &
w_{\text{hen}} &= 26, \\
w_{\text{cockerel}} &= 26, &
w_{\text{pullet}} &= 24.
\end{align*}
$$

Unit conversion:

$$
1\,\text{lb} = 16\,\text{oz} = 0.453592\,\text{kg}.
$$

A common show-disqualification band for bantams is a $20\%$ deviation:

$$
\text{DQ if } \left\lvert \frac{w - w_{\text{std}}}{w_{\text{std}}} \right\rvert > 0.20.
$$

### Egg production

Let

- $e$ = eggs per week  
- $E$ = eggs per year  
- $\eta$ = laying-year length in weeks (often $\approx 50$ after molt)

Then

$$
E \approx \eta e.
$$

Typical Ameraucana ranges cited for large fowl:

$$
e \in [3,4], \qquad E \in [150,200].
$$

A mean-rate model is

$$
\lambda = \frac{E}{365}\quad\text{eggs per day},
$$

so expected count over $d$ days is $\mathbb{E}[N(d)] = \lambda d$ if production is treated as a constant-rate process.

Egg size is medium in large fowl and proportionally smaller in bantams; there is no unique Ameraucana mass formula beyond ordinary allometry,

$$
m_{\text{egg}} \propto W^{\alpha},\qquad \alpha \approx 0.6\text{–}0.75
$$

across chickens generally.

### Space and stocking

Minimum area rules of thumb:

$$
A_{\text{coop}} \ge 4\,\text{ft}^2/\text{bird}, \qquad
A_{\text{run}} \ge 10\,\text{ft}^2/\text{bird}.
$$

For $n$ birds,

$$
A_{\text{coop}}^{\min} = 4n, \qquad A_{\text{run}}^{\min} = 10n.
$$

### Lifespan and productivity window

If adult life is about $L = 7$–$8$ years and peak lay is concentrated in the first $k$ seasons,

$$
E_{\text{lifetime}} \approx \sum_{i=1}^{k} E_i, \qquad E_{i+1} \le E_i
$$

because annual yield typically declines with age.
