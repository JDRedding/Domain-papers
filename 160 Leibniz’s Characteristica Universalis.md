# **Leibniz’s Characteristica Universalis**
→ 160 Logic

The *characteristica universalis* (Latin for “universal characteristic”) was Gottfried Wilhelm Leibniz’s (1646–1716) visionary project for a formal symbolic language capable of expressing all human knowledge—mathematical, scientific, metaphysical, and logical. He did not treat it as a closed math paper. After a short proof of God and a set of definitions, he posed twelve problems (combinations first, then permutations) and then ran the method through as many sciences as he could reach at twenty. Inside the volume itself he applied it to legal cases and juristic distinctions, the four Aristotelian qualities and the generation of the elements, kinds of number, the stop combinations of an organ, the valid moods of the categorical syllogism, geometric primitives (point, space, part, whole, and the compound definitions built from them), the division of genera into species, a critique of Ramon Llull’s too-narrow combinatory wheels, a sketch of a universal writing, seating arrangements, letter-permutations, melodies, and even lock combinations.

## History
The *characteristica universalis* was Leibniz’s dream of a universal, precise, and mechanizable language of thought that would reconcile empirical science, mathematics, logic, and metaphysics in one coherent symbolic framework. Though never completed, it pioneered ideas that became foundational to formal logic, formal languages, computer science, and knowledge representation. Leibniz envisioned it as:

- An “alphabet of human thought,” in which each primitive concept corresponds to a unique symbol.
- A system in which symbols could be combined logically to represent composite ideas.
- A framework for mechanical reasoning, via his complementary *calculus ratiocinator*, so that deductions and intellectual disputes could be resolved algorithmically, in the manner of arithmetic or algebra.

The underlying goal was to eliminate the ambiguities of natural language and thereby increase precision, enable universal communication, and support systematic discovery across disciplines. He also used the book as a career instrument: it was the expanded version of his dissertation, it made his name among scholars, and he kept returning to it. The same combinatorial habit later became characteristic numbers, the algebra of concepts, binary arithmetic, work on determinants and partitions, and the slogan calculemus. In that sense the 1666 book is less a finished system than the first public statement of a method he spent the rest of his life trying to make universal.

- **1666**: Leibniz’s *Dissertatio de Arte Combinatoria* introduced combinatorial methods for generating all possible combinations of concepts, laying the conceptual groundwork for the *characteristica universalis*.
- **Influences**: European encounters with Chinese characters and Egyptian hieroglyphs inspired Leibniz’s idea of ideographic representation—symbols that stand for ideas directly rather than for words or sounds.
- **1670s–1690s**: Leibniz refined the system, proposing pictographic elements (lines, points, geometric forms) and binary arithmetic to encode complex relations and make computation possible.

## Features

**Symbolic representation**  
Each simple concept is assigned a precise symbol. Higher-order ideas arise by combinatorial composition of those symbols.

**Diagrammatic and pictorial reasoning**  
Diagrams and geometric forms depict logical relations visually, allowing operations that do not depend on verbal expression.

**Calculus ratiocinator**  
A procedural, rule-based system for deriving truths from symbolic expressions. It anticipates modern automated reasoning and computational logic.

**Universality**  
The language was meant to work independently of any spoken tongue and to unify scientific, philosophical, and metaphysical reasoning in a single framework.

## Practical and Scientific Ambitions

Leibniz hoped the system could:

- Settle philosophical and moral disputes by calculation.
- Represent natural laws so that scientific principles could be deduced in the same way equations are solved.
- Enable international scholarly and commercial communication without linguistic barriers.

He believed the system could be learned in a matter of weeks from a small set of symbols and combinatorial rules.

## Metaphysical and Logical Integration

The project is linked to Leibniz’s monadology and the principle of sufficient reason:

- Symbols correspond to the irreducible substances (monads) of reality.
- Logical manipulation of symbols models a rational, harmonious universe—the “best of all possible worlds.”
- The same apparatus was intended to mechanize syllogistic, mathematical, and physical deduction.

## Limitations and Modern Perspective

**Incomplete realization**  
Leibniz never fully specified the *characteristica universalis*. Obstacles included the combinatorial explosion of possible combinations and the difficulty of enumerating all primitive concepts.

**Expressiveness constraints**  
The algebra of concepts was essentially first-order and therefore inadequate for many higher-order abstractions required by later mathematics and science.

**Legacy**  
The project influenced:

