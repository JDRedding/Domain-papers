# Paleontology and Paleozoology
- 560 Paleontology

Paleontology is the broader study of ancient life, including plants, animals, fungi, and microorganisms. Paleozoology is a subdiscipline that focuses specifically on the fossilized remains of animals. All paleozoologists are paleontologists, but not all paleontologists are paleozoologists. Paleontology provides the broader framework for studying ancient life; paleozoology narrows that framework to animals and their evolutionary history.

## Paleontology

Paleontology is the scientific study of past life through fossils. It includes animals, plants, fungi, and microorganisms. The field aims to understand evolutionary history, ecological interactions, and the development of life on Earth.

| Domain | Subject |
|--------|---------|
| 560 | Paleontology; paleozoology |
| 561 | Paleobotany; fossil microorganisms |
| 562 | Fossil invertebrates |
| 563 | Fossil marine & seashore invertebrates |
| 564 | Fossil mollusks & molluscoids |
| 565 | Fossil arthropods |
| 566 | Fossil chordates |
| 567 | Fossil cold-blooded vertebrates; fossil fishes |
| 568 | Fossil birds |
| 569 | Fossil mammals |

Researchers examine fossilized bones, teeth, shells, leaf imprints, and microscopic remains in order to reconstruct ancient ecosystems and trace lineage changes over geological time. Methods range from field excavation and sediment analysis to advanced imaging and isotopic studies.

The scope of paleontology includes several subfields:

- **Paleobotany:** fossil plants
- **Micropaleontology:** microscopic fossils
- **Paleozoology:** fossil animals
- **Paleoecology:** ancient ecosystems and environmental relationships

## Paleozoology

Paleozoology is the branch of paleontology devoted to animal fossils. It concentrates on extinct animal species and their morphology, taxonomy, behavior, and ecological roles.

Paleozoologists may work with vertebrates, such as dinosaurs and prehistoric mammals, or with invertebrates, such as trilobites and mollusks. Their work often involves comparative anatomy, skeletal reconstruction, and evolutionary analysis to determine relationships among species and to track change over time. Paleozoology also contributes to knowledge of ancient food webs, migration patterns, and environmental adaptations.

## Elements

| Feature | Paleontology | Paleozoology |
|---|---|---|
| Scope | All past life: plants, animals, fungi, and microorganisms | Fossil animals only |
| Focus | Evolution, diversity, and ecosystems of life as a whole | Animal morphology, taxonomy, and ecology |
| Subdisciplines | Paleobotany, micropaleontology, paleozoology, paleoecology | Vertebrate and invertebrate paleozoology |
| Methods | Fossil excavation, comparative study, geochemistry, imaging | Comparative anatomy, sedimentology, ecological reconstruction, skeletal analysis |
| Examples | Fossil plants, microbes, coral reefs | Dinosaurs, trilobites, mammoths, prehistoric fish |

## Common formulas

Paleontology and paleozoology use quantitative tools. The most common formulas fall into four groups: taxonomic rates, body-size scaling, taphonomic change, and shape analysis. These four families cover the equations most frequently written down in paleozoological papers on diversity dynamics, body size, preservation, and morphology. Specific empirical constants ($a$, $b$, tissue density, etc.) are fitted to living analogues or to particular clades and are not universal. Notation is given first, then the equations. 

### Notation used below

| Symbol | Meaning |
|--------|---------|
| $N_{bt}$ | Taxa that cross both the bottom and top of an interval |
| $N_{bL}$ | Taxa that cross only the bottom (last appearance in the interval) |
| $N_{Ft}$ | Taxa that cross only the top (first appearance in the interval) |
| $\lambda$, $p$ | Per-capita origination rate |
| $\mu$, $q$ | Per-capita extinction rate |
| $\Delta t$ | Duration of a time interval |
| $M$ | Body mass |
| $C_h$, $C_f$ | Humeral and femoral midshaft circumference |
| $L$ | Linear measurement (length, etc.) |
| $a$, $b$ | Allometric intercept and exponent |
| $s_i$ | State (trait, composition, preservation quality) of object $i$ |
| $c_i$ | Relative change in frequency of object $i$ |
| $p$ | Probability of newly appearing objects (taphonomic “gain”) |
| $\mathbf{X}$ | Landmark configuration matrix |
| $\mathrm{CS}$ | Centroid size |

