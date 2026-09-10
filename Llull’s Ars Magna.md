**Llull’s *Ars Magna*** is a 13th-century combinatorial system devised by Ramon Llull to explore truth, theology, and knowledge through systematic combinations of fundamental concepts. Llull’s *Ars Magna* was a pioneering attempt to encode inquiry in a universal combinatorial system and to generate arguments from a small set of first principles. Though rooted in a theological program, it anticipated later work in logic, combinatorics, and systematic method, and it remains a landmark in the history of ideas and a precursor to formal approaches that would later inform computation.

## **Purpose**  
Ramon Llull (c. 1232–1315/16), a Catalan philosopher, theologian, and logician, developed the *Ars Magna* (“The Great Art”) as a universal method for demonstrating Christian doctrine and arguing with non-Christians on rational grounds. Llull’s aim was missionary persuasion and universal disputation—an engine for *reasoning structure*, not *truth verification*. He meant the system to go beyond ordinary rhetoric and dialectic and to offer a kind of mechanical reasoning for theological and philosophical inquiry—a tool, as he put it, for “proving the truths of faith” by combining concepts in an orderly way. In effect, Llull offered an early form of algorithmic reasoning: mechanical procedures that could survey the relevant combinations of fundamental concepts.

## Llull’s System

- **Rotating diagrams** with letters representing divine or philosophical concepts
- **Fixed question types** (“whether,” “what,” “why,” etc.) that forced structured argument generation.
- **Combinatorial explosion:** the machine could produce many conceptual pairings and argumentative forms.
- **Human judgment required:** Llull believed truth would emerge from lawful combinations, but the system itself did not *test* truth. 

## **Structure and Methodology**  
The *Ars* rests on a set of basic principles, or attributes of God and creation. Llull represented these as letters or symbols and devised procedures for combining them:

- **Fundamental figures.** Circles and other diagrams encoded core notions such as Goodness, Greatness, Eternity, Power, Wisdom, Will, Virtue, Truth, and Glory.  
- **Combinatorial disks.** Rotating figures and aligning letters generated pairings and larger combinations of these principles.  
- **Logical operations.** Each combination could be read as a proposition or argument, so that the system produced candidate truths by rule rather than by inspiration alone.  
- **Hierarchical organization.** More complex reasoning was built by combining simpler results, making relations among ideas explicit and systematic.

## Llull’s Combinatorial Disks

Llull’s **combinatorial disks** are the graphic engines of the *Ars Magna*: circles, triangles, and actual rotating parchment wheels (*volvelles*) that generate pairings and triples of concepts. They are not a calculator in the modern sense. They are a method for exhaustively lining up first principles so that a trained user can turn those alignments into questions and arguments.

The system changed over Llull’s life. The earlier **quaternary** Art used more figures and sixteen dignities. The mature **ternary** Art—especially the *Ars brevis* and *Ars generalis ultima* (c. 1305–1308)—is the version usually meant by “the disks.” It works with nine letters, **B–K** (no J), each of which can stand for a different concept depending on which figure or column of the Alphabet it is read from.

### First

**First** is a circle of *absolute principles* (the divine “dignities,” also mirrored in creation): goodness, greatness, eternity / duration, power, wisdom, will, virtue, truth, glory.  Chords drawn across the circle show that any term can be subject or predicate of any other — “goodness is great,” “greatness is good,” and so on. In God these attributes convert with one another; in creatures they do not always.

### Second

The second, **T**, holds the *relative principles*, grouped in three colored triangles inside a circle:

- difference – concordance – contrariety
- beginning – middle – end
- majority – equality – minority

These are the relations used to compare and connect the dignities. The same letter **B** that means “goodness” on Figure A means “difference” on Figure T. That reuse is the point of the Alphabet: one letter, many roles.

### The Third 

A triangular table of binary “compartments”—all unordered pairs of the nine letters without repetition. Each pair is a prompt: find a middle term, form a proposition, ask a question. **BC** can be read as “Goodness is great,” or, with a question-letter layered on, “Whether goodness is great.”

