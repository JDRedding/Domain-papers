# SKI combinator calculus
**SKI combinator calculus** is defined by a set of terms and three reduction rules. The notation below is the standard one used in the literature. These are the essential mathematical definitions and formulas of SKI combinator calculus. All other constructions (Church numerals, pairs, arithmetic, etc.) are built by composing them.

## Term Formation
The set $T$ of terms is the smallest set such that:

- $S, K, I \in T$
- if $\tau_1, \tau_2 \in T$, then $(\tau_1\,\tau_2) \in T$

Application is left-associative, so $xyz$ means $((xy)z)$. Parentheses may be omitted when unambiguous.

## Reduction Rules

$$
\begin{align\*}
Ix &\to x \\
Kxy &\to x \\
Sxyz &\to xz\,(yz)
\end{align\*}
$$

These are the only reduction rules. A term is in *normal form* when no rule applies.

### Basic Equivalences

$$
I \equiv SKK
$$

(or equivalently $I \equiv SKS$). Consequently every occurrence of $I$ may be eliminated, yielding the pure **SK calculus**.

Functional equivalence examples:

$$
\begin{align\*}
SKx\,y &\to y \\
SK &\equiv I \\
SII\,x &\to xx
\end{align\*}
$$

The term $SII$ is often written $U$ (the self-application combinator).

## Abstraction Elimination
(Translation from lambda calculus to SKI)

$$
\begin{align\*}
\lambda x.\,x &= I \\
\lambda x.\,c &= Kc &&\text{(when $x$ is not free in $c$)} \\
\lambda x.\,(yz) &= S\,(\lambda x.\,y)\,(\lambda x.\,z)
\end{align\*}
$$

(The fourth rule $\lambda x.\,(c\,x) = c$ when $x$ is not free in $c$ is a special case that shortens some translations.)

## Boolean Encoding

$$
\begin{align\*}
T &= K \\
F &= SK \quad\text{(or $KI$)} \\
\mathrm{NOT}\,b &= b\,F\,T \\
\mathrm{OR}\,a\,b &= a\,T\,b \\
\mathrm{AND}\,a\,b &= a\,b\,F
\end{align\*}
$$

## Fixed-Point Combinator

One standard SKI form of the Y combinator is

$$
Y = S(K(SII))(S(S(KS)K)(K(SII)))
$$

which satisfies the fixed-point equation

$$
Yg \to g\,(Yg).
$$

## Single-Combinator Basis (Iota)

The improper combinator $\iota$ is defined by

$$
\iota x = x\,SK.
$$

From it the three combinators can be recovered:

$$
\begin{align\*}
I &\equiv \iota\iota \\
K &\equiv \iota(\iota(\iota\iota)) \\
S &\equiv \iota(\iota(\iota(\iota\iota)))
\end{align\*}
$$