- Formal logic (Frege’s *Begriffsschrift*, Schröder’s algebraic logic).
- Computer science and automated reasoning (proof assistants such as Coq and Isabelle).
- Later attempts at universal languages and precise knowledge representation.

## Applications

Leibniz did not write the *Dissertatio de Arte Combinatoria* as a closed piece of mathematics. He treated combinatorics as a general method: list the simplest pieces of a subject, combine them systematically, and use the resulting inventory to invent, classify, and test ideas. In the 1666 book itself he already tried the method on law, music, logic, geometry, natural philosophy, and everyday puzzles. The same habit is still usable today, even though his dreamed-of universal language was never finished.

### What Leibniz applied it to

**Logic and invention.**  
The central logical use was: given a subject, find all possible predicates; given a predicate, find all possible subjects. Compound ideas were treated as combinations of primitives. Syllogisms could then be surveyed by counting and sorting combinations rather than by memory of the traditional moods. This is the seed of his later claim that reasoning should become a kind of calculation.

Given subject $S\subseteq P$, the possible predicates are its nonempty parts:

$$
{Pred}(S)=\{A\subseteq S:A\neq\varnothing\}
\qquad
|{Pred}(S)\bigr|=2^{|S|}-1.
$$

Given predicate $Q\subseteq P$, the possible subjects are the supersets of $Q$:

$$
{Subj}(Q)=\{B\subseteq P:Q\subseteq B\}
\qquad
|{Subj}(Q)\bigr|=2^{n-|Q|}.
$$

“Every $S$ is $Q$” is just containment:

$$
S\in Q \iff Q\subseteq S.
$$

**Geometry and definition.**  
He built geometric ideas from a short list of primitives—point, space, included, part, whole, number, and so on—then defined richer terms as combinations. “Quantity,” for example, appears as the number of the parts. The point was not to replace Euclid, but to show that even spatial ideas can be assembled from an alphabet.

A defined term is a combination of primitives. If class-I marks are numbered $1,2,\dots$, a compound is a product (or a tuple) of those marks:

$$
{Interval}=\{2,3,10\}
\qquad\text{i.e.}\qquad
\text{space}\cdot\text{included}\cdot\text{whole}.
$$

Quantity as “number of the parts”:

$$
{Quantity}(X)=\lvert{Parts}(X)\rvert.
$$

**Law and cases.**  
Legal distinctions and fact-patterns were treated as combinations of a few relevant marks: persons, acts, conditions, circumstances. The method promised a more complete map of cases than ordinary listing, and a way to notice missing distinctions.

A case is a tuple of legal atoms (person, act, circumstance, …). The docket generated from $k$ relevant factors with sizes $n_1,\dots,n_k$ is

$$
\lvert\mathcal{C}\rvert=\prod_{i=1}^{k}n_i.
$$

Two cases are the same legal kind when they have the same support:

$$
C\sim C' \iff {supp}(C)={supp}(C').
$$

**Music.**  
He applied the same counting to organ registrations and to the possible arrangements of tones. A limited set of stops or notes yields a large, but finite, field of combinations. That is why later readers see an anticipation of combinatorial composition.

From $n$ notes or stops, the number of unordered combinations of size $k$ (a chord, a registration) is

$$
\binom{n}{k}=\frac{n!}{k!(n-k)!}.
$$

Ordered sequences of length $\ell$ (a motif, a melody fragment) are

$$
n^{\ell}
\qquad\text{or, without repetition,}\qquad
P(n,\ell)=\frac{n!}{(n-\ell)!}.
$$

**Natural philosophy.**  
The four Aristotelian primary qualities and the generation of the elements gave him a compact example: a few qualities, combined, produce the traditional elements. The science is dated; the pattern is not. A small table of primitives is made to generate a larger table of kinds.

Kinds are combinations of a few qualities. If $Q$ is the set of primitive qualities,

$$
{Kind}(A)=\prod_{q\in A}q,
\qquad A\subseteq Q.
$$

The inventory of kinds is again $2^{|Q|}-1$.

**Language, writing, and puzzles.**  
He sketched a universal script, criticized Ramon Llull for combining too narrowly, and played the method on letters, seating orders, melodies, and lock combinations. These “recreational” cases mattered to him because they showed that the same art covers serious invention and ordinary arrangement.

Words from an alphabet $\Sigma$ of length $m$, strings of length $\ell$:

$$
\lvert\Sigma^\ell\rvert=m^\ell.
$$

Seating $n$ distinct people around a table (rotations identified):

$$
(n-1)!.
$$

