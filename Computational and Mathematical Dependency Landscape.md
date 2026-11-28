# **Computational and Mathematical Dependency Landscape**

## Executive Summary

Not all mathematical breakthroughs have equal consequences. Some results would be intellectually profound yet have limited immediate practical impact. Others would undermine assumptions that support modern computing, cryptography, finance, and digital infrastructure. The structure below organizes major conjectures, hardness assumptions, and cryptographic primitives according to their dependency relationships, along with an assessment of current evidence and confidence. The folling dependency graph suggests three distinct categories:

### Foundational
ZFC → PA → Complexity Theory

### Infrastructural
One-Way Functions  
→ Public-Key Crypto  
→ Post-Quantum Crypto  
→ Internet Trust  
→ Finance

### Scientific
ETH  
→ Optimization  
→ Physics  
→ Chemistry  
→ Engineering

The most economically important assumptions are not the scientific problems. They are the comparatively mundane hardness assumptions sitting in the middle of the graph. Those assumptions quietly support nearly every secure digital interaction on Earth. When viewed as a dependency network, complexity theory and cryptographic hardness occupy a far more central position in modern civilization than most famous mathematical conjectures.

## Dependency Graph

```text
MATHEMATICAL CONSISTENCY
│
├── ZFC Consistency
└── PA Consistency
     │
     ▼
COMPUTATIONAL COMPLEXITY
│
├── P ≠ NP
├── Existence of One-Way Functions
├── ETH / SETH
└── Randomness Assumptions
     │
     ▼
CRYPTOGRAPHIC HARDNESS
│
├── Integer Factorization
├── Discrete Logarithms
├── Lattice Problems
├── Coding-Theory Problems
└── Multivariate Systems
     │
     ▼
CRYPTOGRAPHIC PRIMITIVES
│
├── RSA
├── ECC
├── Diffie-Hellman
├── ML-KEM
├── ML-DSA
├── Falcon
├── HQC
├── AES
├── SHA-2
├── SHA-3
└── ChaCha20
     │
     ▼
CRYPTOGRAPHIC PROTOCOLS
│
├── TLS
├── PKI
├── VPNs
├── Digital Signatures
├── ZK Proofs
├── Homomorphic Encryption
└── Blockchain Systems
     │
     ▼
DIGITAL INFRASTRUCTURE
│
├── Internet Trust
├── Software Distribution
├── Cloud Computing
├── Financial Networks
└── Digital Identity
     │
     ▼
ECONOMIC & SOCIAL SYSTEMS
│
├── Banking
├── E-Commerce
├── Government Systems
├── Classified Communications
└── Cryptocurrencies
```

## Tier A: Foundational Consistency

### Core Assumptions
- ZFC ⊬ 0 = 1
- PA ⊬ 0 = 1

### Dependency Impact

Everything that follows depends on these frameworks, either directly or indirectly. A proof of inconsistency would not merely invalidate individual theorems. It would call into question the reliability of the formal reasoning used throughout modern mathematics.

### Evidence

Extremely strong.

- More than a century of mathematical development.
- No contradiction discovered despite intense scrutiny.
- Large portions of mathematics formalized and machine-verified.

### Confidence
- Consistency of ZFC: Very High
- Consistency of PA: Extremely High
- Risk of Failure: Negligible

### Practical Consequence if False
**Severity:** Existential to mathematics

## Tier B: Computational Complexity

### Core Assumptions
- P ≠ NP
- NP-complete problems remain hard
- One-way functions exist
- ETH and related hypotheses hold

### Dependency Impact

Complexity theory underpins virtually every hardness assumption used in cryptography.

The logical flow is:

```text
Hard problems exist
        ↓
One-way functions exist
        ↓
Modern cryptography exists
```

### Evidence

Strong but not definitive.

- Fifty years of unsuccessful attacks.
- Massive empirical evidence.
- Large theoretical ecosystem built around hardness.

### Confidence
- P ≠ NP: High
- OWF Exist: High
- ETH: Moderate-High
- SETH: Moderate

### Practical Consequence if False
**Severity:** Civilization-level

If SAT enters P with practical algorithms:

- Optimization → transformed
- Automated design → transformed
- Proof search → transformed
- Cryptography → threatened

