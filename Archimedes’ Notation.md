# **Archimedes’ Notation**
Relational Compatible Rewrite

This is the relational representation of Archimedes’ entire notational system.

# **Summary Table**

| **Archimedes Feature** | **Relational Rewrite** |
|------------------------|------------------|
| **Greek numerals** | SID structural tags (`U_n`, `T_n`, `H_n`) |
| **Unit fractions** | PED evaluation chains (`Eval(U_1/U_k)`) |
| **Sand Reckoner** | Q‑moderated positional operator (`Relate(coeff, Q^i(Base))`) |
| **Geometric diagrams** | SID/INT (Interaction) relational regions (`Region`, `Segment`, `Limit_Q`) |
| **Rhetorical algebra** | PED syncopated operators (`Add`, `Mul`, `Pow`, `Iter`) |


## Attic & Milesian Numerals 
→ Structural Mode

Archimedes’ numeral systems were **symbolic labels**, not algebraic operators.  
These become **structure‑tags**:

```
SID:Number :=
    {unit: U_n, tens: T_n, hundreds: H_n}
```

Where:

- Attic numerals become **additive concatenations**:
  ```
  SID:Attic(23) := Δ + Δ + III
  → RDG:Attic(23) := U_10 + U_10 + U_3
  ```

- Milesian numerals become **alphabetic index‑tags**:
  ```
  SID:Milesian(n) := tag[n]
  ```

These tags carry **no Power‑meaning** until evaluated.

## Fractions 
→ Evaluation Mode

Greek unit‑fraction expansions map naturally to **Power‑evaluation chains**:

Original Greek:
```
1/7 + 1/28 + 1/112 + 1/224
```

Rewrite:
```
PED:Frac :=
    Eval( U_1 / U_7 )
  + Eval( U_1 / U_28 )
  + Eval( U_1 / U_112 )
  + Eval( U_1 / U_224 )
```

Or compressed:
```
PED:Frac := Σ_{k∈{7,28,112,224}} Eval(U_1 / U_k)
```

A Greek fraction like **17/21** becomes:

```
PED:Frac(17/21) :=
    Eval( U_17 / U_21 )
```

If Archimedes used superscripts or positional cues, RDG expresses them as:

```
PED:Frac := Relate( numerator:U_17 , denominator:U_21 )
```

---

## Sand Reckoner Positional System 
→ Moderated Positional Operator

Archimedes’ greatest innovation was the **myriad‑myriad positional hierarchy**.  
RDG expresses this using a **Q‑moderated positional operator**:

### **Archimedes’ base**
```
Base := 10^8
```

### **Positional operator**
```
SID:Positional :=
    Σ_{i=0..k}  Relate( coeff:a_i , place:Q^i(Base) )
```

Where:

- `Q^i(Base)` is the **i‑th Q‑moderated positional lift**  
- `coeff:a_i` is a finite Structural‑tag  
- Evaluation occurs only when Power is applied:

```
PED:Eval( SID:Positional ) :=
    Σ_{i=0..k}  a_i * (Base)^i
```

### **Example**
Archimedes number:
```
N = a*(10^8)^0 + b*(10^8)^1 + c*(10^8)^2 + …
```

Rewrite:
```
SID:Arch(N) :=
    Σ_{i=0..k} Relate( coeff:a_i , place:Q^i(10^8) )

PED:Arch(N) :=
    Σ_{i=0..k} a_i * (10^8)^i
```

This is the **exact analogue** of Archimedes’ “orders” and “periods.”

---

## Geometric Diagrams 
→ Structural Interaction Mode (Structural → INT)

Archimedes’ geometric notation used **lettered points**, **segments**, and **areas**.  
RDG expresses these as **structural interaction graphs**:

```
SID:Point := P_i
SID:Segment := Relate(P_i , P_j)
SID:Area := Region( P_i , P_j , P_k )
SID:Volume := Region3( P_i , P_j , P_k , P_l )
```

Exhaustion arguments become **limit‑like Q‑moderated refinements**:

```
INT:Exhaustion(Region) :=
    Limit_Q( sequence_of_subregions )
```

Where `Limit_Q` is the **bounded‑reality compatible limit operator**.

---

## Rhetorical Algebra 
→ RDG Syncopated Relational Operators

Archimedes used rhetorical descriptions with occasional symbolic abbreviations.  
RDG expresses these as **syncopated relational operators**:

```
PED:Add(a,b) := a + b
PED:Mul(a,b) := a * b
PED:Pow(a,n) := a^(n)
```

Repeated operations (Greek abbreviations) become:

```
PED:Iter(op, n) := op applied n times
```

Fractions with positional cues become:

```
Relate( numerator:U_n , denominator:U_d ) → PED:Frac(n/d)
```

# Canonical Form

Here is the **canonical RDG form** of Archimedes’ number system:

```
RDG:ArchNumber :=
    SID:PositionalStructure :=
        Σ_{i=0..k} Relate( coeff:a_i , place:Q^i(10^8) )

    PED:Evaluation :=
        Σ_{i=0..k} a_i * (10^8)^i

    INT:GeometricContext :=
        Regions, Segments, Points, Limit_Q refinements

    PED:Fractions :=
        Σ Eval(U_1 / U_k)

    SyncopatedOperators :=
        Add, Mul, Pow, Iter
```

## Future Work
- A full RDG rewrite of *The Sand Reckoner* number hierarchy  
- RDG‑compatible geometric reconstruction of *Measurement of a Circle*  
- RDG operators for Archimedean exhaustion proofs
