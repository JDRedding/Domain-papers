# 🧠 **Dependency grammar**  
Dependency grammar is a syntactic framework where **words are connected by directed head–dependent relations**, with the **verb as the structural center**. The authors — Tesnière, Hays, Mel’čuk, Hudson, Osborne, de Marneffe & Nivre, Nefdt & Baggio — represent the major historical and modern developments of this tradition. DG is now the **dominant formalism in NLP parsing**, especially through Universal Dependencies. It also underlies cognitive theories of sentence processing, such as **dependency locality** and **dependency length minimization**, which explain cross-linguistic word-order patterns.  


## 📚 Core
Dependency grammar (DG) models syntax as **binary, asymmetrical relations** between words. Each word (except one root) depends on a head, forming a **tree** rather than a phrase-structure hierarchy. This contrasts with constituency grammars, which rely on non-terminal nodes like NP or VP.   

Key properties:  
- **Verb-centered structure**: finite verb is the root.  
- **No phrasal nodes**: only words and their dependency links.  
- **Valency**: lexical items specify required dependents.  
- **Projectivity**: arcs ideally do not cross (though non-projective structures exist).  
- **Cross-linguistic flexibility**: works well for free word-order languages.   
---

## 🧭 Historical lineage 

### **Lucien Tesnière (1959, 2015)**  
Founder of modern DG.  
- Introduced **stemmas** (dependency trees).  
- Emphasized **actants**, **circonstants**, and **junction/translation** operations.  
- Treated syntax as a **network of relations**, not constituent phrases.  

### **David Hays (1964)**  
One of the earliest computational implementations of DG.  
- Helped formalize DG for machine translation and early parsing.  

### **Igor Mel’čuk (1988)**  
Creator of **Meaning–Text Theory (MTT)**.  
- Multi-level dependency representation from semantics → syntax → morphology.  
- Rich typology of dependency relations.  

### **Richard Hudson (1984, 2015)**  
Developer of **Word Grammar**.  
- A cognitive, monostratal dependency theory.  
- Treats syntax as a network of relations in the mind.  

### **Timothy Osborne (2019)**  
Major contributor to modern DG theory.  
- Historical analysis of function words in DG.  
- Shows long-standing debates about heads vs dependents for auxiliaries, determiners, prepositions.  

### **Marie-Catherine de Marneffe & Joakim Nivre (2019, 2021)**  
Creators/leaders of **Universal Dependencies (UD)**.  
- A cross-linguistic DG annotation scheme for >180 languages.  
- Positions many function words (aux, det, adp) as **dependents** of content words.  

### **Nefdt & Baggio (2023)**  
Recent theoretical work integrating DG with cognitive and computational perspectives.  
- Cited in Gibson (2025) as part of the modern DG landscape.  

---

## 🧩 Author unification  
Despite differences, they share core commitments:

- **Syntax is fundamentally relational**, not constituent-based.  
- **The verb is central** to clause structure.  
- **Dependencies encode meaning composition** directly.  
- **DG is computationally tractable**, enabling modern parsing (Nivre).  
- **DG supports cognitive interpretations** (Hudson, Gibson).  
- **DG scales cross-linguistically** (UD project).  


##  modern notation

**Dependency grammar** is formalized as a directed graph (almost always a tree) over the words of a sentence. The standard modern notation and constraints are as follows. These are the core equations and constraints used across Tesnière-style stemmas, Word Grammar networks, Meaning–Text Theory, Universal Dependencies, and modern dependency parsers.

### Graph-theoretic definition

A **dependency graph** for a sentence $ S = w_1 w_2 \dots w_n $ is a directed graph

$$
G = (V, A)
$$

where
- $ V = \{1, 2, \dots, n\} $ (nodes correspond one-to-one with word tokens),
- $ A \subseteq V \times V $ is the set of directed arcs.

An arc $ (i,j) \in A $ (written $ i \to j $) means “$ w_i $ is the **head** of $ w_j $” (or “$ w_j $ **depends on** $ w_i $”).

A **dependency tree** is a dependency graph that satisfies three axioms:

1. **Single root**: there exists a unique root $ r \in V $ with in-degree 0.
2. **Single head** (uniqueness): every node except the root has in-degree exactly 1.
3. **Acyclicity and connectedness**: $ G $ is a tree (equivalently, there is a unique directed path from the root to every node).

These are Robinson’s classic axioms (1970).

Labeled versions add a finite set of relation labels $ R $:

$$
A \subseteq V \times R \times V,
$$

so an arc is written $ i \xrightarrow{r} j $.

### Projectivity

Let $ [i,j] $ denote the closed interval of positions between $ i $ and $ j $ (inclusive). Write $ i \to^* j $ for the reflexive-transitive closure of $ \to $ (“$ j $ is a descendant of $ i $”).

A tree is **projective** if and only if the yield (projection) of every node is a contiguous interval. Equivalently (Marcus 1965 / Hays–Gaifman):

$$
\forall a,b,x \in V:\quad (a \to b \;\land\; x \text{ lies strictly between } a \text{ and } b) \;\implies\; a \to^* x.
$$

In other words, if there is an arc from $ i $ to $ j $, every word lying linearly between them must be a descendant of $ i $. Non-projective trees allow crossing arcs.

### Hays–Gaifman generative formulation

A (projective) dependency grammar can also be given as a 4-tuple

$$
G = \langle R, L, C, F \rangle
$$

- $ L $ = terminal lexicon,
- $ C $ = set of categories (non-terminals),
- $ F : L \to C $ assignment of categories,
- $ R $ = finite set of rules of the form

$$
X \to Y_1 \dots Y_k \; X \; Z_1 \dots Z_m
$$

  meaning “a word of category $ X $ may take left dependents of categories $ Y_i $ and right dependents of categories $ Z_j $”.

The generated structures are exactly the projective dependency trees.

### Mel’čuk / Meaning–Text notation

Syntactic dependency of type $ r $ is written

$$
w_1 \xrightarrow{r} w_2
$$

($ w_1 $ governs $ w_2 $). The relation is required to be
- anti-symmetric,
- anti-reflexive,
- anti-transitive (no “shortcut” arcs),
- unique-governor,
- connected (the whole sentence forms one tree).

## 🔗 Future work 
- a **comparative DG frameworks**  
- a **Relational‑compatible operator mapping**  

## References
- [grokipedia.com](https://grokipedia.com/page/Dependency_grammar) 
- [tedlab.mit.edu](https://tedlab.mit.edu/tedlab_website/researchpapers/Syntax_Gibson_MITPress_2025.pdf)
- [OUCI](https://ouci.dntb.gov.ua/en/works/lDvOmvq7/)
- [ACL Anthology](https://aclanthology.org/W15-2127.pdf) 