## Tier C: Classical Public-Key Hardness

### Core Assumptions

**Factoring**  
$N = pq$  
Difficulty of recovering $p$ and $q$.

**ECC Discrete Log**  
$Q = kP$  
Difficulty of recovering $k$.

**Finite-Field DLP**  
$g^x \equiv h \pmod{p}$  
Difficulty of recovering $x$.

### Evidence

Very strong empirical evidence.

Decades of:

- Academic attacks
- Government attacks
- Industrial attacks
- Distributed computing efforts

have failed to produce polynomial-time classical algorithms.

### Confidence
- Factoring Hardness: High
- ECC DLP Hardness: High
- Finite-Field DLP Hardness: High

### Consequence if Broken
- RSA → broken
- ECC → broken
- DH → broken
- TLS PKI → replaced

**Severity:** Major

There is already a migration path.

## Tier D: Post-Quantum Hardness

### Core Assumptions

**LWE**  
$b = As + e \pmod{q}$

**SIS**  
$Az = 0 \pmod{q}$

**NTRU**  
$h = g/f \pmod{q}$

**Syndrome Decoding**  
$H^\top x = s$

### Evidence

Moderate-to-strong.

Unlike factoring, these assumptions have only a few decades of cryptanalytic history.

However:

- No practical attacks known.
- Connections to worst-case lattice problems.
- Extensive international review through the NIST PQC process.

### Confidence
- LWE / Module-LWE: Moderate-High
- SIS: Moderate-High
- NTRU: Moderate
- Code-Based: Moderate-High

### Consequence if Broken
- ML-KEM → broken
- ML-DSA → broken
- Falcon → broken
- HQC → broken

**Severity:** Critical

This removes the primary replacement systems intended to survive large-scale quantum computing.

## Tier E: Symmetric Cryptography

### Core Assumptions

**AES**  
$(m, c) \to k$  
computationally infeasible.

**Hash Preimage**  
$H(x) = y$  
inversion infeasible.

