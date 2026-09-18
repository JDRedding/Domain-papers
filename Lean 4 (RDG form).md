# Lean 4 (RDG form)

Lean 4 is treated here not as a named language but as a **generative system**: a relational geometry among *terms*, *types*, and *kernel-validation flux*. Development is led by the Lean FRO. 

It is an open-source functional programming language and interactive theorem prover on dependent type theory (Calculus of Inductive Constructions). Definitions and proofs are terms; a small kernel checks them. Tactics and automation *generate* those terms. A buggy tactic does not break soundness.

Dual role:

- **proof assistant** — formal mathematics and software/hardware verification  
- **programming language** — IO, concurrency, compilation to C, “functional but in-place” mutation of unique values

---

## 1. System Identity (SID)

**SID.Structure**

```
SID: Lean4 :=
  { TermSpace, TypeSpace, Kernel, Elab, Runtime }
```

- `TermSpace` — syntactic constructions  
- `TypeSpace` — dependent types  
- `Kernel` — minimal validator  
- `Elab` — surface syntax → kernel terms  
- `Runtime` — IO, concurrency, mutation of unique values  

```
SID.Structure(Lean4) = DepType ⊗ TermGen ⊗ KernelCheck
```

**SID.Interaction** — term-as-proof

```
Proof : Prop → Term
Kernel : Term → Valid | Reject
```

- propositions are types  
- proofs are inhabiting terms  
- tactics are term-generators  
- kernel is the interaction boundary that enforces correctness  

**SID.Dynamics**

```
Dynamics(Lean4) :=
  ElabFlow ∘ TacticFlow ∘ KernelFlux
```

`KernelFlux` is a bipolar validator: accept or reject term-flows.

---

## 2. PED Mapping (Power–Evaluation–Dynamics)

**PED.Power** — generativity

```
Power(Lean4) :=
  { MacroExtensibility,
    ElabProgrammability,
    TacticSynthesis,
    RuntimeCompilation }
```

That is why Lean is both a proof assistant (term-generation + kernel validation) and a compiled language (runtime + IO + concurrency).

**PED.Evaluation** — kernel

```
Evaluation(Lean4) := KernelCheck(term)
```

Tactics may be noisy; the kernel is the non-fiat ground.

```
TacticError ≠ SoundnessError
```

RDG choice-moderation: generator may fail; boundary operator stays strict.

**PED.Dynamics**

```
Dynamics(Lean4) :=
  TermFlow → ElabFlow → KernelFlux → RuntimeFlow
```

1. **TermFlow** — user syntax  
2. **ElabFlow** — implicits, typeclass search, universe resolution  
3. **KernelFlux** — definitional equality, inductive rules  
4. **RuntimeFlow** — execution, IO, concurrency, unique-value mutation  

---

## 3. What Lean is good at (RDG rewrite)

**Mathlib** — `SID.Structure → PED.Power`

```
Mathlib := Algebra ⊕ Analysis ⊕ Topology ⊕ NumberTheory ⊕ …
```

Research-scale formal mathematics (community library; programming infrastructure and tactics included). Role:

- SID.Structure — landscape of formal mathematics  
- PED.Power — tactics, lemmas, typeclasses  
- PED.Evaluation — kernel correctness  
- SID.Dynamics — term evolution across a large multi-file corpus  

**Verified software** — `PED.Power → PED.Evaluation`

```
Verified(Software) := TermGen ⊗ KernelFlux ⊗ RuntimeCheck
```

Examples in the ecosystem: AWS Cedar policies, Rust verification via Aeneas, SNARK work (ArkLib), distributed protocols (Veil), crypto-related formalization (SymCrypt and related work).

**Extensibility** — `SID.Structure → PED.Power`

```
Extensibility := UserMacros ⊗ MetaM ⊗ CustomElab ⊗ CustomTactics
```

Parser, elaborator, tactics, and pretty-printer are extendable in Lean itself.

**AI + formalization** — `SID.Dynamics → PED.Evaluation`

```
AIProofs → TermFlow → KernelFlux → ValidatedMath
```

Lean is widely used as the checker for machine-generated proofs.

---

