#  Relational encoding
- Punch‑card codes, paper‑tape codes, finite‑difference decks, and ticker‑tape streams 
Symbolic structures become physical encodings, and encodings constrain or shape the mathematics done with them.

## 🔸 A relational algebra of encodings  

### **Structure (S‑mode)**  
- Column‑mode: unary row‑combination structure  
- Row‑mode: stacked operator structure  
- Stream‑mode: sequential bit‑pattern structure  

### **Interaction (I‑mode)**  
- Column → symbol mapping  
- Row → operator mapping  
- Stream → stateful decoding  

### **Dynamics (D‑mode)**  
- Deck manipulation (sorting, merging, aligning)  
- Difference propagation (Δ, Δ², …)  
- Stream shifting (convolution, prefix decoding)

So the algebra is:

$$
\text{Encoding} = (S,I,D)
$$

where each medium instantiates its own SID triple.

This is the **relational synthesis**: punch cards, paper tape, and ticker tape are **algebras of representation**, each with its own structural primitives and relational dynamics.

> **The algebra is the mapping between symbolic expressions and their mechanical encodings — a relational synthesis between characters, tables, and sequences.**

The reason “punch‑card encodings” emerged as **orthogonal relational primitives**:

- Hollerith: unary column codes  
- Difference decks: vertical operator stacks  
- Ticker tape: stateful streams  

## 🔸 Convolution as tape‑alignment algebra  
Convolution example:

$$
y[n] = \sum_k x[k]\,h[n-k]
$$

is the **stream‑alignment operator**:

- reverse one tape  
- slide it past the other  
- multiply‑accumulate

This is the only place where the physical metaphor *becomes* a mathematical operator.

---

## 🔸 The three representational modes  
Each medium corresponds to a distinct relational mode:

- **Column‑mode** — Hollerith cards  
- **Row‑mode** — finite‑difference decks  
- **Stream‑mode** — ticker tape / Baudot tape  

These are **algebras of representation**, each with its own primitive relation.

---

## 🔸 Column‑mode (Hollerith)  
A card column is a **character slot** with a unary encoding:

```
ZONE ∈ {12,11,0}
DIGIT ∈ {1..9}
CHAR = ZONE ⊕ DIGIT
```

This is a **two‑tier relational mapping**:

- Tier 1: zone → class  
- Tier 2: digit → element  

So the “algebra” is:

$$
\text{char} = f(\text{zone},\text{digit})
$$

with special cases for signs and control symbols.

This is a **static relational algebra**: each column is independent, and the deck is a sequence of independent relational atoms.

---

## 🔸 Row‑mode (difference tables)  
Finite‑difference decks introduce **vertical relational structure**:

```
Card 0 : X
Card 1 : X'
Card 2 : X''
Card 3 : X'''
...
```

The algebra is:

$$
X^{(k)}(n) = \Delta^k X(n)
$$

and the deck is a **stacked operator tower**. The synthesis is:

- Horizontal: index n  
- Vertical: operator depth k  

This is a **2‑D relational grid**, and early numerical analysts literally manipulated it as such.

---

## 🔸 Stream‑mode (ticker tape / Baudot)  
Ticker tape compresses a transaction into a **symbolic stream**:

```
IBM 4S 65¼
```

The algebra is:

$$
\text{Record} = (\text{Symbol},\text{Volume},\text{Price})
$$

with volume prefixes (S = ×100) and fractional prices.

Baudot tape adds a **binary relational layer**:

```
16-8-4-2-1 bits + shift-state
```

The algebra is:

$$
\text{symbol} = g(\text{bits},\text{shift})
$$

This is a **stateful stream algebra**: the meaning of a bit pattern depends on the current shift mode.