### What the method is still good for

**Making a field legible.**  
Choose a domain you actually work in—features of a product, clauses of a contract, motifs in a piece of music, symptoms in a diagnosis, virtues in an argument—and force a short list of primitives. Then generate the combinations instead of relying on slogans. Gaps and illegal pairings become visible.

A field is “legible” when every used term is a subset of a declared alphabet:

$$
{Vocab}\subseteq 2^{P}\setminus\{\varnothing\}.
$$

The missing ideas are the unused combinations:

$$
{Gaps}(P)=2^{P}\setminus\bigl(\{\varnothing\}\cup{Vocab}\bigr).
$$

**Inventing on purpose.**  
Brainstorming often repeats nearby ideas. Combinatorial invention asks a colder question: which pairings have not been tried? That is useful in design, taxonomy, curriculum-building, and any task where the parts are few and the compounds are many.

New candidates are combinations not yet named:

$$
{New}(P)={Gaps}(P).
$$

Rank a candidate by how many primitives it spends:

$$
{rank}(A)=\lvert A\rvert.
$$

**Testing definitions.**  
If a concept cannot be written as a combination of agreed atoms, it is probably still a bundle of hidden ideas. The book’s discipline is to keep decomposing until the remainder is dull. Dull primitives are a feature.

A definition is exact when the term is identical with the product of its claimed parts:

$$
T=p_{i_1}p_{i_2}\cdots p_{i_k}
\iff
T=\bigcap\{p_{i_1},\dots,p_{i_k}\}
\quad\text{(as sets)}
$$

or, in characteristic numbers,

$$
{char}(T)=\prod_{j=1}^{k}{char}(p_{i_j}).
$$

If no such finite product exists, the term is still composite in secret.

**Checking arguments.**  
Two people may use the same words and different atoms. Asking “which primitives are in play, and which combinations are being asserted?” often dissolves a verbal dispute without settling the deeper one. That is as close as the method comes to Leibniz’s hope that controversy might be reduced to calculation.

An assertion “ $S$ is $Q$ ” is arithmetically checkable once numbers are assigned:

$$
S\in Q \iff {char}(Q)\mid{char}(S).
$$

Two speakers agree on a sentence only if they use the same support:

$$
{supp}_1(S)={supp}_2(S)
\quad\text{and}\quad
{supp}_1(Q)={supp}_2(Q).
$$

**Building small tools.**  
The counting side is ordinary combinatorics. A short program can take a list of primitives and emit all nonempty combinations, then answer “what can be said of this compound?” That is the *ars inveniendi* of the book in modern form. It will not encode the universe. It will inventory a local language.

### What it will not do

It will not, by itself, assign the “true” characteristic numbers of real things. That was Leibniz’s unsolved encyclopedia problem. It also will not replace experiment, higher mathematics, or moral judgment. Used honestly, the art of combinations is a way to exhaust a small alphabet—not a machine for producing the world from symbols.

The practical rule left by the book is therefore modest: when a subject is confused, look for missing primitives; when a subject is sterile, look for unused combinations.

## References and further reading

- Leibniz, *Dissertatio de Arte Combinatoria* (1666)
- Leibniz, “On the General Characteristic” (1679)
- Louis Couturat, *La Logique de Leibniz* (1901)
- Wolfgang Lenzen (1990)
- Bruno Woltzenlogel Paleo (2014)

## APPENDIX: Calculemus notation

The higher layers of the *characteristica universalis* is the part Leibniz treated as calculable: combinatorial generation of concepts, characteristic numbers, the 1679 pair-model of syllogistic, and the later algebra of concepts. The notation below follows Leibniz’s own papers (especially 1666 and April 1679) and the standard reconstruction of his algebra of concepts.

### Combinatorial generation of concepts

In the *Dissertatio de Arte Combinatoria* (1666), primitive concepts form a finite alphabet. Compound concepts are *complexiones* (combinations without regard to order).

If there are $n$ primitive concepts, the number of combinations of size $k$ is the binomial coefficient

$$
\binom{n}{k}=\frac{n!}{k!(n-k)!}=\binom{n-1}{k}+\binom{n-1}{k-1}.
$$

The number of all nonempty combinations (Leibniz’s *complexiones simpliciter*) is

$$
\sum_{k=1}^{n}\binom{n}{k}=2^{n}-1.
$$

Leibniz’s class notation: class I = primitives; class II = pairs; class III = triples; and so on. A later class can be written by a fractional index, e.g. $1/3$ = first term of class III.

