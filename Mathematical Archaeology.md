# Mathematical Archaeology 
*Artifact Analysis Framework*

> The study of recovered conceptual machinery through the extraction of invariant relational structures from historical artifacts.

Formal specification for recovering relational, geometric, and operational structure from historical artifacts.

## Description

**Mathematical archaeology** is the systematic recovery of relational, geometric, and operational structures embedded in historical artifacts (diagrams, symbols, practices, or texts), even when their creators lacked modern formal notation. It asks what distinctions, relations, hierarchies, transformations, and invariants are present, treating labels as intentional metadata and accompanying text as operational guidance. It reconstructs the conceptual machine without requiring acceptance of original metaphysical claims. Formal language arrives after the pattern; the goal is the relational skeleton that survives translation.

## Purpose

Recover relational, geometric, and operational structure from historical artifacts while strictly separating three independent streams:

- **S1** — Artifact-forced structure  
- **S2** — Authorial annotation (labels + text)  
- **S3** — Contemporary translation  

No stream may be rewritten as another.

## Type Declarations

| Type              | Symbol |
|-------------------|--------|
| Artifact          | `A`    |
| Geometry          | `G`    |
| Distinction       | `D`    |
| Relation          | `R`    |
| Hierarchy         | `H`    |
| Transformation    | `T`    |
| Invariant         | `I`    |
| Label             | `L`    |
| Semantics         | `Sem`  |
| Modern Concept    | `M`    |
| Formal Operator   | `Op`   |
| Formal System     | `FS`   |

**Layers**: `L0` \| `L1` \| `L2` \| `L3` \| `L4` \| `L5`

## Layer Definitions

| Layer | Name                      | Description |
|-------|---------------------------|-------------|
| **L0** | Observed Artifact         | Raw marks, lines, curves, symbols as given |
| **L1** | Forced Structure          | Features entailed by the geometry alone (closure, boundary, interior/exterior, connectivity, cardinality, symmetry, nesting, adjacency) |
| **L2** | Authorial Annotation      | Original labels, names, captions, textual commentary attached as metadata to L1 features (never rewritten as modern operators) |
| **L3** | Relational Invariants     | Properties preserved under the transformations the artifact itself encodes |
| **L4** | Contemporary Translation  | Modern descriptive vocabulary that matches L1/L3 without claiming historical presence |
| **L5** | Formal Operator / System  | Explicit formalization (graph, closure operator, relational algebra, ordered set, etc.) that reproduces the invariants |

## Pipeline

Strict sequential order:

```
A → G → D, R, H → T → I → Op, FS
```

- `A` → `G` — extract pure geometry  
- `G` → `D, R, H` — distinctions, relations, hierarchy  
- `G` → `T` — transformations / processes encoded  
- `(G, T)` → `I` — invariants under those transformations  
- `I` → `Op, FS` — formal reconstruction  

### Parallel streams (never mixed)

**Authorial annotation stream**
```
A → L → Sem
```

**Contemporary translation stream**
```
Researcher → M → (L4 → L5)
```

## Variables

| Variable   | Meaning |
|------------|---------|
| `A`        | Given artifact |
| `G(A)`     | Geometric skeleton of `A` |
| `D(G)`     | Set of distinctions forced by `G` |
| `R(G)`     | Set of relations forced by `G` |
| `H(G)`     | Hierarchy / partial order forced by `G` |
| `T(G)`     | Transformations encoded by `G` |
| `I(G,T)`   | Invariants of `G` under `T` |
| `L(A)`     | Authorial labels attached to features of `A` |
| `Sem(L)`   | Semantics claimed by original author |
| `M`        | Modern concepts supplied by researcher |
| `Op(I)`    | Formal operator reproducing invariant `I` |
| `FS`       | Formal system assembled from `Op`s |

## Fundamentals / Guardrails

1. **Separation axiom**  
   L1 features are determined solely by geometry.  
   L2 labels annotate L1; they do not generate it.  
   L4/L5 may describe L1/L3; they do not replace L2.

2. **No upward migration**  
   A claim belonging to L5 may not be asserted as L2.  
   “The author used a closure operator” is forbidden unless the artifact itself contains that operator.

3. **Invariant preservation**  
   An operator `Op` is admissible only if it leaves every invariant `I` of the artifact unchanged.

4. **Cardinality and connectivity are primary**  
   Counts, adjacencies, nesting depths, and symmetry groups are recorded before any semantic reading.

5. **Text is operational metadata**  
   Accompanying text is treated as a surviving manual for the mechanism, not as proof of metaphysics.

6. **Reconstruction criterion**  
   The formal system `FS` is successful when it reproduces the observed operations and constraints of the artifact, independent of original vocabulary.

## Minimal Example Skeleton (circle)

| Layer | Content |
|-------|---------|
| **L0** | `○` |
| **L1** | Closed curve, interior, boundary, exterior |
| **L2** | “God” \| “Unity” \| “Perfection” \| (none) |
| **L3** | Closure, containment, self-bounded domain |
| **L4** | Closed relational domain |
| **L5** | `C(X)` where `C` is a closure operator (idempotent, extensive, monotone) |

## Output of a Complete Analysis

- L1 structural inventory  
- L2 label inventory (attached to specific L1 features)  
- L3 invariant list  
- L5 formal system that preserves L3  
- Explicit statement of what was **not** claimed  

---

*End of specification*

## Appendix A: Topological Invariants

Many historical artifacts preserve structure not through metric measurements but through topology. Distances, angles, proportions, and artistic style may vary while connectivity, enclosure, adjacency, hierarchy, or nesting remain unchanged.

