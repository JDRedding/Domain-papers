# Classification of Finite Simple Groups (CFSG)

**The Classification of Finite Simple Groups (CFSG)** is one of the largest and most consequential achievements in the history of mathematics. It provides a complete classification of all finite simple groups up to isomorphism, showing that every such group belongs to one of a small number of infinite families or to a finite collection of exceptional groups known as the sporadic groups. In effect, the classification serves as a structural "periodic table" for the building blocks of all finite groups.

The CFSG is both a classification theorem and a practical tool that continues to influence research across mathematics. Although work on second-generation proofs and formal verification projects remains ongoing, the classification itself is regarded as established, and the complete list of finite simple groups is a standard component of modern group theory.

## Finite Simple Groups

A **finite simple group** is a nontrivial finite group with no nontrivial proper normal subgroups. These groups play a role in finite group theory analogous to that of prime numbers in arithmetic: every finite group can be decomposed, via a composition series, into simple composition factors.

The **Jordan-Hölder theorem** guarantees that the multiset of composition factors is uniquely determined by the group, even though the manner in which those factors are assembled (the extension problem) is generally far from unique. Because every finite group is built from simple composition factors, the CFSG is foundational throughout finite group theory and its applications.

The classification has been used to:

- Classify finite doubly transitive permutation groups.
- Determine finite subgroups of classical algebraic groups.
- Resolve structural questions concerning groups of Lie type.

Outside group theory, the classification has had significant impact in:

- **Combinatorics and coding theory**, through the Mathieu groups and Golay codes, the Conway groups and the Leech lattice, and other sporadic groups associated with exceptional designs and codes.
- **Graph theory**, particularly in the construction of highly symmetric and expander graphs.
- **Number theory and Galois theory**, including realizations of sporadic groups as Galois groups over the rational numbers.
- **Mathematical physics**, most notably through *Monstrous Moonshine*, which connects the Monster group with modular functions, vertex operator algebras, and string theory.

## Historical Development

The systematic classification of finite simple groups began in earnest during the 1950s. A major milestone was the **Feit-Thompson Odd-Order Theorem** (1963), which proved that every finite group of odd order is solvable. Consequently, every nonabelian finite simple group has even order.

Subsequent work classified groups with dihedral, semidihedral, or wreathed Sylow 2-subgroups and developed increasingly powerful methods of local analysis. During the 1960s and 1970s, a large community of researchers refined techniques for studying the centralizers of elements of prime order, particularly involutions.

In 1972, **Daniel Gorenstein** organized the remaining work into a sixteen-step program. By the early 1980s, the first-generation proof was considered essentially complete, although the quasithin case remained unresolved until the publication of the 1,221-page monograph by **Aschbacher and Smith** in 2004.

The first-generation proof is estimated to occupy between 10,000 and 15,000 journal pages spread across several hundred papers.

Recognizing the difficulty of verifying and applying such an extensive body of work, **Gorenstein, Lyons, and Solomon** initiated a second-generation revision during the 1980s. Their project seeks to produce a self-contained and streamlined proof in a multi-volume series published by the American Mathematical Society. Several volumes have appeared, and the project remains ongoing.

In parallel, large-scale formalization efforts using interactive theorem provers, particularly Lean, are providing machine-checked verification pathways for substantial portions of the classification.

## Outline of the Proof Strategy

Although the complete proof is extraordinarily intricate, its broad structure can be summarized as follows:

- The Feit-Thompson theorem reduces attention to groups of even order.
- One studies the 2-local structure of the group, particularly normalizers of nontrivial 2-subgroups and centralizers of involutions.
- A major dichotomy emerges between groups of characteristic 2-type and groups of odd type (or component type).
- In the odd-type case, signalizer-functor methods and standard-form arguments identify the group as an alternating group, a group of Lie type of odd characteristic, or a sporadic group.
- In the characteristic 2-type case, analysis of the p-local structure for odd primes p reduces the problem to quasithin groups or groups of small 2-local p-rank, which are then classified by highly specialized arguments.

