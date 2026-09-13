# Mana Revolver

**Type:** Hybrid firearm + melee  
Revolver frame with detachable ethereal crystal.

## Variables

- **Frame:** Wood grip, steel receiver  
- **Barrel:** Short, open-top, no conventional cylinder visible  
- **Crystal:** Long mana energy source, pointed tip  
- **Mount:** Sliding rail / fork under barrel for attachment  
- **State:** Assembled (locked) or separated (gun + loose)

## Fundamentals

- Revolver mechanics remain functional.  
- Crystal acts as a magical standalone weapon.  
- Energy crystal appears solid and glowing, not a projectile.  
- Design treats magic like a discovered material (mana).  
- Intended for fantasy / tabletop / concept art use.

Multiple orthographic views shown: assembled, blade only, gun only.

## Generic RPG / Boardgame Combat Math

### Hybrid Weapon Example (Revolver)

- Ranged mode uses firearm to-hit + formula.  
- Melee mode uses blade to-hit + formula.  
- Switching modes is usually a free or swift action (no extra roll).

### Notation

| Symbol | Meaning |
|--------|---------|
| $dS$ | single die with $S$ faces ($d20$, $d6$, $d100$) |
| $NdS$ | $N$ dice of $S$ faces |
| $TN$ | target number |
| $\mathrm{mod}$ | sum of all bonuses/penalties |
| $P(x)$ | probability of event $x$ |
| $E[X]$ | expected value of $X$ |
| $AC$ | armor class / defense value |
| $HP$ | hit points |
| $\mathrm{res}$ | resource (ammo, mana, charges) |

### Dice Averages

Single die:

$$
E[dS] = \frac{S+1}{2}
$$

Multiple dice:

$$
E[NdS] = N \times \frac{S+1}{2}
$$

### d20 To-Hit (Most Common RPG)

Attack succeeds if

$$
d20 + \mathrm{mod} \ge AC
$$

Natural 1 always miss, natural 20 always hit (common house rule).

Hit probability (ignoring auto-fail/success):

$$
P_{\mathrm{hit}} = \frac{21 - (AC - \mathrm{mod})}{20}
$$

Clamp to

$$
0.05 \le P_{\mathrm{hit}} \le 0.95
$$

### Expected Damage

$$
E[D] = P_{\mathrm{hit}} \times \bigl(E[\text{weapon dice}] + \mathrm{dmg\,mod}\bigr)
$$

With criticals (confirm on 20, extra dice or multiplier):

$$
E[D] = P_{\mathrm{hit}} \times \mathrm{base} + P_{\mathrm{crit}} \times \mathrm{extra}
$$

### Percentile / d100 System

Success if

$$
d100 \le \mathrm{skill}
$$

$$
P_{\mathrm{success}} = \frac{\mathrm{skill}}{100}
$$

### Dice Pool (Boardgame / Narrative Systems)

Each die succeeds on result $\ge T$.

Success chance per die:

$$
p = \frac{S - T + 1}{S}
$$

Expected successes:

$$
E[\mathrm{successes}] = N \times p
$$

At least one success:

$$
P(\ge 1) = 1 - (1-p)^N
$$

### Opposed Rolls

A beats B if

$$
\mathrm{roll}_A + \mathrm{mod}_A > \mathrm{roll}_B + \mathrm{mod}_B
$$

### Resource Check (Ammo / Mana / Charges)

Action legal only if

$$
\mathrm{res}_{\mathrm{current}} - \mathrm{cost} \ge 0
$$

After use:

$$
\mathrm{res}_{\mathrm{new}} = \mathrm{res}_{\mathrm{current}} - \mathrm{cost}
$$

## Future Work

- Mana crystal mechanics  
- Steampunk aesthetics
