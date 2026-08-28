# Sigma protocol
Σ-protocols are interactive proofs of knowledge with well-defined zero-knowledge and soundness guarantees, forming the foundation for modern cryptographic primitives and efficient non-interactive proof systems. A Σ‑protocol is just a conversation where the prover sends a random number, gets a question number, and replies with an answer number that proves they know the secret number without revealing it, unless they answer two different questions for the same random number. A Σ‑protocol proves knowledge of a secret witness without revealing it, relying entirely on the correctness of the formal relation it is built on.

## 1. 📚 Definition and Structure
   
A Σ-protocol (Sigma protocol) is a three-move interactive zero-knowledge proof system designed to allow a prover P to convince a verifier V that they know a secret witness w corresponding to a public statement x within a binary relation R⊆X×Y, without revealing the witness. Formally, if (x,w)∈R, P can prove knowledge of w linked to x. The protocol consists of the following steps:

Commitment t: The prover sends a commitment to the verifier.
Challenge c: The verifier sends a random challenge from a finite challenge space C.
Response z: The prover computes a response based on t, c, and their secret w.
The verifier then checks whether (t,c,z) satisfies the verification equation corresponding to the relation R.

These protocols are typically public-coin: the verifier’s challenge is randomly chosen and independently communicated to the prover.

## 2. 🔐 Security Properties
   
Completeness: If the prover and verifier follow the protocol honestly, the verifier always accepts:

    ∀(x,w)∈R,Pr[V accepts P(x,w)]=1

Special Honest-Verifier Zero-Knowledge (HVZK): There exists an efficient simulator that, given x and a challenge c, can produce a transcript (t,c,z) indistinguishable from a real interaction. Essentially, the protocol leaks nothing about w beyond the fact that a valid witness exists.

## 3. Knowledge Soundness
: Given two accepting transcripts with the same commitment but different challenges (t,c,z) and (t,c′,z′) ((c,e,c')), one can efficiently compute the witness w. This property guarantees the proof is actually a proof of knowledge, not just of possibility.

## 4. Examples of Σ-Protocols
   
**Schnorr Identification Protocol**

Proves knowledge of discrete logarithm x such that u=g^x in a cyclic group G of prime order q.

Steps:

1. : P chooses random r∈Z_q , computes commitment t=g^r
2. : V sends a challenge c∈Z_q
3. : P responds with z=r+cx mod q
4. : V verifies: g^z =^? t⋅u^c

**Okamoto Protocol**

Proves knowledge of (x,y) such that u=g^x h^y .

**Chaum-Pedersen Protocol**

Proves knowledge of β satisfying v=g^β and w=u^β  (discrete log equality).

These examples generalize to proving linear relations on group elements and can be extended to arbitrary linear combinations or representations.

## 4. Fiat-Shamir Transformation

Σ-protocols are interactive, which can be a limitation in practice. The Fiat-Shamir heuristic converts a Σ-protocol into a non-interactive zero-knowledge proof (NIZK) by generating the challenge deterministically as a cryptographic hash of the commitment:

    c=H(commitment,context)

This allows public verification without interaction while maintaining zero-knowledge and soundness under random oracle assumptions.

## 5. 🏹 Advanced Extensions
   
**OR-Composition**: Allows proving knowledge of one out of multiple witnesses.
Threshold and Multi-Signatures: Σ-protocols are building blocks in cryptosystems supporting these operations.

**Compressed Σ-Protocols**: Used in constructions like Bulletproofs to achieve logarithmic communication while preserving zero-knowledge proofs of linear or quadratic relations.

**Linear Protocols over Groups and Rings**: Generalized Σ-protocols allow proving knowledge of vectors satisfying linear relations under group homomorphisms or lattice-based commitments.

## 6. Implementation Notes
   
High-quality randomness is crucial for security; leakage can compromise the witness.
Challenge space size C should be sufficiently large to reduce soundness error (1/∣C∣).

Secure deserialization must be enforced for all transmitted group and field elements.
The linearity of many Σ-protocols allows batched verification using multi-scalar multiplication optimizations.

## 7. Applications
    
- Digital identification and authentication
- Confidential payments and e-cash
- Zero-knowledge proofs in cryptocurrencies and confidential blockchain transactions
- Threshold cryptography and multi-party computations
- Anonymous credentials and password-authenticated key exchange

## 8 ⭐ The Reality of the Witness
Interpretation and Formalization

A Σ‑protocol does not prove the secret itself; it proves knowledge of a witness that satisfies a formal relation R. The verifier never learns the witness w, never reconstructs it, and never checks its semantic correctness. Instead, the verifier checks that the prover behaves in a way that is algebraically impossible unless they know some w such that (x,w) in R.

This means the proof is only as “real” as the **formalization of the relation**. If the relation R does not correctly encode the intended statement, then the Σ‑protocol proves knowledge of the wrong witness. The protocol remains sound and zero‑knowledge, but the *meaning* of the proof is incorrect. This mirrors the behavior of formal proof systems, such: the kernel verifies the logic of the formalization, not the intended semantics. A proof is correct only relative to the definitions provided; if the definitions misrepresent the intended concept, the proof is correct but meaningless.

Thus, Σ‑protocols inherit the same foundational limitation as formal logic:  

> The proof is only as meaningful as the correctness of the relation it is built on.

The protocol guarantees knowledge of a witness, but only the *designer* of the relation can guarantee that the witness corresponds to the intended real‑world secret.

## Further References
- Boneh, Shoup, A Graduate Course in Applied Cryptography, 2023
- Cramer, Ronald, Modular Design of Secure yet Practical Cryptographic Protocols, CRYPTO 1997
- Damgård, Ivan, On Sigma-Protocols, 2010
- Attema, T., Cramer, R., Compressed Σ-Protocol Theory, CRYPTO 2020
