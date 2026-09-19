# STATISTICS - COMPLETE REFERENCE
Plain-text pack: definitions, types, variables, fundamentals, history, usage, library class 310s

## CLASSIFICATION BLOCK

This is Dewey Decimal Classification, class 300 Social sciences.
310 is NOT the home of [mathematical statistics](https://github.com/JDRedding/Domain-papers/tree/main/500%E2%80%93599%20Science/510%20Mathematics/519%20Probability%20Logic%20Stochastic%20Systems).

Current DDC (modern schedules)
```
  310  Collections of general statistics
       World or multi-country statistical yearbooks and abstracts.

  311  Unused
       Formerly: theory and methods.

  312  Unused
       Formerly: population statistics.

  313  Unused
       Formerly: special topics.

  314  General statistics of Europe

  315  General statistics of Asia

  316  General statistics of Africa

  317  General statistics of North America

  318  General statistics of South America

  319  General statistics of other areas
       Australasia, Pacific islands, Atlantic islands,
       Arctic islands, Antarctica.
```

```
+--------------------------------------------------+
|                   310 STATISTICS                 |
+--------------------------------------------------+
| 310  Statistics                                  |
| 311  [Unassigned]                                |
|                                                  |
| 312  Population statistics                       |
| 313  Population statistics                       |
| 314  Population statistics                       |
|                                                  |
| 315  Population statistics (Asia)                |
| 316  Population statistics (Europe)              |
| 317  Population statistics (North America)       |
| 318  Population statistics (South America)       |
| 319  Population statistics (Other areas)         |
+--------------------------------------------------+
```
Geographic order in current DDC 314-319
```
  Europe, Asia, Africa, North America, South America, rest of world.
```
Place is refined with Table 2 (geographic areas), e.g.
```
  314.2   general statistics of England and Wales
  315.2   general statistics of China
  317.3   general statistics of the United States
```
What 310-319 is for
```
  Compilations of official or general statistics by place:
  yearbooks, census abstracts, general statistical handbooks.
```

What 310-319 is NOT for
- [Mathematical statistics, probability, inference, sampling theory](https://github.com/JDRedding/Domain-papers/tree/main/500%E2%80%93599%20Science/510%20Mathematics/519%20Probability%20Logic%20Stochastic%20Systems)

      -> mainly 519.5 (and nearby 519)

- Demography as social science

      -> 304.6

-  Economic statistics as economics

       -> 330s

- Vital statistics as public health / medicine

      -> 614.1

Why 311-313 are empty

 Older DDC put method in 311 and population in 312.
 Those subjects moved. 310 stayed a compact "general statistics
 by area" class. Printed schedules from different editions disagree.

Older-edition flavor (seen in some historical DDC texts)
```
  310  Statistical method and statistics
  311  Statistical method
  312  Statistics of populations
  314  General statistics of Europe
  315  Asia
  316  Africa
  317  North America
  318  South America
  319  Rest of the world
```
Other schemes (contrast only)
- Nippon Decimal Classification: statistics around 350,
    then Japan / Asia / Europe / Africa / N. America / S. America / Oceania.
- Chinese Library Classification family: statistics around 510,
    with topical splits (theory, processing, agencies, national
    statistics, population, vital statistics, applied statistics).

## 0. TWO MEANINGS OF THE WORD

### A. THE FIELD  (usually singular verb)
   The mathematics/science of collecting, organizing, analyzing,
   interpreting, and presenting numerical data, especially by
   inference from samples, using probability.

### B. THE DATA   (usually plural verb)
   The numerical facts themselves: counts, rates, tables,
   census figures, earnings by age, injury totals, survey results.

### Grammar
  "Statistics is a branch of mathematics."     -> field (singular); 
  "The statistics are worse this year."        -> data (plural); 
  "She is a professor of statistics."          -> field (uncountable); 
  One computed value from a sample = a statistic (singular noun)

### Adjective
  Correct: statistical  (statistical model, statistical analysis); 
  Wrong:   statistic used as an adjective

### Quotations often attached to the word

- "There are three kinds of lies: lies, damned lies, and statistics."
  
- "He uses statistics like a drunken man uses lamp-posts —
   for support rather than illumination."

## 1. ETYMOLOGY
```
Latin        status          position; form of government; the state
Old Italian  stato           state
Italian      statista        person skilled in statecraft
New Latin    statisticus     of state affairs
German       Statistik       political science; systematic facts of a state
English      statistics      from late 18th century
                             originally "science dealing with facts of a state"
First sense: government counts (people, resources, trade).
Later sense: mathematical analysis + probability + inference.
```
Related historical names
-  Political arithmetic :  (England: Graunt, Petty)
-  Staatswissenschaft   :  (German study of the state)
-  Statistik            :  popularized mid-1700s (Achenwall, 1749 often cited)


## 2. WHAT THE FIELD IS

Statistics is a branch of applied mathematics grounded in
probability theory (also using calculus and linear algebra).

Purpose
  Turn raw observations into usable information.
  Describe a dataset.
  Infer from a sample to a population.
  Quantify uncertainty.
  Test claims.
  Support decisions in science, industry, government, medicine,
  business, law, and social policy.

Britannica-style core
  The science of collecting, analyzing, presenting, and interpreting data.
  Early push: census and economic facts for the state.
  Modern push: large applied datasets that must become information.

Data types (basic split)
  Quantitative  how much / how many
  Qualitative   labels / names / categories


## 3. TYPES (THE MAIN PARTITIONS)


### 3.1 By job

  DESCRIPTIVE STATISTICS
    Summarize what is already in the data.
    Tools: tables, graphs, mean, median, mode, range,
           variance, standard deviation, percentiles,
           frequency counts, distribution shape.
    Output: exact summaries of the observed set.
    Does not generalize beyond the data in hand.

  INFERENTIAL STATISTICS
    Use a sample to say something about a population.
    Tools: probability models, sampling distributions,
           confidence intervals, hypothesis tests, regression.
    Output: estimates + uncertainty, not a claim of certainty.
    Question: what can this sample tell us beyond itself?

  PREDICTIVE STATISTICS  (applied extension)
    Use historical data, models, and often machine learning
    to estimate likelihood of future outcomes.

### 3.2 By assumption about the distribution

  PARAMETRIC
    Procedures that assume a named family of distributions
    (e.g. normal) and estimate its parameters.

  NONPARAMETRIC / DISTRIBUTION-FREE
    Procedures that do not require a specific distributional form.

### 3.3 By number of variables analyzed

  UNIVARIATE      one variable
  BIVARIATE       two variables
  MULTIVARIATE    more than two variables

### 3.4 By probability interpretation (inference schools)

  FREQUENTIST
    Probability = long-run relative frequency.
    Parameters treated as fixed unknowns.
    Sample-to-sample variation is the source of uncertainty.
    Typical products: p-values, confidence intervals, Neyman-Pearson tests.

  BAYESIAN
    Probability = degree of belief, updated with data.
    Parameters treated as random given a prior.
    Bayes theorem updates prior to posterior.
    Typical products: posterior distributions, credible intervals.
    Computation historically hard; MCMC made routine use practical.


## 4. VARIABLES AND FUNDAMENTAL OBJECTS


POPULATION
  The full set of units you want to know about.

SAMPLE
  A subset actually observed.
  Random sample: selection mechanism gives known probabilities.
  Representative / designed sample can describe a population.
  Large but biased data can still mislead.

PARAMETER
  A number that describes a population.
  Usually unknown.
  Examples: population mean mu, population variance sigma^2,
            population proportion p.

STATISTIC
  A number computed from sample data.
  Used to estimate a parameter or to test a claim.
  Examples: sample mean x-bar, sample variance s^2,
            sample proportion p-hat.

ESTIMATOR
  The rule/formula that produces a statistic intended as
  an estimate of a parameter.

ESTIMATE
  The numerical value the estimator takes on this sample.

INDEPENDENT VARIABLE / EXPERIMENTAL VARIABLE
  Predictor; values not determined by the other modeled variables.

DEPENDENT VARIABLE
  Response; value depends on the independent variable(s).
  If y = f(x), y is dependent.

PREDICTOR VARIABLE
  A variable used to predict another (as in regression).

RANDOM VARIABLE
  A numerical summary of an outcome of a random process.

OBSERVATION / DATUM
  One recorded value.
  Data = the collection.

OUTLIER
  An extreme deviation from the bulk of the data / from the mean.

DEGREE OF FREEDOM
  Count of unrestricted pieces of information in a statistic
  or in a fitted model.

CROSS SECTION
  A sample meant to represent a whole population at a time
  (also used for data on many units at one time).

GRAB SAMPLE
  A single sample taken at a specific time or over a short period.


## 5. CORE DESCRIPTIVE MEASURES


Center
  MEAN / ARITHMETIC MEAN / EXPECTED VALUE / FIRST MOMENT
    Sum of values divided by n.
  MEDIAN
    Value below which 50% of cases fall.
  MODE
    Most frequent value.
  GEOMETRIC MEAN
    n-th root of the product of n numbers.
  HARMONIC MEAN
    Reciprocal of the arithmetic mean of the reciprocals.

Spread
  DEVIATION
    Observed value minus a reference (often the mean).
  MEAN DEVIATION
    Mean of absolute deviations from the mean.
  VARIANCE
    Second moment about the mean; mean squared deviation.
  STANDARD DEVIATION
    Square root of the variance.
  RANGE
    Max minus min.
  COVARIANCE
    Mean of the product of deviations of two variables
    from their own means.

Position in an ordered list
  PERCENTILE / CENTILE
    99 points that split ordered scores into 100 equal-count parts.
  DECILE
    9 points that split into 10 equal-count parts.
  QUARTILE
    3 points that split into 4 equal-count parts.

Moments
  The n-th moment is the expected value of the n-th power
  of deviations from a fixed point.
  Second moment about the origin = expected square of the variable.
  Variance = second moment about the mean.

Other named objects
  DISTRIBUTION / STATISTICAL DISTRIBUTION
    Arrangement of values showing observed or theoretical frequencies.
  AVERAGE / NORM
    A location summary of a distribution.
  DEMOGRAPHIC
    A statistic characterizing human populations or segments
    (age, sex, income, etc.).


## 6. CORE INFERENTIAL FUNDAMENTALS


SAMPLING
  Selecting a suitable sample for study.
  Design and bias usually matter more than raw n alone.

LAW OF LARGE NUMBERS  (Bernoulli)
  A large number of random items from a population will,
  on average, have the population statistics.

CENTRAL LIMIT THEOREM  (Laplace and later development)
  Sums/means of many independent errors/observations tend
  toward a normal distribution under broad conditions.
  Linked historically to least squares.

BAYES THEOREM
  How to update the probability of causes given an observed event,
  using prior probabilities of causes and the likelihood of the data
  under each cause.

BAYES POSTULATE  (equal priors when unknowns)
  When cause probabilities are unknown, sometimes treat them
  as equal ("equidistribution of ignorance").
  This is a modeling choice, not a fact.

HYPOTHESIS TESTING
  Use sample data to assess a claim about a parameter or distribution.
  Helps ask whether a result is plausibly chance variation.

CONFIDENCE INTERVAL
  A range constructed so that, in repeated sampling, a stated
  fraction of such intervals would cover the parameter
  (frequentist reading).

LEAST SQUARES
  Fit a curve/line by minimizing the sum of squared distances
  from the points to the curve.

REGRESSION
  Model a dependent variable as a function of predictors.
  Historically later than least squares as used in astronomy.

STATISTIC vs PARAMETER  (repeat because it is the key pair)
  statistic  = computed from the sample
  parameter  = property of the population


## 7. NAMED METHODS AND TOPIC LABELS FROM THE DICTIONARY/THESAURUS LAYER


statistical method / statistical procedure
  A method of analyzing or representing statistical data;
  a procedure for calculating a statistic.

multivariate analysis
  Generic term for techniques that analyze more than one variable.

parametric statistic
  Any statistic computed under a named distributional assumption.

distribution-free / nonparametric statistic
  Computed without needing the form or parameters of the parent
  distribution.


## 8. HISTORY COMPRESSED


Ancient / medieval precursors
  Counting bricks to estimate wall height (anecdotal early inference).
  Al-Kindi: frequency analysis for ciphers.

17th century
  John Graunt: Bills of Mortality; estimates of London's population.
  Political arithmetic.
  Jacob Bernoulli: law of large numbers (published 1713).

18th century
  De Moivre: normal approximation.
  Bayes: inverse probability.
  German Statistik as systematic description of the state.
  Word enters English as state-facts science.

19th century
  Laplace: central limit theorem; synthesis with least squares.
  Gauss: least squares / error theory.
  Quetelet: social measurement, "average man."
  Galton, Pearson, Edgeworth, Yule: correlation, regression,
    biometrics, heredity data.
  Kiær (1895): representative method vs complete census dogma.
  Bowley: mathematical treatment of random sampling.

20th century
  Fisher, Neyman, E. Pearson: modern frequentist inference,
    likelihood, experimental design, tests.
  Jeffreys, de Finetti, Lindley, others: Bayesian revival.
  MCMC (1980s onward): Bayesian computation becomes practical.
  Quality control, public health, surveys, official statistics,
    then data science and machine learning applications.

Note
  Probability became the official language of inference in
  English-language mathematical statistics in the 20th century.
  Undergraduate teaching is still often frequentist-first.
  Bayesian methods are widely used in research and ML.


## 9. USAGE NOTES THAT KEEP COMING UP


Do not write "statistic techniques."
Write "statistical techniques."

"Statistics" as data takes a plural verb.
"Statistics" as a subject takes a singular verb.

A single number from a table can be called "a statistic."
The whole table is "statistics."

Official statistics = published government/agency compilations.

Vital statistics = births, deaths, marriages, etc.
  As a library subject they may leave 310 and sit with demography
  or public health, depending on emphasis.


## 10. WHERE THE MATH LIVES IF YOU ARE SHELVING IDEAS, NOT YEARBOOKS


Theory of probability and mathematical statistics     519 / 519.5
Sampling theory                                       under mathematical
                                                      statistics / survey
                                                      methodology, not 312
Least squares, estimation, tests                      519.5 and related
Official yearbook of a country                        31X + Table 2
Book teaching "what is a mean" to social scientists   depends on emphasis;
                                                      often 519.5 or 300.72
                                                      or a disciplinary number


## 11. MINI GLOSSARY OF PAIRS


population     vs   sample
parameter      vs   statistic
descriptive    vs   inferential
parametric     vs   nonparametric
frequentist    vs   Bayesian
bias           vs   variance
estimate       vs   estimator
data           vs   information
census         vs   sample survey
310 yearbooks  vs   519.5 theory


## 12. ONE-PAGE MENTAL MODEL


State needed facts about itself
        ->
counts, tables, Statistik
        ->
probability attached to those counts
        ->
sample can stand for population if selection is designed
        ->
descriptive summaries of what you saw
        +
inferential statements about what you did not see,
  with an explicit account of uncertainty
        ->
two big dialects of that uncertainty:
  long-run frequency  (frequentist)
  updated belief      (Bayesian)

Library 310s keep the old "facts of the state by place" sense.
Mathematics 519.5 keeps the inferential engine.
