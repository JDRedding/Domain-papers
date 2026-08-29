# Snapshot Reproducibilty 

If two parties hold faithful mirrors of the same pinned snapshot 𝑆, and they apply the same canonical derivation 𝐹, to the same published coordinates 𝑎, then they will derive the same 256‑bit public state 𝑦, even though their private operands are invisible to 𝐹 and they never communicate.

Reproducibility: (𝑆,𝑎)↦𝑦 is identical for all honest mirrors of 𝑆

and, 

Amplification of representation ≠ amplification of entropy.

Each party may have a private operand:

𝑝_𝐴, 𝑝_𝐵

But the canonical derivation is defined so that:

𝐹(𝑆,𝑎) ignores 𝑝_𝐴, 𝑝_𝐵

The protocol remains sound and zero‑knowledge,
but the meaning of the substrate remains unverified.
