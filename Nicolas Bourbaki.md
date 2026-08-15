***Nicolas Bourbaki*** is not an individual person but rather a pseudonymous collective of primarily French mathematicians, formed in the 1930s. This group aimed to reformulate mathematics on a highly rigorous and formalized foundation using set theory. The name "Bourbaki" was chosen humorously after a French general, Charles Denis Bourbaki. In summary, Nicolas Bourbaki represents one of the most influential collaborative efforts in 20th-century mathematics, leaving a lasting legacy in both research and pedagogy.

### Purpose
The Bourbaki group sought to write a comprehensive and systematic treatise called Éléments de mathématique, covering the major areas of mathematics with fully axiomatic rigor and logical precision. Their work influenced modern mathematical writing and pedagogy significantly.

### Members
Members of Bourbaki were mathematicians including André Weil, Henri Cartan, Jean Dieudonné, Claude Chevalley, and others. The group worked collaboratively,and individual authorship of specific chapters was deliberately obscured to maintain collective identity.

### Influence
Bourbaki strongly influenced the development of abstract algebra, topology, and other areas. Their emphasis on rigor and structure helped shape the way mathematics is taught and written today.

---

#### 🧩 **1. Set‑Theoretic Notation (Bourbaki’s Core Foundation)**

- **∅** — empty set  
  Introduced by Weil using the Norwegian Ø.

- **℘(X)** — power set  
  Bourbaki standardized this as the set of all subsets of X.

- **A △ B** — symmetric difference  
  Defined as:  

$$
  A △ B = (A \setminus B) \cup (B \setminus A)
$$

- **A ⊂ B** vs **A ⊆ B**  
  Strict vs non‑strict inclusion — Bourbaki insisted on the distinction.

- **Card(X)** — cardinality  
  Used before |X| became universal.

---

#### 🔢 **2. Function & Mapping Notation (One of Their Biggest Contributions)**

- **injective**  

$$
  f(x_1)=f(x_2) \Rightarrow x_1=x_2
$$

- **surjective**  

$$
  \forall y\in Y,\ \exists x\in X:\ f(x)=y
$$

- **bijective**  
  Injective + surjective.

- **f : X → Y**  
  Standardized the arrow notation for functions.

- **Im(f)** — image  

$$
  \mathrm{Im}(f)=\{f(x):x\in X\}
$$

- **Ker(f)** — kernel  

$$
  \mathrm{Ker}(f)=\{x\in X:f(x)=e\}
$$

---

#### 📐 **3. Geometry & Topology Notation**

- **pavé** — rectangular parallelotope  

$$
  P = \prod_{i=1}^n [a_i,b_i]
$$

- **boule** — ball  

$$B(x,r) = { y | d(x,y) < r }$$

- **barrel** — convex, balanced, absorbing, closed  
  A Bourbaki‑specific object in topological vector spaces.

- **filter**  
  A family $\mathcal{F}$ of sets satisfying:  
  - upward closed  
  - closed under finite intersections  
  - nonempty  
  This is the ancestor of modern convergence theory.

- **base / subbase**  
  Bourbaki standardized these terms.

---

#### 🧮 **4. Algebra & Structural Notation**

- **Grp, Ring, Mod****  
  Bourbaki introduced these category abbreviations.

- **End(X)**  
  Endomorphism monoid:  

$$
  \mathrm{End}(X)=\{f:X\to X\}
$$

- **Aut(X)**  
  Automorphism group:  

$$
  \mathrm{Aut}(X)=\{f:X\to X\ \text{bijective}\}
$$

- **rank**  
  Standardized linear algebra terminology.

---

#### 📊 **5. Analysis & Measure Theory Notation**

- **ess sup**  

$$
  \mathrm{ess\,sup}\ f = \inf\{a:\mu(\{x:f(x)>a\})=0\}
$$

- **Lᵖ spaces**  

$$
  L^p(X)=\{f:\int |f|^p < \infty\}
$$

- **∫ f dμ**  
  Measure‑theoretic integral.

- **supp(f)**  

$$
\mathrm{supp}(f)=\overline{\{x:f(x)\neq 0\}}
$$

---

#### ⚠️ **6. Marginal Symbols & Editorial Conventions**

- **☡** — dangerous bend  
  Marks difficult arguments.

- **☣** — double dangerous bend  
  Later adopted by Knuth.

- **§** — section symbol  
  Bourbaki standardized its structural use.

---

#### 📚 **7. Structuralist Terminology (Not Symbols, but Foundational)**

- **structure**  
- **canonical**  
- **isomorphism**  
- **normed space**  

These terms became universal because of Bourbaki.


### Style and Legacy
Bourbaki’s work is known for its formalism, abstract structures, and concise style. The group's impact extends beyond the actual texts, advancing ideas including set theory, category theory, and the Bourbaki seminar which continues to present contemporary mathematical research.

