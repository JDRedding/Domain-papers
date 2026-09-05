# **Mortar: Evolving Mechanics for Automatic Game Design**  
**Muhammad U. Nasir, Yuchen Li, Steven James, Julian Togelius**  
**Subject:** Artificial Intelligence (cs.AI)

## 🎮 **MORTAR: Mechanics Optimized Repertoire Tree‑search Ranking**

Mortar is a system for autonomously evolving game mechanics for automatic game design. Game mechanics define the rules and interactions that govern gameplay, and designing them manually is both time‑consuming and expertise‑heavy. Mortar combines a quality‑diversity algorithm with a large language model to explore a wide range of mechanics, which are then evaluated by synthesizing complete games that incorporate both evolved mechanics and those drawn from an archive.

Mortar is a full pipeline for *inventing new game mechanics* and testing whether they produce **skill‑based, playable games**. It blends evolutionary search, LLM‑driven mechanic mutation, automated game synthesis, and agent‑based skill evaluation.

---

## **Short Takeaway**  
**MAP‑Elites Oriented Rule Transformation And Recombination**

- **Quality‑diversity (QD)** fills a map of niches with the best example of each type, rather than searching for a single champion.
- **Procedural content generation (PCG)** algorithmically invents game content.
- Combined, they allow exploration of many *types* of playable designs, preserving strong variants and using odd mid‑quality ones as stepping stones.
- Mortar’s innovation is applying this loop to *mechanics expressed as code*, using an LLM as the mutation operator and skill‑based player rankings as the fitness signal.

Mechanics are evaluated by composing complete games through a tree‑search procedure. These games are scored by how well they preserve a skill‑based ordering—stronger players should consistently outperform weaker ones. Mortar measures each mechanic’s contribution to this ordering and demonstrates that it can produce diverse, playable games with mechanics that meaningfully improve skill differentiation. Ablation studies and a user study confirm the importance of each system component and the perceived quality of the generated games.

---

## 🔍 **What Mortar Actually Does**  
**Mechanic Oracle for Rapid Tactical Archive Refinement**

### **1. Mechanic Evolution via MAP‑Elites + LLM**
- Mortar maintains a **MAP‑Elites archive** of mechanics.  
- A large language model mutates mechanics at the *code level*, producing new variants.  
- The goal is not just high‑quality mechanics but **diverse** mechanics across many behavioral niches.

### **2. Automated Game Construction**
Mechanics cannot be evaluated in isolation. Mortar uses **Monte‑Carlo Tree Search (MCTS)** to assemble full games from:
- evolved mechanics  
- archived mechanics  

The search aims to build games that are coherent, playable, and capable of meaningful strategic differentiation.

### **3. Skill‑Based Evaluation**
Each constructed game is played by **five agents of varying skill**, and Mortar measures how well the game preserves a **skill ordering**:

- Stronger agents should reliably outperform weaker ones.  
- This is quantified using **Kendall’s τ**, a rank‑correlation measure.

### **4. Mechanic‑Level Scoring (CITS)**
Mortar computes a **Shapley‑inspired CITS score** to estimate each mechanic’s *individual contribution* to the game’s skill‑ordering performance. This enables Mortar to:
- identify mechanics that increase strategic depth  
- prune mechanics that add noise or reduce skill expression  

---

## **Quality‑Diversity Algorithms**

A standard optimizer asks: *“What is the single best solution?”*  
A quality‑diversity algorithm asks: *“What are the best solutions of many different kinds?”*

This distinction matters in creative domains. There is rarely one correct jump mechanic, level layout, or robot gait. You want a **collection** of high‑performing options that differ in style, structure, or behavior.

QD originates in evolutionary computation, especially **Novelty Search** and **MAP‑Elites**, which Mortar uses.

### **The Ingredients**
Mortar evolves mechanics using **QD + LLM mutation**, assembles complete games via **MCTS**, and evaluates them by how well they preserve skill‑based player ordering. Mechanics are scored individually using a **Shapley‑style contribution metric**, enabling automatic discovery of mechanics that meaningfully improve game depth.

