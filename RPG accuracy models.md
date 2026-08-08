This note compares three **TTRPG accuracy models** — *bounded, unbounded, and semi‑bounded* — arguing that the choice of accuracy model is a core design philosophy because it shapes player feeling, progression, randomness vs. skill, and encounter design. It defines each model, explains the math behind it, lists design goals and trade-offs, and shows when a designer would pick each approach. 

**Bounded, unbounded, and semi‑bounded accuracy represent three different philosophies about how randomness, skill, and progression should interact in mainstream TTRPG.** Each approach creates a distinct feel for players — swingy accessibility, crunchy specialization, or predictable expertise.

## 🧩 Why the math system *is* a design philosophy  
Academic work on TTRPG systems emphasizes that mechanics, randomness, and resolution models 
form part of a game’s systemic identity. They shape feedback loops, player agency, and how 
the game adapts to emergent behavior. 

Choosing an accuracy model determines:  
- How characters feel as they grow.  
- How often players succeed or fail.  
- How much luck vs. skill drives outcomes.  
- How complex the game becomes.  
- How accessible it is to newcomers.

In other words, **the math expresses the game’s values**—whether it prioritizes 
accessibility, simulation, mastery, or predictability.

---

## 🧮 Bounded Accuracy 
— “Keep numbers small, keep challenges relevant”  
Bounded accuracy limits how much bonuses can grow. D&D 5e is the canonical example
: proficiency only rises from +2 to +6, ability scores cap at 20, and magic bonuses rarely exceed +3. 

**Design goals:**  
- Make low-level monsters remain usable at high levels.  
- Ensure non-specialists can still participate meaningfully.  
- Reduce the need for escalating DCs or ACs.  
- Increase accessibility and ease of adjudication. 

**Trade-offs:**  
- Swinginess: a d20’s flat distribution means randomness often outweighs skill.  
- Limited differentiation: specialists don’t pull as far ahead as in older editions.  
- Competence feels inconsistent because the die dominates outcomes.

**Why designers choose it:**  
It keeps the game approachable, reduces math load, and preserves encounter variety.

Bounded accuracy isn’t just “keeping numbers small.” It’s a *probability‑shaping philosophy* that deliberately constrains how characters grow, how challenges scale, and how randomness interacts with skill.

---

## Core idea  
**Bounded accuracy keeps modifiers within a narrow band so that the die roll remains the dominant variable.**  
This creates a game where *accessibility, encounter flexibility, and broad participation* matter more than simulationist precision.

---

## 🎯 What bounded accuracy *actually* enforces  
### 1. **A fixed effective range of competence**  
In D&D 5e, most characters operate between +0 and +10 on checks. That means:

- A goblin with +4 to hit can still threaten a level 15 fighter.  
- A level 1 rogue with +5 Stealth can still meaningfully attempt a DC 20 check.  
- A level 20 wizard with +11 Arcana can still fail a DC 15 check.

This is intentional: bounded accuracy keeps the *effective difficulty space* small so designers don’t need escalating DCs or ACs.

---

### 2. **The die dominates the outcome**  
A d20 has a flat distribution: every result is equally likely.  
If your modifier is +7, the die still contributes ~75% of the variance.

This creates the “swinginess” people talk about:

- Experts sometimes fail easy tasks.  
- Novices sometimes succeed at hard tasks.  
- Luck feels loud.

Bounded accuracy *embraces* this because it keeps the game dramatic and accessible.

---

### 3. **Specialization is shallow**  
Because bonuses are capped:

- Ability scores max at +5  
- Proficiency maxes at +6  
- Magic items rarely exceed +3  
- Expertise is one of the few exceptions (+12 max)

This means the difference between a novice (+2) and an expert (+10) is only 8 points—less than half the die’s range.

Bounded accuracy intentionally compresses the skill gap.

---

### 4. **Encounter design becomes flexible**  
Because numbers don’t inflate:

- Low‑level monsters remain viable at high levels.  
- Designers can reuse stat blocks without recalibrating.  
- Mixed‑level parties can share spotlight time.

This is why 5e can throw hordes of goblins at level 10 characters and still create tension.

---

## 🧠 Why designers choose bounded accuracy  
### Accessibility  
New players don’t need to track stacking bonuses or escalating DCs.

### Narrative consistency  
A dragon is always dangerous. A locked door is always a challenge.  
The world doesn’t “scale” with the party.

### Spotlight sharing  
Generalists and specialists can meaningfully contribute in the same scenes.

### Lower cognitive load  
Fewer modifiers → faster adjudication → smoother play.

---

## ⚠️ The hidden costs  
### 1. **Competence feels inconsistent**  
Because randomness dominates, long‑term mastery is hard to model.  
A legendary thief can still botch a simple lockpick.

### 2. **Progression feels flat**  
Leveling up rarely produces dramatic jumps in capability.

### 3. **Optimization is limited**  
Players who enjoy deep buildcrafting may feel constrained.

