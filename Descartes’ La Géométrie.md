# Descartes’ La Géométrie

René Descartes’ *La Géométrie*, published in 1637 as an appendix to Descartes’ *Discourse on the Method*, is a foundational work in mathematics that introduced what is now known as analytic geometry. This work bridges algebra and geometry by providing a method to express geometric shapes and curves through algebraic equations. *La Géométrie* by René Descartes represents a major milestone in mathematics, introducing analytic geometry and methods that allowed geometric problems to be solved algebraically. 

## Historical Context

- **Publication**: 1637, as one of three appendices (with *La Dioptrique* and *Les Météores*) to the anonymously published *Discours de la méthode*.
- **Author**: René Descartes (1596–1650).
- **Purpose**: To demonstrate the power of the method outlined in the *Discourse* by solving geometric problems algebraically.

The work is short, written in French rather than Latin, and deliberately terse. Descartes expected readers already skilled in both geometry and the new algebra of Viète. Later Latin editions by Frans van Schooten (especially 1649 and 1659–61) added extensive commentary and examples that made the ideas far more accessible and helped establish the modern rectangular coordinate plane.

## Lasting influence

The decisive novelty was not the invention of two perpendicular axes, but the systematic translation of geometric problems into algebra and the recognition that a curve is defined by an equation relating two variable lengths. That insight, together with Fermat’s independent and contemporaneous work, created analytic geometry and supplied the language in which Newton and Leibniz later developed calculus.

Its historical and practical influence continues to resonate in modern science and mathematics. Descartes’ integration of algebra and geometry is foundational in fields such as physics, computer graphics, engineering, and any domain that relies on mathematical modeling of space and motion. The principles presented in *La Géométrie* are still used in classrooms and mathematical texts today, confirming the enduring correctness and relevance of Descartes' ideas. For example, the Cartesian coordinate system is universally taught and applied in both theoretical and applied mathematics.

The modern rectangular coordinate system, the systematic use of negative coordinates, and the terms “abscissa,” “ordinate,” and “coordinate” itself were later refinements (Leibniz introduced the last three terms in the 1690s). The ideas in *La Géométrie* remain foundational precisely because they made those later refinements possible.

## Key Points from *La Géométrie*

- **Analytic Geometry**: Descartes demonstrated how geometric problems, such as finding tangents and areas, could be translated into algebraic equations. This formed the basis for the coordinate system and the modern interplay between algebra and geometry.

- **Cartesian Coordinate System**: While not presented in the exact form we recognize today, *La Géométrie* laid the groundwork for representing points in a plane using two axes, a critical step in the development of analytic geometry.

- **Equation of Curves**: Descartes classified curves into different types and showed how to derive equations representing these curves. He introduced the idea of using algebra to solve geometric problems systematically.

- **Impact on Mathematics**: The methods described in *La Géométrie* influenced future developments in calculus, physics, and engineering. It marked a departure from purely synthetic geometry and paved the way for modern mathematics.

## What Descartes actually did

- **Unification of algebra and geometry**. He treated line segments as quantities that can be added, multiplied, and divided, and he used letters systematically: known lengths as $a, b, c,\ldots$ and unknown lengths as $x, y,\ldots$. This is the origin of the now-standard convention of using late-alphabet letters for unknowns.

- **Germ of a coordinate system**. In solving Pappus’s locus problem he chose one given line as a reference (an “axis”) and measured a second length from a point on that line, calling the two lengths $x$ and $y$. The axes were often oblique, only the first quadrant was used, and he never drew a pair of perpendicular axes with an origin in the modern style. The rectangular Cartesian plane was a later clarification.
  
- **Classification of curves**. Book II distinguishes “geometric” curves (those constructible by a finite sequence of ruler-and-compass operations or, equivalently, those given by an algebraic equation) from “mechanical” curves (transcendental curves such as the spiral or cycloid). He classified geometric curves by the degree of their equations.

