# **Shannon number** 
Game-tree complexity of chess

These formulas are estimates rather than exact closed-form expressions; the true number of legal chess games is finite (thanks to the 50-move rule, the 75-move rule, and threefold-repetition rules) but remains far beyond the reach of exhaustive enumeration. Claude Shannon’s classic lower-bound estimate (1950) for the number of possible chess games is

$$
S \approx \bigl(10^{3}\bigr)^{40} = 10^{120}.
$$

**Notation and reasoning**
- $10^{3}$ approximates the average number of legal possibilities for one full move (a White move followed by a Black reply).  
- 40 is the approximate length of a typical game measured in full moves (i.e., 80 plies / half-moves).  
- The quantity $S$ is therefore a rough lower bound on the size of the game tree (the number of distinct legal sequences of moves from the starting position).

A more modern estimate by Victor Allis uses an average branching factor of 35 and an average game length of 80 plies:

$$
35^{80} \gtrsim 10^{123}.
$$

**General approximation for game-tree complexity**

$$
GTC \ge b^{d},
$$

where  
- $b$ = average branching factor (number of legal moves available from a typical position; roughly 30–35 in chess),  
- $d$ = average depth of the game tree in plies.

**State-space complexity (number of possible positions)**

Shannon also gave an order-of-magnitude estimate for the number of legal positions:

$$
\frac{64!}{32!\,(8!)^{2}\,(2!)^{6}} \approx 10^{43}
$$

(or, in a slightly refined form he quoted, roughly $10^{43}$). Later upper bounds have tightened this figure (modern estimates place the number of reachable legal positions on the order of $10^{44}$–$10^{50}$, depending on whether promotions and other technical constraints are counted).

**Comparison with the physical universe**

The number of atoms in the observable universe is conventionally taken as $\sim 10^{80}$. Thus the Shannon number already exceeds the number of atoms by many orders of magnitude:

$$
10^{120} \gg 10^{80}.
$$