### 4. **Simulation suffers**  
If want a world where experts almost never fail routine tasks, bounded accuracy fights you.

---

## 🧩 How bounded accuracy fits into TTRPG math philosophy  
Bounded accuracy is the “accessibility-first” paradigm:

- **Bounded** → keep numbers small  
- **Flat distribution** → keep randomness loud  
- **Slow progression** → keep challenges relevant  
- **Low specialization** → keep parties balanced  

It’s a deliberate choice to prioritize *playability over realism* and *drama over predictability*.

---

## 📈 Unbounded Accuracy 
— “Let numbers scale with mastery”  
Systems like Pathfinder (especially 3.5-era D&D lineage) allow bonuses to grow significantly — 
attack bonuses, AC, skill modifiers, and item bonuses can stack into the +20s or higher. 

**Design goals:**  
- Reward specialization and character-building mastery.  
- Allow high-level characters to feel *consistently* superior.  
- Support simulationist or crunchy playstyles.

**Trade-offs:**  
- Math-heavy gameplay: stacking modifiers, escalating DCs, and complex builds.  
- Party imbalance: optimized characters can overshadow generalists.  
- Encounter design becomes tightly tuned around expected numerical progression.

**Why designers choose it:**  
It creates a strong sense of growth and mastery—characters become *reliably* competent.

---

## Core idea  
**Unbounded accuracy allows character bonuses to grow without strict caps, so skill eventually overwhelms randomness.**  
Systems like Pathfinder, D&D 3.5, and GURPS exemplify this.

---

## 📈 What unbounded accuracy *actually* enforces  
### 1. **A widening competence gap**  
As characters level, their bonuses escalate:

- Attack bonuses can reach +25 or more  
- Skills can exceed +30  
- AC and DCs scale upward to match  
- Magic items add stacking modifiers  
- Feats and class features multiply bonuses

This creates a *divergent progression curve*: novices and experts rapidly separate.

**Result:**  
High-level characters succeed at routine tasks almost automatically, while low-level characters cannot meaningfully attempt high-level challenges.

This is the opposite of bounded accuracy’s “everyone can try.”

---

### 2. **Skill dominates randomness**  
In a d20 system, a +25 bonus means:

- Minimum roll = 26  
- Maximum roll = 45  
- A DC 30 check is trivial  
- A DC 40 check is achievable  
- A DC 15 check is automatic

The die becomes a *fine-tuning noise source*, not the primary determinant.

This is why unbounded systems feel less “swingy” and more simulationist.

---

### 3. **Specialization becomes deep and meaningful**  
Because bonuses stack, players can build characters who:

- Never fail certain tasks  
- Routinely exceed DCs by 20+  
- Outperform generalists by massive margins  
- Exploit synergies between feats, items, and class features

This supports a **high‑agency, high‑optimization** playstyle.

It also encourages system mastery—players who understand the math can create extremely effective builds.

---

### 4. **Encounter design becomes tightly tuned**  
Because numbers escalate:

- Monsters must scale with the party  
- DCs must increase to remain challenging  
- CR/EL systems become mathematically sensitive  
- Small miscalculations can break encounters

Designers must carefully calibrate progression curves to avoid runaway difficulty inflation.

---

## 🧠 Why designers choose unbounded accuracy  
### Simulationist consistency  
Experts almost never fail routine tasks.  
Novices cannot perform expert-level tasks.  
This matches real-world competence curves.

### Rewarding mastery  
Players who invest in optimization feel powerful and unique.

### Predictability  
High bonuses produce stable outcomes, reducing randomness.

### Deep buildcrafting  
The system supports:

- Synergy hunting  
- Feat chains  
- Item stacking  
- Multiclass optimization  
- Mathematical tuning

This appeals to players who enjoy crunchy, strategic systems.

---

## ⚠️ The hidden costs  
### 1. **Math-heavy gameplay**  
Players must track:

- Multiple stacking bonuses  
- Conditional modifiers  
- Escalating DCs  
- Buff/debuff states  
- Item synergies

This increases cognitive load.

### 2. **Party imbalance**  
Optimized characters can overshadow casual players.

A min-maxed rogue with +32 Stealth makes the +12 Stealth ranger irrelevant.

### 3. **Encounter brittleness**  
If a monster’s AC is off by 3 points, the fight becomes trivial or impossible.

### 4. **Accessibility challenges**  
New players may feel overwhelmed by the math and build complexity.

---

## 🧩 How unbounded accuracy fits into TTRPG math philosophy  
Unbounded accuracy is the “simulationist mastery” paradigm:

- **Unbounded** → let numbers scale  
- **Skill-dominant** → reduce randomness  
- **Deep specialization** → reward system mastery  
- **Escalating DCs** → maintain challenge  
- **High differentiation** → experts feel truly expert  

It’s a deliberate choice to prioritize *realistic competence curves, optimization depth, and predictable outcomes* over accessibility or swingy drama.