**Hash Collision**  
$H(x) = H(x')$  
rare to find.

**PRNG Security**  
Predict future state impossible.

### Evidence

Among the strongest in cryptography.

AES and SHA families have received extraordinary scrutiny.

### Confidence
- AES-256: Very High
- SHA-256: Very High
- SHA-3: Very High
- ChaCha20: Very High

### Consequence if Broken
- Encryption fails
- Authentication fails
- Passwords fail
- Randomness fails

**Severity:** Catastrophic

This is substantially worse than RSA failure.

## Tier F: Protocol Security

### Core Assumptions

**SNARK Soundness**  
$V(x, \pi) = 1$  
only for true statements.

**Pairing Security**  
$e(P, Q)^{ab}$  
remains hard.

**Homomorphic Security**  
$\mathrm{Enc}(m) \to m$  
remains infeasible.

### Evidence

Varies by protocol family.

Generally weaker than the evidence for AES but stronger than many open mathematical conjectures.

### Confidence
- TLS Security: Very High
- Modern ZK Systems: Moderate-High
- FHE Security: Moderate

### Consequence if Broken
- Digital trust collapses
- Blockchain ecosystems collapse
- Privacy systems fail

## Tier G: Accelerated Computation

These are not generally threats. They are opportunities.

### Examples

**ETH Refutation**  
$T_{3\mathrm{SAT}}(n) = 2^{o(n)}$

**Faster Matrix Multiplication**  
$\omega \downarrow$

**Strong Derandomization**  
$\mathrm{P} = \mathrm{BPP}$

### Evidence

Mixed.

Many experts expect at least some major algorithmic surprises in coming decades.

### Confidence
- Current Bounds Stable: Moderate
- Major Improvement Exists: Moderate

### Consequence
- Optimization improves
- AI improves
- Simulation improves
- Science accelerates

## Tier H: Scientific Grand Challenges

### Examples
- Spin glasses
- Quantum chemistry
- Fermionic systems
- Hubbard model
- Mixing times
- Strongly polynomial LP

These are often bottlenecks to practical advances.

### Consequence

Potential acceleration of:

- Energy
- Materials
- Pharmaceuticals
- Manufacturing

**Severity:** Positive disruption

## Tier I: Millennium and Famous Conjectures

### Examples
- Riemann Hypothesis
- BSD
- Yang–Mills
- Navier–Stokes
- Hodge

### Evidence Snapshot
- RH: Strong numerical evidence
- BSD: Strong experimental evidence
- Yang-Mills: Physically motivated
- Navier-Stokes: Unknown
- Hodge: Partial results only

### Practical Consequence

Usually indirect.

Most effects occur through:

- new techniques
- new theories
- new mathematical tools

rather than immediate technological disruption.

## Closing Summary
The dependency graph highlights an asymmetry between mathematical fame and practical importance. Many celebrated open problems occupy the outer branches of the mathematical landscape. By contrast, the assumptions that quietly support modern civilization are often less famous: computational hardness, one-way functions, and the cryptographic primitives built upon them. In practical terms, a breakthrough affecting these intermediate assumptions would likely have far greater economic and technological consequences than the resolution of most classical conjectures. The center of the graph is not where the most famous mathematics lives; it is where modern civilization is anchored.

## Appendix: Mathematical Foundations and Reference Equations

### Dependency Convention

Throughout this appendix,

$$
A \to B
$$

means that the validity or hardness assumption $A$ supports the security, complexity, or truth of $B$, and

$$
A \nrightarrow B
$$

indicates that no known direct implication exists.

### Foundational Consistency

#### ZFC Consistency

$$
\mathrm{ZFC} \nvdash 0 = 1
$$

**Type:** Axiomatic set theory  

**Variables:**  
- $0, 1$: Distinguished numerals  
- $\nvdash$: Not derivable  

**Fundamental:** A contradiction must not be derivable from the ZFC axioms.

**Derivation chain:** 
```
ZFC  
↓  
Modern mathematics  
↓  
Complexity theory  
↓  
Cryptography  
```

**Dependencies:**  
Supports Peano arithmetic consistency, P versus NP, SAT, and all later results.

**Confidence:** Extremely high

#### Peano Arithmetic Consistency

$$
\mathrm{PA} \nvdash 0 = 1
$$

**Type:** Arithmetic logic  

**Variables:**  
- $\mathrm{PA}$: Peano arithmetic  

**Fundamental:** Arithmetic itself remains non-contradictory.

**Derivation:**  
```
PA  
↓  
Natural numbers  
↓  
Number theory  
↓  
Factorization  
↓  
RSA  
```

**Depends on:** ZFC consistency

### Computational Complexity

#### P versus NP

$$
\mathrm{P} \neq \mathrm{NP}
$$

**Type:** Complexity classes  

**Variables:**  
- $\mathrm{P}$: Deterministic polynomial time  
- $\mathrm{NP}$: Polynomial-time verification  

**Fundamental:** Efficient verification does not imply an efficient solution.

**Equivalent view:** $\mathrm{SAT} \notin \mathrm{P}$ under standard reductions.

**Derivation path:**  
```
SAT  
↓  
NP-complete problems  
↓  
Search hardness  
↓  
One-way functions (candidate)  
↓  
Modern cryptography  
```

**Confidence:** High  

**Evidence:**  
- 50+ years of failed attacks  
- Thousands of reductions  

#### SAT

$$
\mathrm{SAT}(\varphi) = 1 \quad\text{iff}\quad \exists x : \varphi(x) = \mathrm{True}
$$

**Type:** Boolean logic  

**Variables:**  
- $\varphi$: Boolean formula  
- $x$: Assignment  

**Derivation:** Cook–Levin  
```
NP  
↓  
SAT  
↓  
Every NP-complete problem  
```

**References:** P versus NP

#### Exponential Time Hypothesis

$$
T_{3\mathrm{SAT}}(n) = 2^{\Omega(n)}
$$

**Type:** Fine-grained complexity  

**Variables:**  
- $T_{3\mathrm{SAT}}$: Running time  
- $n$: Number of variables  

**Interpretation:** No subexponential algorithm exists for 3-SAT.

**Implications:**  
ETH  
↓  
SETH  
↓  
Hardness of many optimization problems  

#### One-Way Functions

**Forward direction:**  

$$
y = f(x)
$$

**Inverse problem:**  

$$
x = f^{-1}(y)
$$

**Type:** Complexity-theoretic primitive  

**Variables:**  
- $x$: Secret input  
- $y$: Public output  

**Properties:**  
- Forward: $\mathrm{poly}(n)$  
- Inverse: $\mathrm{superpoly}(n)$  

**Dependency graph:**  
```
OWF  
↓  
Hashes  
↓  
Digital signatures  
↓  
Public-key cryptography  
```

**References:** P versus NP

### Integer Factorization

#### Factorization

$$
N = pq
$$

**Type:** Algebraic number theory  

**Variables:**  
- $p, q$: Large primes  
- $N$: Public modulus  

**Factorization problem:** Given $N$, recover $(p, q)$.

**Derivation:** RSA begins from  

$$
\varphi(N) = (p-1)(q-1)
$$  

Without the factors, $\varphi(N)$ is unknown. Hence the private exponent  

$$
d \equiv e^{-1} \pmod{\varphi(N)}
$$  

cannot be efficiently computed.

**Dependency chain:**  
```
Factorization  
↓  
RSA  
↓  
PKI  
↓  
TLS  
```

#### Shor’s Algorithm

**Period relation:**  

$$
a^r \equiv 1 \pmod{N}
$$

**Factor extraction:**  

$$
\gcd(a^{r/2}-1, N)
$$

**Type:** Quantum algorithms  

**Derivation:**  
```
Period finding  
↓  
Factoring  
↓  
RSA break  
```

### Discrete Logarithms

#### Discrete Logarithm

$$
g^x \equiv h \pmod{p}
$$

**Type:** Finite-field group theory  

**Variables:**  
- $g$: Generator  
- $x$: Secret exponent  
- $h$: Public value  
- $p$: Prime  

**Forward:**  

$$
h = g^x
$$

**Inverse:**  

$$
x = \log_g(h)
$$

**Hard problem:** Recover $x$ from $(g, h)$.

#### Elliptic-Curve Discrete Logarithm

$$
Q = kP
$$

**Type:** Elliptic-curve groups  

**Variables:**  
- $P$: Generator point  
- $Q$: Public point  
- $k$: Secret scalar  

**Expansion:**  

$$
Q = \underbrace{P + P + \cdots + P}_{k\text{ times}}
$$

**Inverse problem:**  

$$
k = \log_P(Q)
$$

**Dependency:**  
```
ECDLP  
↓  
ECC  
↓  
TLS  
↓  
Cryptocurrency wallets  
```

### Lattice Cryptography

#### Learning With Errors

$$
\mathbf{b} = A\mathbf{s} + \mathbf{e} \pmod{q}
$$

**Type:** Lattice hardness  

**Variables:**  
- $A$: Public matrix  
- $\mathbf{s}$: Secret vector  
- $\mathbf{e}$: Noise vector  
- $\mathbf{b}$: Observation  

**Expansion:** Without noise,  

$$
\mathbf{b} = A\mathbf{s}
$$  

is easily solved. Adding the noise vector $\mathbf{e}$ produces  

$$
\mathbf{b} = A\mathbf{s} + \mathbf{e}
$$  

and makes recovery difficult.

**Reduction chain:**  
```
Worst-case lattice problems  
↓  
LWE  
↓  
Module-LWE  
↓  
ML-KEM  
```

#### Short Integer Solution

$$
A\mathbf{z} = \mathbf{0} \pmod{q}
$$

subject to

$$
0 < \|\mathbf{z}\| \leq \beta
$$

**Type:** Lattice geometry  

**Derivation:** The trivial solution $\mathbf{z} = \mathbf{0}$ is forbidden. The search target is a small, nonzero $\mathbf{z}$ satisfying the modular equation.

**Applications:** Signatures, commitments, zero-knowledge systems.

#### Shortest Vector Problem

$$
\lambda_1(L) = \min_{\mathbf{v} \neq \mathbf{0}} \|\mathbf{v}\|
$$

**Type:** Geometry of numbers  

**Variables:**  
- $L$: Lattice  
- $\mathbf{v}$: Lattice vector  

**Interpretation:** Find the first successive minimum.

**Dependency:**  
```
SVP  
↓  
Approx-SVP  
↓  
LWE security arguments  
```

### Hash Functions

#### Preimage Resistance

$$
H(x) = y
$$

**Type:** Cryptographic hash  

**Inverse problem:** Given $y$, find $x$.

**Difficulty:** Approximately $2^n$ operations for an $n$-bit hash.

#### Collision Resistance

$$
H(x) = H(x') \quad\text{with}\quad x \neq x'
$$

**Expected complexity:** Approximately $2^{n/2}$ via birthday bounds.

**References:** One-way functions

### Zero-Knowledge Systems

#### Verifier Acceptance

$$
V(x, \pi) = 1
$$

**Type:** Proof systems  

**Soundness failure:**  

$$
V(x, \pi) = 1 \quad\text{while}\quad x \notin L
$$

**Variables:**  
- $V$: Verifier  
- $\pi$: Proof  
- $L$: Language  

**Dependency:**  
```
LWE  
↓  
Polynomial commitments  
↓  
SNARKs  
```

### Statistical Physics

#### Partition Function

$$
Z(\beta) = \sum_s \exp(-\beta H(s))
$$

**Type:** Statistical mechanics  

**Variables:**  
- $\beta$: Inverse temperature  
- $H$: Energy  
- $s$: State  

**Derived probability:**  

$$
P(s) = \frac{\exp(-\beta H(s))}{Z(\beta)}
$$

**Fundamental:** Every equilibrium expectation derives from $Z(\beta)$.

#### Ground-State Energy

$$
E_0 = \lambda_{\min}(H)
$$

**Type:** Quantum mechanics  

**Expansion:**  

$$
H\mathbf{v} = \lambda\mathbf{v}
$$

The smallest eigenvalue yields $E_0$.

### Millennium Problems

#### Riemann Hypothesis

$$
\zeta(s) = 0 \implies {Re}(s) = \tfrac{1}{2}
$$

**Type:** Analytic number theory  

**Variables:** $s = \sigma + it$

**Expansion:**  

$$
\zeta(s) = \sum_{n=1}^\infty \frac{1}{n^s}
$$  

for ${Re}(s) > 1$, and analytically continued elsewhere.

**Critical strip:** $0 < {Re}(s) < 1$  
**Critical line:** ${Re}(s) = \tfrac{1}{2}$

**Claim:** All nontrivial zeros lie on the critical line.

#### Birch–Swinnerton-Dyer

$$
{ord}_{s=1} L(E, s) = {rank}(E(\mathbb{Q}))
$$

**Type:** Arithmetic geometry  

**Interpretation:** The analytic behavior of $L(E, s)$ encodes the number of independent rational points on $E$.

#### Navier–Stokes

$$
\frac{\partial\mathbf{u}}{\partial t} + (\mathbf{u}\cdot\nabla)\mathbf{u} = -\nabla p + \nu\Delta\mathbf{u}
$$

**Type:** Fluid dynamics  

**Term-by-term:**  
- $\partial\mathbf{u}/\partial t$: Local acceleration  
- $(\mathbf{u}\cdot\nabla)\mathbf{u}$: Convective acceleration  
- $-\nabla p$: Pressure force  
- $\nu\Delta\mathbf{u}$: Viscous diffusion  

#### Yang–Mills Mass Gap

$$
\Delta_{\mathrm{YM}} > 0
$$

**Type:** Quantum field theory  

**Interpretation:**  

$$
\text{Energy(first excitation)} - \text{Energy(vacuum)} = \Delta_{\mathrm{YM}}
$$  

must be strictly positive.

## Appendix: Confidence Spectrum

```text
EXTREMELY HIGH
│
├─ Arithmetic consistency
├─ AES security
├─ SHA-2 security
├─ SHA-3 security
│
HIGH
│
├─ P ≠ NP
├─ OWF existence
├─ Factoring hardness
├─ ECC hardness
│
MODERATE-HIGH
│
├─ ETH
├─ LWE
├─ SIS
├─ Code-based assumptions
│
MODERATE
│
├─ NTRU
├─ FHE assumptions
├─ Various ZK assumptions
│
LOW CERTAINTY
│
├─ RH
├─ BSD
├─ Navier-Stokes
└─ Hodge
```