## 4. Release 4.34.0 (14 Sep 2026)

**Kernel hardening** — `PED.Evaluation`

```
KernelFlux' := KernelFlux ⊕ HardeningOps
```

Focus: kernel soundness issues found with AI adversarial testing, plus extra defensive checks. The reported kernel routes to `False` required deliberately constructed input; they matter most when checking untrusted proof artifacts, not ordinary self-elaborated development.

**Automation** — `PED.Power`

```
grind, bv_decide, sym-preprocessing
```

`bv_decide` is integrated with `sym` / `grind` interactive modes and ported onto a `SymM` preprocessor (large rewriting-heavy cases reported up to ~6× faster). These are power-boosting generators that still drain into kernel evaluation.

---

## 5. Mental model

**Propositions as types**

```
Prop ≡ Type
Proof(p) : p
```

**Pattern matching as structural decomposition** — SID.Structure acting on TermSpace:

```lean
def add : Nat → Nat → Nat
  | n, 0     => n
  | n, m + 1 => (add n m) + 1

theorem add_zero (n : Nat) : add n 0 = n := rfl

example (x : Nat) : 0 < match x with
  | 0     => 1
  | n + 1 => x + n := by grind
```

**Tactics as generators**

```
Tactic : Goal → TermFlow
```

Common core tactics: `rfl`, `rw`, `simp`, `exact`, `intro`, `cases`, `induction`, `omega`. Mathlib adds `ring`, `linarith`, `norm_num`, and many more.

**Kernel as boundary operator**

```
KernelFlux : TermFlow → {Accept, Reject}
```

Boundary-moderated generativity: generation is free; acceptance is not.

---

## 6. Getting started

```
elan := ToolchainManager(Lean4)
IDE  := Infoview ⊗ GoalState ⊗ TermFlowVisualization
Lake := ProjectGen ⊗ BuildFlow ⊗ CacheFlow
LeanLive := BrowserTermSpace ⊗ KernelFluxRemote
```

1. Install **elan**  
2. **VS Code** + Lean 4 extension (Infoview for goals and messages)  
3. **Lake**  
   - programming: `lake init my-project`  
   - math + Mathlib: `lake new my-project math` then `lake exe cache get`  
4. Live playground: [live.lean-lang.org](https://live.lean-lang.org)

---

## 7. Learning path

| Goal | Resource | RDG mapping |
|---|---|---|
| Logic & type theory | *Theorem Proving in Lean 4* | `SID.Structure(DepType)` |
| Formal math | *Mathematics in Lean* | `SID.Structure(Mathlib) ⊗ PED.Power(Tactics)` |
| Programming | *Functional Programming in Lean* | `RuntimeFlow ⊗ TermGen` |
| Language spec | Lean Language Reference | `SID.Structure(LeanCore)` |
| Community | Lean Zulip | `SID.Interaction(Human ↔ System)` |

---

## 8. Adjacent RDG maps 

**Kernel**  
Small trusted checker: definitional equality, inductives, universes. Everything else is `TermGen` feeding `KernelFlux`.

**Mathlib geometry**  
A high-density operator field: typeclasses as implicit morphisms, lemmas as reusable term constructors, tactics as local generators over that field.

**Metaprogramming**  
`MetaM`, macros, custom elaborators, custom tactics — first-class operators inside `ElabFlow`, still subject to `KernelFlux`.

**Lean vs Coq/Rocq vs Agda** (coarse PED contrast)

- **Lean** — high `PED.Power` (tactics, metaprogramming, runtime) with a small kernel boundary; Mathlib-scale library gravity.  
- **Coq/Rocq** — same CIC family; different elaboration/tactic culture and library geometry (not Mathlib).  
- **Agda** — stronger emphasis on programming-with-dependent-types and interactive term construction; different automation and kernel/runtime mix.

Same SID family (`DepType ⊗ TermGen ⊗ KernelCheck`); different Power/Dynamics profiles.

## External sites 
- [lean-lang.org](https://lean-lang.org/).
- GitHub: [leanprover/lean4](https://github.com/leanprover/lean4)
- [lean-lang.org/install](https://lean-lang.org/install/)