The purpose of topological analysis is to identify structural features that survive deformation.

### Topological Extraction Pipeline

```
Artifact
    ↓
Geometric Skeleton
    ↓
Topological Features
    ↓
Invariant Set
    ↓
Formal Reconstruction
```

### Common Topological Invariants

| Invariant              | Description                              |
|------------------------|------------------------------------------|
| Connectedness          | Which regions remain linked              |
| Components             | Number of disconnected regions           |
| Boundary Count         | Number of enclosing boundaries           |
| Nesting Depth          | Number of containment levels             |
| Adjacency Structure    | Which regions touch                      |
| Branching Factor       | Number of child nodes from a node        |
| Cycles                 | Presence of loops                        |
| Paths                  | Reachable routes through the structure   |
| Symmetry Class         | Preserved symmetry relations             |
| Separation Structure   | Distinct regions induced by boundaries   |

### Topological Principle

If two artifacts preserve the same relational and topological invariants, they may represent the same conceptual mechanism despite differences in artistic style, scale, or symbolism.

#### Example: Concentric Circle Artifact

Layer L1 gives:
- Interior
- Boundary
- Exterior

**Topological invariants:**
- 1 connected boundary
- 2 regions
- 1 containment relation

**Modern reconstruction:**
- Containment topology  
  or  
- Nested partially ordered system

The labels attached to the circles do not alter these invariants.

---

## Appendix B: Mathematical Semiotics

Mathematical semiotics studies symbols as carriers of formal structure. It does not ask whether a symbol is true. It asks: *What structure does the symbol encode?*

### Semiotic Decomposition

Every symbol contains three distinct aspects:

```
Symbol
    ↓
Structure
    ↓
Meaning
```

Formally:

$$
\text{Sign} = (\text{Form}, \text{Relation}, \text{Meaning})
$$

where:
- **Form** = visible artifact
- **Relation** = encoded structure
- **Meaning** = interpretation supplied

### Semiotic Analysis Pipeline

```
Artifact
    ↓
Sign Inventory
    ↓
Structural Relations
    ↓
Invariant Meaning Classes
    ↓
Formal Operators
```

### Semiotic Layers

- **L0** — What is present?
- **L1** — What relations are forced?
- **L2** — What did the author say it means?
- **L3** — What remains invariant under reinterpretation?
- **L4** — How can it be translated today?
- **L5** — What formal structure reproduces it?

### Symbol Reuse Principle

A symbol may carry different meanings while preserving identical structure.

#### Example

○

May be labeled:
- God
- Universe
- State Space
- System Boundary
- Cell
- Atom

Yet the following structural features remain:
- closure
- containment
- boundary
- inside/outside distinction

The meanings change.  
The structural grammar does not.

### Semiotic Conservation Principle

Meaning may vary.  
Structure must be preserved.

A successful reconstruction maps symbols to modern operators while maintaining every invariant relation present in the original artifact.

## Appendix C: Invariant Hierarchy

Not all invariants have the same stability.  
Some disappear under deformation.  
Others survive reinterpretation across cultures.  

A complete analysis should classify invariants by persistence.

### Invariant Hierarchy

| Level | Type          | Preserved Under              |
|-------|---------------|------------------------------|
| I0    | Geometric     | Exact measurement            |
| I1    | Topological   | Continuous deformation       |
| I2    | Relational    | Relabeling                   |
| I3    | Semiotic      | Translation of meaning       |
| I4    | Operational   | Change of notation           |
| I5    | Conceptual    | Cultural reinterpretation    |

#### Example: Circle

○

**I0 Geometric**  
- radius  
- diameter  
- circumference  

**I1 Topological**  
- single boundary  
- interior  
- exterior  

**I2 Relational**  
- containment  
- closure  

**I3 Semiotic**  
Appears as:  
- God  
- Universe  
- Cell  
- Atom  
- State Space  

while preserving:  
- bounded whole  

**I4 Operational**  
May function as:  
- system boundary  
- closure operator  
- domain marker  

**I5 Conceptual**  
General concept:  
- unity through enclosure  

---

## Appendix D: Comparative Artifact Analysis

One of the strongest consequences of Mathematical Archaeology is the ability to compare artifacts that have no historical connection.

### Comparison Pipeline

```
Artifact A
    ↓
Invariant Extraction
    ↓
Invariant Set I_A

Artifact B
    ↓
Invariant Extraction
    ↓
Invariant Set I_B

Compare:
I_A ↔ I_B
```

### Structural Equivalence Principle

Two artifacts are structurally equivalent when:

$$
I_A \cong I_B
$$

even when:
- labels differ  
- languages differ  
- cultures differ  
- interpretations differ  

#### Example

**Artifact A**  
Medieval cosmological wheel  

**Artifact B**  
Modern systems architecture diagram  

**Possible shared invariants:**
- center  
- boundary  
- nested layers  
- hierarchy  
- information flow  

The imagery differs.  
The relational machinery may not.

---

## Appendix E: Semiotic Morphisms

A particularly powerful extension is to treat translation itself as an operator.

Define:

$$
\mu : \text{Sem}_1 \to \text{Sem}_2
$$

where:
- $\text{Sem}_1$ = historical meaning space  
- $\text{Sem}_2$ = modern meaning space  

The requirement is:

$$
\mu(I) = I
$$

for all invariant structures.

**Interpretation:**  
Meaning may change provided structural invariants remain preserved.

This formalizes the guiding principle already implicit in Mathematical Archaeology:

> Do not preserve vocabulary.  
> Preserve structure.
