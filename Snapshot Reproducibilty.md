# Snapshot Reproducibility — Domain Framework
If two parties hold faithful mirrors of the same pinned snapshot 𝑆, and they apply the same canonical derivation 𝐹, to the same published coordinates 𝑎, then they will derive the same 256‑bit public state 𝑦, even though their private operands are invisible to 𝐹 and they never communicate.

Reproducibility: (𝑆,𝑎)↦𝑦 is identical for all honest mirrors of 𝑆

and, 

Amplification of representation ≠ amplification of entropy.

## 🧩 **Substrate & Snapshot (Mechanical Layer)**

- **Pinned Snapshot** — A frozen, versioned corpus mirrored identically across parties.  
- **Faithful Mirror** — A replica of the snapshot with byte‑level fidelity.  
- **Open Substrate** — A generic, content‑rich dataset with no declared semantics.  
- **Closed Substrate** — A domain‑specific dataset whose semantics depend on contextual particulars.  
- **Coordinate** — A public address selecting a region or element of the snapshot.  
- **Canonical Derivation** — A deterministic function applied identically by all parties.  
- **Public State** — The 256‑bit digest produced by the derivation.  
- **Private Operand** — Local data ignored by the derivation to preserve reproducibility.  
- **Mechanical Correctness** — Correctness of the derivation process independent of meaning.

**Reproducibility:**

$$(S, a) \mapsto y$$  

is identical for all honest mirrors of $S$.

> **Amplification of representation ≠ amplification of entropy.**

---

## 🧩 **Protocol Property**

- **Protocol Correctness** — The protocol’s internal consistency.  
- **Privacy Correctness** — Zero‑knowledge’s guarantee that private operands remain hidden.  
- **Mechanical Determinism** — The guarantee that all honest mirrors compute the same output.  
- **Semantic Blindness** — The protocol’s inability to verify meaning.  
- **Semantic Independence** — The fact that semantics are external to the protocol.

Each party may have private operands $p_A, p_B$, but:

$$
F(S, a) \text{ ignores } p_A, p_B.
$$

---

## 🧩 **Trust Ordering**

- **Primary Trust Layer** — Trust in semantics; must be established first.  
- **Secondary Trust Layer** — Trust in the snapshot; only meaningful after semantics.  
- **Tertiary Trust Layer** — Trust in reproducibility; only meaningful after snapshot trust.  
- **Trust Inversion** — The error of trusting the snapshot before trusting the semantics.  
- **Semantic Precedence** — The principle that meaning must be verified before mechanics.

> **The protocol remains sound and zero‑knowledge,  
> but the meaning of the substrate remains unverified.**

- **Reproducibility → mechanical correctness**  
- **Zero‑knowledge → privacy correctness**  
- **Soundness → protocol correctness**  
- **None → semantic correctness**

---

## 🧩 **Semantic Layer (Meaning & Grounding)**

- **Semantic Substrate** — The intended meaning encoded in the dataset.  
- **Semantic Grounding** — The explicit declaration of how elements of the substrate map to meaning.  
- **Semantic Validity** — Whether the substrate’s meaning corresponds to the intended domain truth.  
- **Closed Semantics** — Semantics whose validity depends on instance‑specific particulars.  
- **Open Semantics** — Semantics that can be generalized without loss.  
- **Semantic Trust** — Trust in the correctness of the meaning, not the mechanics.  
- **Semantic Opacity** — The condition where meaning is hidden or undeclared.  
- **Semantic Irrecoverability** — The fact that meaning cannot be reconstructed from a digest.

---

## 🧩 **Failure‑Modes**

- **Semantic Gap** — The difference between mechanical correctness and semantic correctness.  
- **Substrate Ambiguity** — When the meaning of the snapshot is not declared.  
- **Meaningless Reproducibility** — When reproducibility is achieved but meaning is unverified.  
- **Obfuscated Semantics** — Semantics hidden behind a digest or derivation.  
- **Semantic Non‑Cloneability** — The impossibility of cloning closed semantics into an open substrate.  
- **Semantic Non‑Transportability** — The impossibility of transporting meaning through a hash.  
- **Semantic Non‑Reproducibility** — The fact that meaning cannot be reproduced mechanically.
