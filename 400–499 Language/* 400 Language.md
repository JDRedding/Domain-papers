# Language
- 400 Language

Language is a structured system of communication used by humans to convey ideas, emotions, and information, encompassing spoken, written, and signed forms. Language is a dynamic and multifaceted system that not only allows humans to communicate but also shapes thought, culture, and society, making it one of the most important tools in human life.

## Definition and Function

Language is a complex system of symbols and rules that enables individuals to communicate and share meaning. It functions as a primary tool for expression, social interaction, and cultural transmission. Humans use language to name objects, describe experiences, convey abstract concepts, and establish social relationships.

“Language” is modeled mathematically in several different traditions. The formulas below are the ones that are actually written down and used, with the usual notation.

## 1. Formal languages and language equations

A **formal language** $L$ over an alphabet $\Sigma$ is a set of finite strings:

$$
L \subseteq \Sigma^*.
$$

The empty string is written $\varepsilon$.

Standard operations:
- union: $A \cup B$
- concatenation: $A \cdot B = \{xy \mid x\in A,\, y\in B\}$
- Kleene star: $A^* = \bigcup_{n\ge 0} A^n$ (with $A^0=\{\varepsilon\}$)

**Language equations** treat languages as unknowns. A context-free grammar $G=(V,\Sigma,R,S)$ is equivalent to a system whose least solution (under inclusion) is the generated language. For each nonterminal $X\in V$,

$$
X = \alpha_1 \cup \cdots \cup \alpha_m
$$

where $X\to\alpha_1,\dots,X\to\alpha_m$ are the productions for $X$.

Example:

$$
S \to aSc \mid b \mid S
\quad\Longleftrightarrow\quad
S = (\{a\}\cdot S\cdot\{c\}) \cup \{b\} \cup S.
$$

The least solution contains $\{a^n b c^n \mid n\in\mathbb{N}\}$.

Left-linear equations of the form

$$
X_i = F(X_1,\dots,X_k)
$$

(with concatenation only on the left by a letter) correspond to finite automata.

## 2. Chomsky hierarchy (production constraints)

| Type | Languages | Typical productions |
|------|-----------|---------------------|
| 3 | Regular | $A\to a$, $A\to aB$ (or left-linear) |
| 2 | Context-free | $A\to\alpha$ |
| 1 | Context-sensitive | $\alpha A\beta \to \alpha\gamma\beta$ ($\gamma\neq\varepsilon$) |
| 0 | Recursively enumerable | $\gamma\to\alpha$ ($\gamma\neq\varepsilon$) |

Inclusions: regular $\subsetneq$ CF $\subsetneq$ CS $\subsetneq$ RE.

## 3. Statistical laws of natural language

**Zipf’s law.** If words are ranked by decreasing frequency, frequency $f$ of rank $r$ satisfies

$$
f(r) \propto \frac{1}{r^s},\qquad s\approx 1.
$$

Normalized (finite vocabulary of size $N$):

$$
P(k;N,s)=\frac{1/k^s}{H_{N,s}},\qquad
H_{N,s}=\sum_{k=1}^N k^{-s}.
$$

The Zipf–Mandelbrot refinement is

$$
f(k)\propto\frac{1}{(k+q)^s}.
$$

**Heaps’ (Herdan) law.** Number of distinct word types $V(n)$ after $n$ tokens:

$$
V(n)\approx K n^\beta,\qquad 0<\beta<1
$$

(typically $\beta\approx 0.4$–$0.6$). In the large-$n$ limit one has the relation $\beta\approx 1/\alpha$ with Zipf exponent $\alpha$.

**Menzerath–Altmann law.** Size $y$ of a constituent as a function of construct size $x$:

$$
y = A x^b e^{-cx}
$$

(or simpler power forms). Longer sentences tend to have shorter clauses; longer words tend to have shorter syllables.

**Piotrowski–Altmann law** (language change / acquisition), logistic growth:

$$
p(t)=\frac{1}{1+a e^{-bt}}.
$$

## 4. Information-theoretic description

Shannon entropy of a discrete source (letters or words) with probabilities $p_i$:

$$
H=-\sum_i p_i\log_2 p_i
$$

(bits per symbol). Conditional / block entropy:

$$
H_n=-\sum_{w\in\Sigma^n}P(w)\log_2 P(w),\qquad
h=\lim_{n\to\infty}\frac{H_n}{n}
$$

is the entropy rate. For printed English, estimates of $h$ lie roughly in $0.6$–$1.3$ bits per character once long-range context is taken into account.

An $n$-gram language model is the chain-rule factorization
“Language” is modeled mathematically in several different traditions. The formulas below are the ones that are actually written down and used, with the usual notation.

## 1. Formal languages and language equations

A **formal language** $L$ over an alphabet $\Sigma$ is a set of finite strings:

$$
L \subseteq \Sigma^*.
$$

The empty string is written $\varepsilon$.

Standard operations:
- union: $A \cup B$
- concatenation: $A \cdot B = \{xy \mid x\in A,\, y\in B\}$
- Kleene star: $A^* = \bigcup_{n\ge 0} A^n$ (with $A^0=\{\varepsilon\}$)

**Language equations** treat languages as unknowns. A context-free grammar $G=(V,\Sigma,R,S)$ is equivalent to a system whose least solution (under inclusion) is the generated language. For each nonterminal $X\in V$,

$$
X = \alpha_1 \cup \cdots \cup \alpha_m
$$

where $X\to\alpha_1,\dots,X\to\alpha_m$ are the productions for $X$.

Example:

$$
S \to aSc \mid b \mid S
\quad\Longleftrightarrow\quad
S = (\{a\}\cdot S\cdot\{c\}) \cup \{b\} \cup S.
$$

The least solution contains $\{a^n b c^n \mid n\in\mathbb{N}\}$.

Left-linear equations of the form

$$
X_i = F(X_1,\dots,X_k)
$$

(with concatenation only on the left by a letter) correspond to finite automata.

## 2. Chomsky hierarchy (production constraints)

| Type | Languages | Typical productions |
|------|-----------|---------------------|
| 3 | Regular | $A\to a$, $A\to aB$ (or left-linear) |
| 2 | Context-free | $A\to\alpha$ |
| 1 | Context-sensitive | $\alpha A\beta \to \alpha\gamma\beta$ ($\gamma\neq\varepsilon$) |
| 0 | Recursively enumerable | $\gamma\to\alpha$ ($\gamma\neq\varepsilon$) |

Inclusions: regular $\subsetneq$ CF $\subsetneq$ CS $\subsetneq$ RE.

## 3. Statistical laws of natural language

**Zipf’s law.** If words are ranked by decreasing frequency, frequency $f$ of rank $r$ satisfies

$$
f(r) \propto \frac{1}{r^s},\qquad s\approx 1.
$$

Normalized (finite vocabulary of size $N$):

$$
P(k;N,s)=\frac{1/k^s}{H_{N,s}},\qquad
H_{N,s}=\sum_{k=1}^N k^{-s}.
$$

The Zipf–Mandelbrot refinement is

$$
f(k)\propto\frac{1}{(k+q)^s}.
$$

**Heaps’ (Herdan) law.** Number of distinct word types $V(n)$ after $n$ tokens:

$$
V(n)\approx K n^\beta,\qquad 0<\beta<1
$$

(typically $\beta\approx 0.4$–$0.6$). In the large-$n$ limit one has the relation $\beta\approx 1/\alpha$ with Zipf exponent $\alpha$.

**Menzerath–Altmann law.** Size $y$ of a constituent as a function of construct size $x$:

$$
y = A x^b e^{-cx}
$$

(or simpler power forms). Longer sentences tend to have shorter clauses; longer words tend to have shorter syllables.

**Piotrowski–Altmann law** (language change / acquisition), logistic growth:

$$
p(t)=\frac{1}{1+a e^{-bt}}.
$$

## 4. Information-theoretic description

Shannon entropy of a discrete source (letters or words) with probabilities $p_i$:

$$
H=-\sum_i p_i\log_2 p_i
$$

(bits per symbol). Conditional / block entropy:

$$
H_n=-\sum_{w\in\Sigma^n}P(w)\log_2 P(w),\qquad
h=\l
im_{n\to\infty}\frac{H_n}{n}
$$

is the entropy rate. For printed English, estimates of $h$ lie roughly in $0.6$–$1.3$ bits per character once long-range context is taken into account.

An $n$-gram language model is the chain-rule factorization

$$
P(w_1\dots w_m)=\prod_{i=1}^m P(w_i\mid w_{i-n+1}\dots w_{i-1}).
$$

These four families—algebraic equations over languages, constrained rewrite systems, rank-frequency power laws, and entropy/rate formulas—are the core mathematical notation used for “language.”

$$
P(w_1\dots w_m)=\prod_{i=1}^m P(w_i\mid w_{i-n+1}\dots w_{i-1}).
$$

These four families—algebraic equations over languages, constrained rewrite systems, rank-frequency power laws, and entropy/rate formulas—are the core mathematical notation used for “language.”

## Forms of Language

- **Spoken Language:** Communication through articulated sounds, which include phonemes (basic sound units) combined into words and sentences.  
- **Written Language:** Representation of spoken language through symbols (letters or characters), allowing information to be recorded and shared across time and space.  
- **Sign Language:** Visual-gestural languages used primarily by deaf communities, which have their own grammar and syntax separate from spoken languages.  

## Components of Language

- **Phonology:** Study of sound patterns and their organization.  
- **Morphology:** Structure and formation of words.  
- **Syntax:** Rules governing sentence structure.  
- **Semantics:** Meaning of words and sentences.  
- **Pragmatics:** Contextual use of language in communication, including tone, politeness, and social norms.  

## Types and Variations

Languages can be classified into:

- **Natural languages:** Developed organically in human societies (e.g., English, Spanish, Chinese).  
- **Constructed languages (conlangs):** Deliberately created for specific purposes (e.g., Esperanto, programming languages).  
- **Programming languages:** Formal systems used to communicate with computers (e.g., Python, Java).  

## Cultural and Cognitive Significance

Language is central to culture and identity, reflecting traditions, history, and social norms. Cognitively, language influences thought, problem-solving, and perception of reality, a phenomenon explored in linguistics and psychology.

## Language Evolution

Languages evolve over time due to migration, cultural exchange, technological change, and other social factors. Dialects, slang, and new words continuously emerge, demonstrating the adaptability and expansiveness of human communication.