Given a term built from $k$ primitives, the number of its possible predicates (its divisors in the later arithmetic model) is

$$
2^{k}-1.
$$

Given $n$ primitives total and a term of complexity $k$, the number of possible subjects that contain it is

$$
2^{n-k}-1
$$

(plus the identity case in which the term is predicated of itself).

### Characteristic numbers (intensional arithmetic)

Assign to each primitive concept a prime (or, more loosely, an integer). Composition is multiplication.

**Running example.**  
Let

$$
{char}(\text{animal})=a=2,\qquad
{char}(\text{rational})=r=3.
$$

Then

$$
{char}(\text{man})=ar=2\cdot 3=6.
$$

Likewise, if metal $=m=7$ and heaviest $=p=5$, then gold $=mp=35$.

**Containment / universal affirmative.**  
“Every $S$ is $P$” (the concept $S$ contains the concept $P$) holds iff the characteristic number of $P$ divides that of $S$:

$$
S\in P \quad\Longleftrightarrow\quad p\mid s,
$$

i.e.

$$
s\equiv 0\pmod{p}.
$$

So “every man is an animal” because $2\mid 6$.

This is Leibniz’s *inesse* (predicate-in-subject) principle in arithmetic form: the number of the subject is a multiple of the number of the predicate.

### Characteristic number *pairs* (1679 syllogistic model)

The single-number model cannot handle negation and particular propositions cleanly. Leibniz therefore assigned to each term $T$ a pair of coprime positive integers

$$
T=\langle +t_1,\;-t_2\rangle
\quad\text{with}\quad
\gcd(t_1,t_2)=1.
$$

$t_1$ encodes the positive constituents; $t_2$ encodes the privative / negative constituents.

Let $S=\langle s,\sigma\rangle$ and $P=\langle p,\pi\rangle$. The four categorical forms become:

| Form | Traditional name | Arithmetic condition |
|---|---|---|
| All $S$ are $P$ | **A** | $p\mid s$ and $\pi\mid\sigma$ |
| No $S$ is $P$ | **E** | $\gcd(s,\pi)>1$ or $\gcd(p,\sigma)>1$ |
| Some $S$ is $P$ | **I** | $\gcd(s,\pi)=\gcd(p,\sigma)=1$ |
| Some $S$ is not $P$ | **O** | $p\nmid s$ or $\pi\nmid\sigma$ |

An inference $P_1,P_2\vdash C$ is valid iff every assignment of coprime pairs that makes both premises true also makes the conclusion true.

(Some later commentators read the pair $\langle t_1,t_2\rangle$ as the rational $t_1/t_2$; the divisibility rules then become rules about fractions.)

### Algebra of concepts $L_1$

From the late 1670s through the *Generales Inquisitiones* (1686), Leibniz treated concepts as an algebraic structure. The modern reconstruction (Lenzen) uses:

- juxtaposition $AB$ = conceptual conjunction (intensional product)
- $\sim A$ = conceptual negation
- $A\in B$ = “ $A$ contains $B$ ” (intensional inclusion)
- $A=B$ = coincidence of concepts
- $\mathrm{P}(A)$ = “ $A$ is possible ” (does not contain a contradiction)

**Identity.**

$$
A=B \;\overset{\mathrm{df}}{\Longleftrightarrow}\; A\in B \;\wedge\; B\in A
$$

or, conversely,

$$
A\in B \;\Longleftrightarrow\; A=AB.
$$

**Containment.**

$$
A\in A
\qquad
(A\in B \;\wedge\; B\in C)\to A\in C.
$$

**Conjunction.**

$$
A\in BC \;\Longleftrightarrow\; A\in B \;\wedge\; A\in C.
$$

**Possibility / consistency.**

$$
\mathrm{P}(A)\;\to\; A\notin\sim A
$$

$$
A\in B \;\Longleftrightarrow\; \neg\mathrm{P}(A\sim B)
$$

$$
(A\in B \;\wedge\; \mathrm{P}(A))\to\mathrm{P}(B).
$$

**Ex contradictorio** (needed for full Boolean strength):

$$
(A\sim A)\in B.
$$

With that last axiom, the intensional algebra is isomorphic to a Boolean algebra of sets (extensions). Disjunction is then definable by De Morgan:

$$
A\lor B \;=\; \sim(\sim A\;\sim B).
$$

**Indefinite concepts as quantifiers.**  
“Some $A$ is $B$” can be written with an indefinite letter $Y$:

$$
YA\in B
\qquad\text{or}\qquad
\exists Y\,(A=YB).
$$

An *individual concept* is a maximally consistent concept:

$$
{Ind}(A)\;\overset{\mathrm{df}}{\Longleftrightarrow}\;
\mathrm{P}(A)\;\wedge\;
\forall Y\bigl(\mathrm{P}(AY)\to A\in Y\bigr).
$$

That is the formal link from the algebra of concepts to monadology: an individual is a complete, consistent concept.

### Binary (dyadic) arithmetic

Leibniz’s base-2 notation was both a computational device and a metaphysical emblem: $1$ for being / God, $0$ for nothing. Any natural number has a unique expansion

$$
n=\sum_{k=0}^{m} b_k\,2^{k},\qquad b_k\in\{0,1\}.
$$

He treated this as a combinatorial code for “which primitive realities are present.” It is the same idea as the characteristic-number program, restricted to the two-element alphabet $\{0,1\}$, and is why later writers see the *characteristica* as an ancestor of digital representation.

### Scope and the first-order limit

The arithmetic and algebraic systems above are essentially first-order term calculi: they combine concepts and test containment, consistency, and syllogistic consequence. They do not by themselves quantify over properties of properties, or encode full higher-order mathematics. That is the expressiveness constraint already noted in the earlier overview: the *calculus ratiocinator* as Leibniz left it is an algebra of concepts, not a modern type theory.



The operational slogan remains the one Leibniz attached to the whole project: once the characters are fixed,

$$
\text{calculemus}.
$$

## APPENDIX: Diagrammatic and pictorial reasoning

Leibniz wanted characters that could be seen as well as calculated. Diagrams and geometric forms were meant to show logical relations directly, so that an operation could be performed by the eye without first translating it into speech.  A diagram here is a readable combination, not a map of the world. These figures handle
    
- combination,
- containment,
- overlap,
- exclusion.

They do not, by themselves, draw

- higher-order properties,
- continuity,
- or the "true" primitives of nature.

The same relation has three faces:

    words          "Every man is an animal"
    numbers        2 | 6
    picture        the smaller mark sits inside the larger one

If the picture is faithful, moving the marks is already reasoning.

### Containment  (inesse / "S contains Q")

    Universal affirmative:  Q is in S

            +----------------------+
            | S                    |
            |                      |
            |      +--------+      |
            |      |   Q    |      |
            |      +--------+      |
            |                      |
            +----------------------+

    ASCII reduction:

            [======= S =======]
                 [== Q ==]

    Test:  Q sits inside S  <=>  Qsubseteq S  <=>  char(Q) | char(S)

### Combination  (complexion / product of primitives)

    Primitives as letters on a line:

            p1   p2   p3   p4   p5
            *    *    *    *    *

    A compound is a selection:

            man  =  animal  x  rational

            [ animal ] * [ rational ]  ----->  [ man ]
                 2     x      3        ----->     6

    Tree form:

                    man
                   /   \
              animal   rational
                 |         |
                 2         3

### The four categorical pictures

    A   All S are P           P inside S
            [==== S ====]
               [ P ]

    E   No S is P             S and P disjoint
            [ S ]     [ P ]

    I   Some S is P           overlap
            [ S [##] P ]
                   ^^ shared marks

    O   Some S is not P       S not swallowed by P
            [ S ]----x----[ P ]

### Geometric alphabet  (from the 1666 class-I list)

    Point           .

    Space           . . . . .
                    .       .
                    . . . . .

    Included        [  .  ]

    Part / whole

            whole
           /     \
         part    part
          .       .

    Interval as combination  2 . 3 . 10
    (space * included * whole):

            [ ........ ]
              included
                 ^
               space
              in a whole

### Characteristic-number pair  (1679)

    Each term is two coprime heaps:  positives  and  privatives

            T  =  <+ t1  |  - t2 >

            +-------+     +-------+
            |  t1   |     |  t2   |
            |  yes  |     |  not  |
            +-------+     +-------+
                 \           /
                  gcd = 1

    "All S are P" becomes two nestings at once:

            [ s contains p ]   and   [ sigma contains pi ]

### A visual calculus step

    Claim:  man contains animal

    Picture:     [ man [ animal ] ]
    Numbers:     6 = 2 * 3 ,   2 | 6
    Geometry:    the animal-mark is a proper part of the man-mark

    The three inscriptions stand or fall together.
    That is the point of a characteristic: the diagram is already
    the argument.


