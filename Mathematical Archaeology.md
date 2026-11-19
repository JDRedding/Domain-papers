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