### 1. Origination and extinction rates

Foote’s per-capita (boundary-crosser) rates are the standard interval-level estimators that use first and last appearances.

Origination:

$$
\lambda = -\ln\left(\frac{N_{bt}}{N_{Ft}+N_{bt}}\right)
$$

Extinction:

$$
\mu = -\ln\left(\frac{N_{bt}}{N_{bL}+N_{bt}}\right)
$$

When rates are treated as continuous through an interval of length $\Delta t$, the corresponding per-taxon rates are $\lambda/\Delta t$ and $\mu/\Delta t$.

Net diversification over successive intervals reconstructs standing diversity from an initial richness $D_0$:

$$
D_n = D_0\exp\left(\sum_{i=1}^{n}(\lambda_i-\mu_i)\right)
$$

or equivalently

$$
\ln D_n = \ln D_0 + \sum_{i=1}^{n}(\lambda_i-\mu_i).
$$

Three-timer and gap-filler estimators exist to reduce edge effects and the Signor–Lipps bias; they use the same counts plus taxa that skip an interval, but the two formulas above remain the most widely cited baseline.

### 2. Allometry and body-mass estimation

The classical Huxley allometric equation relating two linear measurements (or a linear measurement and mass) is

$$
Y = aX^{b}
$$

or, after log transformation,

$$
\ln Y = \ln a + b\ln X.
$$

Isometry corresponds to $b=1$ for two lengths (or $b=3$ for length versus mass). Positive or negative allometry is $b\neq 1$ (or $b\neq 3$).

Limb-bone circumference regressions used for dinosaurs and other tetrapods take the empirical form (Campione & Evans and later updates)

$$
\log_{10}M = a + b\log_{10}(C_h+C_f)
$$

for quadrupeds, or a power of femoral circumference alone for bipeds, e.g.

$$
M \propto C_f^{2.754}
$$

(with constants fitted to extant taxa). Volumetric or convex-hull methods replace the regression with

$$
M = \rho V,
$$

where $V$ is reconstructed volume and $\rho$ is an assumed tissue density.

A simple three-axis volume proxy used for many Paleozoic invertebrates is the product of anteroposterior, transverse and dorsoventral lengths (ATD model).

### 3. Mathematical description of fossilization (taphonomy)

A Price-equation analogue partitions change in the average state $\bar s$ of biogenic objects (tissues, molecules, body parts) into selective preservation, alteration of existing objects, and appearance of new material:

$$
\Delta\bar s = (1-p)\,\mathrm{Cov}[c_i,s_i] + (1-p)\,\mathbb{E}[c_i\Delta s_i] + p\,(\Delta\bar s^{*}).
$$

- First term: covariance between preservation factor $c_i$ and state $s_i$ (selective loss or gain).
- Second term: average change of state of objects that persist.
- Third term: contribution of newly formed or incorporated objects, weighted by probability $p$.

When no new objects appear ($p=0$) the expression collapses to the ordinary Price equation

$$
\Delta\bar s = \mathrm{Cov}[c_i,s_i] + \mathbb{E}[c_i\Delta s_i].
$$

### 4. Geometric morphometrics (shape)

Centroid size of a landmark configuration $\mathbf{X}$ with $k$ points in $m$ dimensions is

$$
\mathrm{CS} = \sqrt{\sum_{i=1}^{k}\|\mathbf{x}_i-\bar{\mathbf{x}}\|^2}.
$$

After translation, scaling to unit centroid size, and rotation (Procrustes superimposition), the residual coordinates are shape variables. Allometry is then the multivariate regression of those shape coordinates on size (Gould–Mosimann definition):

$$
\mathrm{shape} = \boldsymbol{\beta}_0 + \boldsymbol{\beta}_1\ln(\mathrm{CS}) + \boldsymbol{\varepsilon}.
$$

Disparity in a morphospace is commonly the sum of variances of the shape principal components or the mean squared Procrustes distance from the consensus configuration.