- **Algebraic treatment of loci and tangents**. He translated geometric conditions into polynomial equations and gave a method (the “method of undetermined coefficients” and a precursor of implicit differentiation) for finding tangents and normals.

Book III is largely algebraic: it discusses the number of roots of an equation, the rule of signs (Descartes’ rule), and the construction of roots of equations of degree up to 6.

## Msathematical Notation
Descartes’ notation is already close to modern algebraic notation, with a few characteristic habits.

### Notation Descartes used

- Known lengths: $a, b, c, \ldots$
- Unknown lengths: $x, y, z, \ldots$
- Powers: $aa$ or $a^2$ for squares (he often still wrote $aa$); $a^3$, $a^4$, $\ldots$ for higher powers
- Equality: he used a special symbol $\propto$ in the original, now written $=$
- All letters stand for *lengths* (positive segments). Negative and imaginary roots are discussed later, mainly in Book III.
- He writes every equation so that one side is zero whenever convenient: “*it is often best to consider them all together as equal to nothing*.”

He treats $a^2$ and $a^3$ as lengths, not as areas or volumes. That is one of the decisive breaks with Greek dimensional homogeneity. (*ed*. Today, one would write $a_{length}^2$ and $a_{length}^3$ as length, emphasizing this characteristic)

These are the formulas and the notation that actually appear in *La Géométrie*. Later commentators (van Schooten, Hudde, Newton) rewrote them with two perpendicular axes, negative coordinates, and the now-familiar symbols, but the algebraic skeleton is already Descartes’.

### Book I — Arithmetic operations as geometry, and quadratic equations

Multiplication, division and square roots are constructed with similar triangles (Thales). If a unit segment is chosen, products and quotients remain lengths.

The three canonical plane (quadratic) equations and their explicit solutions:

$$
z^2 = az + b^2 \qquad\Rightarrow\qquad
z = \frac12 a + \sqrt{\tfrac14 aa + bb}
$$

$$
y^2 = -ay + b^2 \qquad\Rightarrow\qquad
y = -\frac12 a + \sqrt{\tfrac14 aa + bb}
$$

$$
z^2 = az - b^2 \qquad\Rightarrow\qquad
z = \frac12 a \pm \sqrt{\tfrac14 aa - bb}
$$

(The last case has two positive roots when the discriminant is positive.) Each formula is accompanied by a ruler-and-compass construction that produces the segment $z$ or $y$.

General method for any geometric problem:

1. Assume the construction finished.
2. Name every needed segment, known and unknown.
3. Write as many independent relations as there are unknowns until a single unknown remains, equal to a known expression or to a power of that unknown.

Typical reduced forms he lists:

$$
z = b,\qquad
z^2 = -az + b^2,\qquad
z^3 = az^2 + b^2 z - c^3,\qquad
z^4 = az^3 - c^3 z + d^4,\ \ldots
$$

### Book I–II — Pappus locus (origin of $x$ and $y$)

Given lines in the plane, distances from a moving point $C$ to those lines (measured along prescribed directions) are denoted $x_1,x_2,\ldots$. The classical four-line problem asks that the product of two distances be proportional to the product of the other two.

Descartes chooses one given line as principal axis, sets  
$AB = x$, $BC = y$  
and expresses every other distance as a linear form $ax + by + c$. The locus condition then becomes a polynomial equation in $x$ and $y$.

Four-line case (modern transcription of his relation):

$$
y(a_1 x + b_1 y + c_1) = k(a_2 x + b_2 y + c_2)(a_3 x + b_3 y + c_3)
$$

which expands to a quadratic in $x$:

$$
x^2 P_0(y) + x P_1(y) + P_2(y) = 0.
$$

He obtains, for one concrete four-line configuration, the hyperbola

$$
yy = cy - \frac{c}{b}xy + ay - ac.
$$

For five or more lines the degree rises; the curve is still “geometric” provided the equation is algebraic.

---

### Book II — Tangents and normals (circle method)

To find the normal at a point $P=(x_0,y_0)$ on a curve $f(x,y)=0$:

Let the normal meet the axis at $Q=(v,0)$. The circle centred at $Q$ and passing through $P$ is

$$
(x-v)^2 + y^2 = (x_0-v)^2 + y_0^2.
$$

Eliminate one variable between this circle and the curve. The resulting equation in the remaining variable must have a *double root* at the point of contact. Imposing that the discriminant vanishes (or that the polynomial and its derivative share a root) determines $v$. The tangent is then the line perpendicular to $PQ$.

This is the first general algebraic method for tangents to algebraic curves.

### Book III — Theory of equations

Every equation is written

$$
P(z) = 0
$$

with all terms on one side.

**Number of roots.** An equation of degree $n$ has $n$ roots (counting complex and negative roots). He factors

$$
(z-a)(z-b)\cdots(z-s)=0.
$$

**Descartes’ rule of signs** (stated without proof):  
the number of positive real roots is at most the number of sign changes in the sequence of coefficients; the number of negative real roots is at most the number of sign changes after the substitution $z\mapsto -z$.

**Depression of a quartic.** After removing the cubic term one obtains

$$
z^4 + pz^2 + qz + r = 0.
$$

He factors it as

$$
(z^2 + az + b)(z^2 - az + c)
$$

and reduces the problem to a cubic resolvent in $a^2$.

He also treats the construction of two mean proportionals between $a$ and $b$:

$$
\frac{a}{x} = \frac{x}{y} = \frac{y}{b}
\qquad\Rightarrow\qquad
x^2 = ay,\quad y^2 = bx,\quad xy = ab,
$$

which he solves by intersecting a parabola and a circle (or hyperbola).

## Structured summary

### **Analytic geometry** as algebraic encoding of loci  
Descartes’ decisive move is the **systematic translation of geometric problems into algebraic equations**. Curves become solution sets of polynomial relations in two variable lengths.  
- In the Pappus locus, distances become linear forms:  
  **$x_1 = a x + b y + c$**, etc.  
- The locus condition becomes a polynomial constraint:  
  **$x^2 P_0(y) + x P_1(y) + P_2(y) = 0$**.   
This is the operator skeleton of modern coordinate geometry.

### **Cartesian variables** without Cartesian axes  
This is explicit: Descartes never draws perpendicular axes.  
He introduces **$x$ and $y$** only as *lengths measured from a reference line*.  
The rectangular coordinate plane is a **later van Schooten / Hudde / Newton refinement**.

### **Classification of curves** by algebraic degree  
Book II distinguishes:  
- *Geometric curves*: algebraic, constructible by ruler and compass.  
- *Mechanical curves*: transcendental (spiral, cycloid).  
This anticipates the algebraic/transcendental divide.

### **Tangents via double-root condition**  
The normal at $P$ is found by intersecting the curve with a circle centered at $Q$.  
Eliminate one variable → impose double root → solve for $v$.  
This is a precursor to implicit differentiation:  
**“The resulting equation… must have a *double root* at the point of contact.”** 

### **Theory of equations** (Book III)  
This covers:  
- Factorization viewpoint: $(z-a)(z-b)\cdots(z-s)=0$.  
- **Descartes’ rule of signs**.  
- Quartic depression and factorization into two quadratics.  
- Construction of two mean proportionals via intersection of conics.

---

## Operator-level matters  
Descartes effectively introduces a **bidirectional operator**:

$$
\mathcal{A} : \text{Geometric configuration} \;\longleftrightarrow\; \text{Algebraic equation}
$$

This operator is **invertible** for algebraic curves:  
- Forward: encode geometry → polynomial constraint.  
- Reverse: decode polynomial → geometric locus.

This is the conceptual ancestor of modern RDG-style mappings between structural and dynamical modes.

---

## Future work
- map *La Géométrie* directly into relational triads — e.g., treating Descartes’ “assume the construction finished → name segments → write relations” as a **Structure → Interaction → Dynamics** pipeline.