Each of these broad cases divides into numerous subcases, many of which require substantial independent analysis. Several sporadic groups arise precisely as exceptional cases that survive successive reductions.

## Statement of the Classification

The CFSG asserts that every finite simple group is isomorphic to exactly one of the following classes (up to a short list of known accidental isomorphisms between different families).

### 1. Cyclic Groups of Prime Order

These are the groups Z/pZ, where p is prime. They are the only abelian finite simple groups and form the simplest infinite family.

### 2. Alternating Groups A_n for n >= 5

The alternating group A_n consists of all even permutations of n letters. It is simple precisely when n >= 5. These groups form the second infinite family of nonabelian finite simple groups.

### 3. Groups of Lie Type

These groups arise as finite analogues of classical and exceptional Lie groups. They comprise sixteen infinite families and account for the overwhelming majority of all finite simple groups.

They fall into three broad categories:

- **Classical groups**, including PSL_n(q), PSp_2n(q), PSU_n(q), and the finite orthogonal groups.
- **Exceptional groups**, including G_2(q), F_4(q), E_6(q), E_7(q), and E_8(q).
- **Twisted groups**, obtained through field and graph automorphisms of Chevalley groups. These include the Suzuki groups, Ree groups, and the Tits group ^2F_4(2)'.

Here q denotes a prime power. The conditions under which these groups are simple are completely understood.

### 4. The 26 Sporadic Groups

The sporadic groups are the exceptional finite simple groups that do not belong to any infinite family. They include:

- The five Mathieu groups.
- The Janko groups.
- The Conway groups.
- The Fischer groups.
- The Higman-Sims group.
- The McLaughlin group.
- The Held group.
- The Rudvalis group.
- The Suzuki sporadic group.
- The O'Nan group.
- The Harada-Norton group.
- The Lyons group.
- The Thompson group.
- The Baby Monster.
- The Monster group.

The **Monster group** is the largest sporadic simple group, with order

```text
808,017,424,794,512,875,886,459,904,961,710,757,005,754,368,000,000,000
≈ 8 × 10^53
```

Most sporadic groups appear as subquotients of the Monster. The six exceptions are known as the **pariah groups**.

The **Tits group** is sometimes listed as a twenty-seventh sporadic group, although it is more naturally regarded as a twisted group of Lie type.

## Exceptional Isomorphisms

A small number of accidental isomorphisms occur between members of different families. Examples include:

```text
A_5 ≅ PSL_2(4) ≅ PSL_2(5)

A_6 ≅ PSL_2(9)

A_8 ≅ PSL_4(2)
```

Apart from these and a small number of other low-rank coincidences, the groups listed above are pairwise nonisomorphic.

## External articles

- ATLAS of Finite Group Representations
   https://brauer.maths.qmul.ac.uk/Atlas/v3/

   The standard working reference for finite simple groups.
   Contains:
   - Sporadic groups
   - Alternating groups
   - Groups of Lie type
   - Character tables
   - Matrix representations
   - Maximal subgroups
   - Computational data

- AMS Gorenstein-Lyons-Solomon Project
   https://www.ams.org/publications/authors/books/postpub/surv-40

   The official American Mathematical Society page for the
   second-generation revision of the CFSG proof.

   Contains:
   - Published volumes
   - Errata
   - Project updates
   - Supplemental material

- Ron Solomon's Survey Article
   https://www.ams.org/journals/notices/199502/solomon.pdf

   "On Finite Simple Groups and Their Classification"

   One of the best readable introductions written by an
   actual participant in the classification effort.

- MathAtlas Interactive Presentation
   https://mathatlas.app/simple-groups

   Interactive exploration of:
   - Cyclic groups
   - Alternating groups
   - Lie-type groups
   - Sporadic groups
   - Monstrous Moonshine


