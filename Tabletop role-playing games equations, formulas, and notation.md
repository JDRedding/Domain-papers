
**Common mathematical equations, formulas, and notation used in tabletop role-playing games (especially D&D-style systems).**
These formulas cover the vast majority of mathematical calculations used in Dungeons & Dragons, Pathfinder, and most other polyhedral-dice RPGs.

### Dice Notation
The standard way to express dice rolls is:

$$
N\mathrm{d}S \pm M
$$

- $N$: number of dice  
- $S$: number of sides (faces) on each die  
- $M$: flat modifier (bonus or penalty)  

**Examples**:  
- $1\mathrm{d}20$ or $\mathrm{d}20$: one 20-sided die  
- $2\mathrm{d}6 + 3$: two six-sided dice, sum the results, then add 3  
- $4\mathrm{d}6\mathrm{dl}1$ (or drop lowest): roll four d6 and discard the lowest  

### Expected Value (Average) of Dice
For a single fair die numbered 1 to $S$:

$$
E[1\mathrm{d}S] = \frac{S + 1}{2}
$$

**Common averages**:
- $\mathrm{d}4 = 2.5$
- $\mathrm{d}6 = 3.5$
- $\mathrm{d}8 = 4.5$
- $\mathrm{d}10 = 5.5$
- $\mathrm{d}12 = 6.5$
- $\mathrm{d}20 = 10.5$

For $N$ identical dice plus a modifier:

$$
E[N\mathrm{d}S + M] = N \cdot \frac{S + 1}{2} + M
$$

### Ability Score Modifier (D&D 5e and similar)
$$
\text{Modifier} = \left\lfloor \frac{\text{Ability Score} - 10}{2} \right\rfloor
$$

**Examples**:  
- Score 10–11 → +0  
- Score 14–15 → +2  
- Score 18–19 → +4  
- Score 8–9 → –1  

### Success Probability on a d20 (Attack Rolls, Checks, Saves)
To succeed you need $\mathrm{d}20 + \text{modifiers} \ge T$ (where $T$ is AC, DC, etc.).

Let $M$ be the minimum number needed on the d20 itself:

$$
M = T - \text{total modifiers}
$$

Probability of success (normal roll):

$$
P(\text{success}) = \frac{21 - M}{20} \quad (1 \le M \le 20)
$$
(or 0 if $M > 20$, 1 if $M \le 1$).

**Advantage** (roll 2d20, take the higher):

$$
P(\text{success with advantage}) = 1 - \left( \frac{M-1}{20} \right)^2
$$

**Disadvantage** (roll 2d20, take the lower):

$$
P(\text{success with disadvantage}) = \left( \frac{21 - M}{20} \right)^2
$$

### Probability of an Exact Sum with Multiple Dice
The number of ways to get sum $k$ with $N$ dice of $S$ sides can be found via generating functions or the inclusion-exclusion formula:

$$
\#\text{ways}(k) = \sum_{i=0}^{\lfloor (k-N)/S \rfloor} (-1)^i \binom{N}{i} \binom{k - S i - 1}{N-1}
$$

Then

$$
P(\text{sum} = k) = \frac{\#\text{ways}(k)}{S^N}
$$

### Damage Rolls
Weapon or spell damage is typically:

$$
\text{Damage} = N\mathrm{d}S + \text{ability modifier} + \text{other bonuses}
$$

(Proficiency bonus is **not** added to damage unless a specific feature says otherwise.)

Expected damage on a hit is the average of the damage expression above.  
Expected damage per attack (DPR contribution) factors in hit chance:

$$
\text{Expected damage} = P(\text{hit}) \times E[\text{damage}] + P(\text{crit}) \times E[\text{extra crit damage}]
$$

### Other Useful Formulas
- **Probability of rolling at least $n$** when taking the highest of $x$ dice with $y$ sides:

  $$
  P(\ge n) = 1 - \left( \frac{n-1}{y} \right)^x
  $$

- Single-face probability on a fair die: $1/S$
- Critical hit (natural 20 on d20): always $1/20 = 5\%$ (or higher with expanded crit range)

