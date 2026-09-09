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

## 🔗 Future work 
- a **comparative DG frameworks**  
- a **Relational‑compatible operator mapping**  

## References
- [grokipedia.com](https://grokipedia.com/page/Dependency_grammar) 
- [tedlab.mit.edu](https://tedlab.mit.edu/tedlab_website/researchpapers/Syntax_Gibson_MITPress_2025.pdf)
- [OUCI](https://ouci.dntb.gov.ua/en/works/lDvOmvq7/)
- [ACL Anthology](https://aclanthology.org/W15-2127.pdf) 
