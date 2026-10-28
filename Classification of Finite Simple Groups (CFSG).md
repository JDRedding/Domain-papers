# Classification of Finite Simple Groups (CFSG)
**The Classification of Finite Simple Groups (CFSG)** is one of the largest and most consequential achievements in the history of mathematics. It provides a complete, explicit list of every finite simple group up to isomorphism, showing that these groups fall into a small number of infinite families together with a finite list of exceptional “sporadic” groups. In effect, it supplies a structural periodic table for the building blocks of all finite groups. The CFSG is both a classification theorem and a practical instrument that continues to shape research across mathematics. While the second-generation proof and various formalization projects are still under way, the result itself is regarded as established, and the complete list of finite simple groups is now a standard tool in the mathematician’s repertoire.

### Finite Simple Groups 
A finite simple group is a nontrivial finite group that possesses no nontrivial proper normal subgroups. These groups play a role in finite group theory analogous to that of the prime numbers in arithmetic: every finite group can be decomposed, via a composition series, into simple composition factors. The Jordan–Hölder theorem guarantees that the multiset of composition factors is uniquely determined by the group, even though the manner in which the factors are assembled (the extension problem) is in general far from unique. Because every finite group is built from simple composition factors, the CFSG is a foundational tool throughout finite group theory and its applications. It has been used to classify finite doubly transitive permutation groups, to determine the finite subgroups of the classical algebraic groups, and to settle long-standing questions about the structure of finite groups of Lie type.  
Outside pure group theory the classification has had notable impact in:

- Combinatorics and coding theory (via the Mathieu groups and the Golay codes, the Conway groups and the Leech lattice, and various sporadic groups that give rise to exceptional designs and codes);  
- Graph theory (construction of expander graphs and highly symmetric graphs);  
- Number theory and Galois theory (realization of sporadic groups as Galois groups over the rationals);  
- Mathematical physics, most spectacularly through Monstrous Moonshine, which relates the Monster group to modular functions and ultimately to vertex operator algebras and string theory.

### Historical Development
The systematic classification of finite simple groups began in earnest in the 1950s. Early milestones included the Feit–Thompson odd-order theorem (1963), which established that every finite group of odd order is solvable and therefore that every non-abelian finite simple group has even order, and the subsequent classification of groups with dihedral, semidihedral, or wreathed Sylow 2-subgroups. 

Throughout the 1960s and 1970s a large community of group theorists developed the local-analysis techniques needed to control the structure of centralizers of elements of prime order, especially involutions. Daniel Gorenstein outlined a sixteen-step program in 1972 that organized the remaining work. By the early 1980s the first-generation proof was regarded as essentially complete, although the quasithin case remained open until the 1,221-page monograph of Aschbacher and Smith appeared in 2004. The entire first-generation proof is estimated to occupy between 10,000 and 15,000 journal pages distributed across several hundred articles.

Recognizing the difficulty of verifying and using such a diffuse body of work, Gorenstein, Lyons, and Solomon initiated a second-generation revision in the 1980s. Their project aims to produce a self-contained, streamlined proof published as a multi-volume series in the American Mathematical Society’s Mathematical Surveys and Monographs. Several volumes have already appeared; the program continues, with remaining cases still under active investigation. In parallel, large-scale formalization efforts in interactive theorem provers (most notably recent Lean formalizations of substantial portions of the first-generation proof) are providing machine-checked verification pathways.

### Outline of the Proof Strategy
Although the full argument is extraordinarily intricate, its high-level architecture can be summarized as follows:

- The Feit–Thompson theorem reduces attention to groups of even order.  
- One then studies the 2-local structure (normalizers of nontrivial 2-subgroups) and the possible configurations of involution centralizers.  
- A dichotomy emerges between groups of characteristic 2-type and groups of odd type (or component type).  
- In the odd-type case one employs signalizer-functor methods and standard-form problems to identify the group as a group of Lie type of odd characteristic, an alternating group, or a sporadic group.  
- In the characteristic 2-type case one analyzes the $p$ -local structure for odd primes $p$ and reduces to quasithin groups or groups of small 2-local $p$-rank, which are then classified by direct (and often highly technical) arguments.  

Each of these broad cases splits into numerous subcases that must be treated separately; many of the sporadic groups arise precisely as the “exceptions” that survive these reductions.

### The Statement of the Classification
The CFSG asserts that every finite simple group is isomorphic to exactly one of the following (up to a short list of known isomorphisms between members of different families):

1. **Cyclic groups of prime order**  
   These are the groups $\mathbb{Z}/p\mathbb{Z}$. They are the only abelian simple groups and form the simplest infinite family.

2. **Alternating groups $A_n$ for $n\geq 5$**  
   The alternating group $A_n$ consists of all even permutations of $n$ letters. It is simple precisely when $n\geq 5$. These groups constitute a second infinite family of non-abelian simple groups.

3. **Groups of Lie type**  
   These arise as analogues of the classical and exceptional Lie groups, constructed over finite fields. They comprise sixteen infinite families and account for the vast majority of all finite simple groups. They fall into three broad classes:  
   - *Classical groups*, including the projective special linear groups $\mathrm{PSL}_n(q)$, the projective symplectic groups $\mathrm{PSp}_{2n}(q)$, the projective special unitary groups $\mathrm{PSU}_n(q)$, and the orthogonal groups in various dimensions.  
   - *Exceptional groups*, such as $G_2(q)$, $F_4(q)$, $E_6(q)$, $E_7(q)$, and $E_8(q)$.  
   - *Twisted groups*, obtained by twisting the Chevalley construction with field and graph automorphisms; these include the Suzuki groups, the Ree groups, and the Tits group $^2F_4(2)'$.  

   The parameter $q$ is always a prime power, and the precise conditions under which these groups are simple are well understood.

4. **The 26 sporadic groups**  
   These are the exceptional simple groups that do not belong to any of the infinite families above. They include the five Mathieu groups (discovered in the nineteenth century), the Janko groups, the Conway groups (related to the Leech lattice), the Fischer groups, the Higman–Sims group, the McLaughlin group, the Held group, the Rudvalis group, the Suzuki sporadic group, the O’Nan group, the Harada–Norton group, the Lyons group, the Thompson group, the Baby Monster, and the Monster group.  

   The Monster is the largest of the sporadics, with order  

$$
808\,017\,424\,794\,512\,875\,886\,459\,904\,961\,710\,757\,005\,754\,368\,000\,000\,000
\approx 8\times 10^{53}.
$$

   Most of the other sporadics appear as subquotients of the Monster; the six that do not are known as the pariahs. The Tits group is occasionally listed as a twenty-seventh sporadic group, though it is more naturally regarded as a twisted group of Lie type.

A small number of accidental isomorphisms exist between members of different families (for example $A_5\simeq\mathrm{PSL}_2(4)\simeq\mathrm{PSL}_2(5)$, $A_6\simeq\mathrm{PSL}_2(9)$, and $A_8\simeq\mathrm{PSL}_4(2)$). Apart from these and a few other low-rank coincidences, the groups appearing in the list are pairwise non-isomorphic.