Each candidate receives two scores:

1. **Quality** — how much the mechanic helps preserve skill ordering.  
2. **Diversity / behavior descriptors** — interpretable features describing *what kind* of mechanic it is (e.g., movement, combat, puzzle) and its code complexity.

These descriptors define a **feature space**. MAP‑Elites divides this space into a grid. Each cell stores the best solution found for that niche—the “elite.” New candidates are created by mutating elites (Mortar uses an LLM to rewrite Python functions) and placed into the appropriate cell. They replace the elite only if they are better.

Over time, the grid “illuminates” the space: not just one winner, but a map of *which kinds of solutions work*.

Common metrics:
- **Coverage** — number of filled cells  
- **QD‑score** — sum of fitness across filled cells  
- **Max / mean fitness** of elites  

QD measures diversity in *behavior*, not just code structure. Two different programs can behave the same; two similar programs can behave differently. QD cares about the latter.

Unlike multi‑objective optimization, QD uses extra dimensions only to *categorize* solutions, not to trade off multiple fitnesses.

A practical advantage: diverse mid‑quality solutions often act as **stepping stones**. Greedy fitness‑only search discards them and can stall.

### **MAP‑Elites Loop**
**Mixing Old Rules To Assemble Rulesets**

1. Generate initial candidates.  
2. Evaluate quality + descriptors.  
3. Place each into its grid cell if it is the best so far.  
4. Select elites, vary them, evaluate offspring, update the grid.  
5. Repeat.

---

## **Procedural Content Generation (PCG)**

PCG is the automatic creation of game content—levels, maps, items, quests, textures, characters, rules, or, in Mortar’s case, **mechanics**.

Motivations include:
- scale  
- variety and replayability  
- designer assistance  
- research into playability and fairness  

### **Main Families of PCG**
- **Constructive methods:** noise functions, grammars, tile assemblers, WFC.  
- **Search‑based PCG:** evolutionary algorithms, MCTS, simulated annealing.  
- **PCGML:** GANs, VAEs, transformers trained on existing content.  
- **LLM‑based PCG:** flexible but often brittle without search or constraints.  
- **Hybrid systems:** search + ML, or LLM mutation inside evolutionary loops—Mortar’s pattern.

Mortar’s evaluation is distinctive: compose a full game, play it with agents of known skill, and measure whether the ranking is preserved. A mechanic is valuable if it *contributes* to that score, not merely if it looks clever.

---

## **Game Design Findings**

### **Diversity & Playability**
Mortar produces games that are:
- structurally diverse  
- generally playable  
- often showing clear skill gradients  

### **Ablation Studies**
Removing components (LLM mutation, tree search, etc.) reduces:
- mechanic diversity  
- game quality  
- skill‑ordering strength  

### **Human Evaluation**
Participants found the generated games:
- varied  
- reasonably coherent  
- containing meaningful mechanics  

QD is a natural fit for PCG because games benefit from *repertoires*, not single artifacts. Mortar pushes this further by evolving **rules themselves**, not just content within fixed rules.

### **Mortar’s Design Stack**
| Component | In Mortar |
|---|---|
| Individuals | Game mechanics as Python functions |
| Feature map | Mechanic type × code complexity |
| Variation | LLM rewrites, mixes, or specializes mechanics |
| Evaluation | MCTS builds full games; agents play; skill‑ordering correlation is fitness |
| Output | Archive of diverse, useful mechanics and the games they enable |

This is automatic game design in the strong sense: evolving **rules**, not just assets.

---

## **Future Work**
- quality‑diversity algorithms  
- Monte‑Carlo Tree Search  
- skill‑based evaluation  
- LLM‑driven game design  

---

## **Further Reading**
- [arXiv:2601.00105v1](https://arxiv.org/html/2601.00105v1) [(arxiv.org in Bing)](https://www.bing.com/search?q="https%3A%2F%2Farxiv.org%2Fabs%2F2601.00105v1")