### The Fourth 

The true disk is the **Fourth**: three concentric rings, each marked B–K. The outer ring is fixed on the page; the two inner rings are cut from parchment and pinned so they can turn. Aligning the rings produces three-letter strings. Those strings are interpreted by assigning each letter to a column of the Alphabet (dignities, relatives, questions/rules, subjects, virtues, vices). A combination such as **BBB** can be unpacked as something like “whether goodness contains difference.”

The *Tabula generalis* listed the ternary combinations without repetition on a large scale (classically given as 1,680); the Fourth Figure compresses that table into a handheld generator.

Printed and manuscript copies often show the cut-out rings and the facing tables of letter-triples.

### Earlier Versions

Earlier versions were more elaborate. The *Ars demonstrativa* used a dozen primary figures (including theology, law, philosophy, the elements, and the powers of the soul) and a **Demonstrative Figure** of six nested circles plus a rotating triangle—a full volvelle meant to combine several figures at once. Manuscripts sometimes bind those wheels with a string through the center.

### How the Disks Were Used

The “artist” (Llull’s name for the operator) did not treat a random string as a finished proof. Rotation produced a *candidate* combination. The user then interpreted it with the rules of the Art—concordance versus contrariety, beginning–middle–end, majority–equality–minority—and built a demonstration, often by showing that a claim holds of each dignity in turn.

### No built-in criterion
Llull expected the human operator to interpret the generated combinations. LLMs likewise rely on:

- human evaluation
- external tools
- retrieval systems
- constraints or fine-tuning

to separate truth from hallucination.

Llull’s system lacked:

- empirical grounding
- logical consistency checking
- external verification

Modern LLMs similarly lack:

- epistemic self-validation
- reliable fact-checking
- internal models of truth vs. possibility

They produce *coherent sequences*, not *verified knowledge*.

## **The machine enumerates; the theologian judges.**

That is why later readers from Renaissance Lullists to Leibniz treated the wheels as an “alphabet of thought”: a finite set of primitives, a geometric device that generates their combinations, and a hope that method could replace mere eloquence. The disks do not compute truth by themselves. They force every relevant pairing onto the page so that reason has to confront it.

## **Influence and Legacy**  
The *Ars Magna* left a long mark on logic, combinatorics, and later ideas of computation. Medieval and early modern thinkers took up its systematic approach to knowledge. Gottfried Wilhelm Leibniz cited it as a step toward formalizing reasoning and a combinatorial “alphabet of human thought,” an influence often linked to later symbolic logic and algorithmic methods. Beyond theology, the Art affected rhetoric, pedagogy, and early scientific method by suggesting that reasoning itself could be formalized. Llull’s *Ars Magna* was a combinatorial engine that could systematically generate vast numbers of conceptual statements, but it had **no internal mechanism for determining which generated outputs were true**. 

Today’s AI systems, especially LLMs, operate on the same principle: **high-volume generation, weak native validation**. **The parallel is exactly what historians of computation and AI point out:** Llull built a *mechanical generator of propositions* but **not** a *mechanical evaluator of truth*. Modern AI systems—especially LLMs—inherit that same structural asymmetry. Llull believed the divine attributes guaranteed truth if combined correctly. LLMs have no metaphysical anchor—only statistical correlations. Retrieval-augmented generation, symbolic reasoning modules, and fact-checking pipelines can supplement LLMs. Llull’s system had no such augmentation. LLMs generate outputs by recombining learned patterns—statistical “concept disks,” if you will. Like Llull’s machine, they excel at **producing plausible combinations**, but they do not inherently know whether a generated statement is true.

### Generative ideation

Modern researchers explicitly revisit Llull’s method as a model for structured ideation pipelines: combining themes, domains, and methods to generate research ideas. This is essentially Llull’s rotating disks updated for machine learning. Llull’s machine computed *relations among concepts*, not *facts about the world*. LLMs compute *relations among tokens*, not *truth conditions*.