## Interesting Facts
The group used pseudonyms and wrote under the Bourbaki name even after many of the original members had left. Bourbaki’s approach has been sometimes criticized for being too abstract and formal, but also praised for unifying mathematical knowledge.

## Appendix

### Bourbaki equation sheet. 

---

#### **SET THEORY**  
#### ================================

```
Empty set:
    ∅ = {}

Power set:
    P(X) = { A : A ⊆ X }

Union / intersection / difference:
    A ∪ B
    A ∩ B
    A \ B

Symmetric difference:
    A △ B = (A \ B) ∪ (B \ A)

Cartesian product:
    X × Y = { (x,y) : x ∈ X, y ∈ Y }

Equivalence relation:
    x ~ y  <=>  (x,y) ∈ R

Quotient set:
    X/~ = { [x] : x ∈ X }
```

---

#### **FUNCTIONS & MAPPINGS**  
#### ======================================

```
Function:
    f : X → Y

Image:
    Im(f) = { f(x) : x ∈ X }

Preimage:
    f^{-1}(A) = { x ∈ X : f(x) ∈ A }

Injective:
    f(x1) = f(x2)  =>  x1 = x2

Surjective:
    ∀ y ∈ Y, ∃ x ∈ X : f(x) = y

Bijective:
    f injective AND surjective

Composition:
    (g ∘ f)(x) = g(f(x))

Kernel:
    Ker(f) = { x : f(x) = e }
```

---

#### **TOPOLOGY**  
#### ================================

```
Topology:
    T ⊆ P(X)
    ∅ ∈ T, X ∈ T
    Arbitrary unions of T are in T
    Finite intersections of T are in T

Neighborhood filter:
    V(x) = { U ∈ T : x ∈ U }

Closure:
    Cl(A) = ⋂ { C : A ⊆ C, C closed }

Interior:
    Int(A) = ⋃ { U : U ⊆ A, U open }

Filter:
    F ⊆ P(X)
    F ≠ ∅
    A ∈ F, A ⊆ B => B ∈ F
    A,B ∈ F => A ∩ B ∈ F

Convergence:
    F → x  <=>  V(x) ⊆ F
```

---

#### **GEOMETRY / SPECIAL OBJECTS**  
#### ==========================================

```
Pavé (parallelotope):
    P = Π_{i=1..n} [a_i, b_i]

Boule (ball):
    B(x,r) = { y : d(x,y) < r }

Barrel (TVS):
    Barrel = convex ∩ balanced ∩ absorbing ∩ closed
```

---

#### **GROUP THEORY**  
#### ================================

```
Group:
    (G, ·), identity e, inverse g^{-1}

Subgroup:
    H ≤ G

Homomorphism:
    f(gh) = f(g) f(h)

Kernel:
    Ker(f) = { g : f(g) = e }

Image:
    Im(f) = f(G)

Quotient group:
    G/H
```

---

#### **RINGS & MODULES**  
#### ================================

```
Ring:
    (R, +, ·)

Module:
    M over R

Endomorphisms:
    End(X) = { f : X → X }

Automorphisms:
    Aut(X) = { f : X → X bijective }
```

---

#### **LINEAR ALGEBRA**  
#### ================================

```
Vector space:
    V over field K

Basis:
    { v_i }_{i ∈ I }

Dimension:
    dim(V) = |I|

Linear map:
    T(av + bw) = aT(v) + bT(w)

Rank:
    rank(T) = dim(Im(T))
```

---

#### **ANALYSIS**  
#### ================================

```
Measure space:
    (X, M, μ)

Measurable function:
    f^{-1}((a,b)) ∈ M

Integral:
    ∫_X f dμ

Essential supremum:
    ess sup f = inf { a : μ({ x : f(x) > a }) = 0 }

Lp spaces:
    L^p(X) = { f : ∫ |f|^p dμ < ∞ }

Support:
    supp(f) = Cl({ x : f(x) ≠ 0 })
```

---

#### **CALCULUS**  
#### ================================

```
Derivative:
    f'(x) = lim_{h→0} (f(x+h) - f(x)) / h

Chain rule:
    (g ∘ f)'(x) = g'(f(x)) f'(x)

Differential:
    df = f'(x) dx
```

---

#### **STRUCTURES & MORPHISMS**  
#### ==========================================

```
Structure:
    S = (X, R, O)
    X = underlying set
    R = relations
    O = operations

Morphism:
    f : S → S'
    f preserves all R and O

Isomorphism:
    f bijective morphism
```

---


#### **DANGEROUS BEND**  
#### ================================

```
☡   (dangerous bend)
☣   (double dangerous bend)
```

ASCII equivalents:

```
/!\   dangerous bend
/!!\  double dangerous bend
```
