## DE MORGAN'S LAWS
Negation does not merely deny; it interchanges the two fundamental connectives. Augustus De Morgan gave the laws their modern symbolic form in 1847.
Earlier verbal versions were already known to medieval logicians.

**Propositional logic**  
Variables: $p, q$ (propositions)  
Connectives: $\land$ (conjunction / AND), $\lor$ (disjunction / OR), $\neg$ (negation / NOT), $\iff$ (logical equivalence)

$$
\neg(p \land q) \iff \neg p \lor \neg q
$$

$$
\neg(p \lor q) \iff \neg p \land \neg q
$$

**Set theory**  
Variables: $A, B$ (sets)  
Operations: $\cap$ (intersection), $\cup$ (union), $^{\prime}$ (complement relative to a universe $U$)

$$
(A \cap B)' = A' \cup B'
$$

$$
(A \cup B)' = A' \cap B'
$$

**Boolean algebra**  
Variables: $A, B$ (Boolean values / bits)  
Operations: $+$ (OR), $\cdot$ (AND), $^{\prime}$ (NOT)

$$
(A + B)' = A' \cdot B'
$$

$$
(A \cdot B)' = A' + B'
$$

## APPENDIX: BINARY LOGIC

### PROPOSITIONAL LOGIC
Variables: p, q  (propositions)
Connectives: ∧ conjunction (AND), ∨ disjunction (OR), ¬ negation (NOT)
```
¬(p ∧ q)  ⇔  ¬p ∨ ¬q     Negation of the conjunction
¬(p ∨ q)  ⇔  ¬p ∧ ¬q     Negation of the disjunction
```
### SET THEORY
Variables: A, B  (sets)
Operations: ∩ intersection, ∪ union, ′ complement (relative to universe U)
```
(A ∩ B)′  =  A′ ∪ B′
(A ∪ B)′  =  A′ ∩ B′
```
### BOOLEAN ALGEBRA
Variables: A, B  (bits / Boolean values)
Operations: + OR, · AND, ′ NOT
```
(A + B)′  =  A′ · B′
(A · B)′  =  A′ + B′
```
### VENN 
Universe U
```
First Law (union complement)
  U
 ┌─────────┐
 │ A     B │
 │  \   /  │
 │   \ /   │  white = (A ∪ B)′
 │    X    │  = A′ ∩ B′
 │   / \   │
 └─────────┘

Second Law (intersection complement)
  U
 ┌─────────┐
 │ A     B │
 │  \   /  │
 │   \ /   │  pink outside overlap = (A ∩ B)′
 │    X    │  = A′ ∪ B′
 │   / \   │
 └─────────┘
```

### GATES
```
(A + B)′     ≡     A′ · B′
OR then NOT        NOT A  AND  NOT B

(A · B)′     ≡     A′ + B′
AND then NOT       NOT A  OR   NOT B
```