---

## 🎯 Semi‑Bounded Accuracy 
— “Predictability through bell curves”  
This is the “alternative path” : use multiple dice (e.g., 2d10) to produce a normal distribution,
then fix the success threshold (e.g., DC 20). 
This makes training matter more than luck.

**Design goals:**  
- Reduce swinginess by clustering results around the mean.  
- Make skill investment more meaningful than raw randomness.  
- Preserve excitement while improving predictability.

**Why it works:**  
Multiple dice create a probability curve rather than a flat distribution. 

Designers can tune how much randomness they want by adjusting dice count, modifiers, or
thresholds. 

This aligns with research showing that dice mechanics strongly shape player experience and 
perceived competence.  

**Trade-offs:**  
- Less dramatic highs/lows compared to d20 systems.  
- Requires players to understand probability curves (slightly more math).  
- Designers must carefully calibrate thresholds to avoid trivializing challenges.

---
Semi‑bounded accuracy is the “middle path” between the swingy accessibility of bounded accuracy and the simulationist precision of unbounded accuracy. It’s a *predictability‑first* design philosophy that uses probability curves, fixed thresholds, and controlled bonus growth to make characters feel reliably competent without eliminating randomness.

---

## Core idea  
**Semi‑bounded accuracy uses multiple dice to create a bell curve and fixes the success threshold so that skill matters more than luck, but luck still matters.**

It’s not about capping bonuses (bounded) or letting them explode (unbounded).  
It’s about *shaping the probability distribution* so that:

- Experts succeed consistently  
- Novices struggle predictably  
- Randomness adds texture, not chaos  

---

## 🎲 The mathematical foundation: bell curves vs. flat distributions  
Bounded accuracy uses a d20 → flat distribution → every number equally likely.  
Semi‑bounded accuracy uses dice like 2d10, 3d6, or 4d6 → bell curve → most results cluster around the mean.

### Why this matters  
With 2d10:

- Mean = 11  
- Standard deviation ≈ 3  
- Extreme results (2 or 20) are rare  
- Middle results (9–13) are common

This means:

- A +6 expert modifier shifts the entire curve upward → reliable competence  
- A +0 novice modifier leaves the curve centered → predictable struggle  
- Luck still exists but doesn’t dominate outcomes

This is the heart of semi‑bounded accuracy.

---

## 🎯 The fixed threshold principle  
Semi‑bounded accuracy typically uses a **fixed success threshold** (e.g., 20).  
This creates a stable “target” that players can reason about.

### Why fixed thresholds matter  
In unbounded accuracy, DCs escalate endlessly.  
In bounded accuracy, DCs are static but randomness overwhelms skill.

Semi‑bounded accuracy says:

> “Keep the DC fixed, and let skill determine how often you beat it.”

This creates a *clean, interpretable progression curve*.

---

## 📈 How progression works  
Progression is neither shallow (bounded) nor explosive (unbounded).  
Instead, bonuses grow slowly but meaningfully.

Example progression:

- Novice: +0  
- Trained: +3  
- Expert: +6  
- Master: +9  

On 2d10:

- Novice succeeds ~10–20% of the time  
- Expert succeeds ~60–70% of the time  
- Master succeeds ~85–95% of the time  

This models real-world competence curves far better than a d20.

---

## 🧩 Structural properties (for your modeling brain)

### 1. **Predictability**  
The bell curve makes outcomes cluster.  
This supports systems where:

- Planning matters  
- Training matters  
- Expertise feels earned  
- Randomness is spice, not chaos

### 2. **Bounded but meaningful growth**  
Bonuses don’t explode, but they matter more than in bounded accuracy.

### 3. **Stable world model**  
Because thresholds don’t escalate, the world feels consistent:

- A locked door is always DC 20  
- A master locksmith is always good at opening it  
- A novice is always bad at opening it  

No treadmill effect.

### 4. **Designer control**  
Designers can tune:

- Dice count → curve width  
- Bonus growth → competence slope  
- Threshold → difficulty anchor  

This gives more control than either bounded or unbounded accuracy.

---

## ⚠️ Trade-offs  
### 1. Less dramatic highs/lows  
Bell curves reduce critical swings.  
Some players miss the wild chaos of d20 systems.

### 2. Slightly more math  
Players must understand probability curves (though only intuitively).

### 3. Calibration sensitivity  
If bonuses grow too fast, the curve breaks.  
If thresholds are too low, everything becomes trivial.

---

## 🧠 Why designers choose semi‑bounded accuracy  
Because it balances:

- **Accessibility** (bounded)  
- **Simulation** (unbounded)  
- **Predictability** (unique to semi‑bounded)  

It’s ideal for games that want:

- Competence to matter  
- Randomness to add texture  
- Progression to feel meaningful  
- The world to remain stable  
- Encounter design to be simple  

It’s the “Goldilocks zone” of TTRPG math.

