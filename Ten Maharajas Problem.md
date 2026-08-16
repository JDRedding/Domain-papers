The **Ten Maharajas Problem** is a chess-based puzzle in the Zillions of Games collection, where the goal is to place ten Maharaja pieces on a standard 8×8 chessboard so that no two attack each other. The Ten Maharajas Problem is a mathematical puzzle inspired by chess involving the placement of ten specialized pieces on a board under non-conflict constraints. Its main challenge is combinatorial, akin to the N-Queens family of problems. While historically evocative in name, it does not concern actual historical maharajas beyond nominal inspiration. In short, the puzzle is a pure combinatorial-optimisation / constraint-satisfaction task whose historical name is only decorative; the real interest lies in the extra power of the Maharaja and the resulting increase in search difficulty relative to ordinary queens.

## Nature of the Problem
The Ten Maharajas Problem is a non-attacking placement puzzle in which 10 Maharaja pieces must be placed on a board so that none attacks another. A Maharaja (also called an Amazon or superqueen in fairy chess) combines the moves of a queen (any number of squares horizontally, vertically, or diagonally) and a knight (the familiar L-shaped leap).

The Ten Maharajas Problem is the special case $n=10$ of the $n$-superqueens (or $n$-Amazons / $n$-Maharajas) problem: place $n$ pieces on an $n\times n$ chessboard such that no two attack each other. A Maharaja (Amazon / superqueen) attacks exactly as a queen *or* a knight.

### Puzzle Context
: In Zillions of Games, the "Ten Maharajas Problem" is categorized among chess-related logic puzzles or placement problems. 

It is a direct generalization of the classic N-Queens problem, but the added knight power makes the pieces far stronger, so the combinatorial constraints are stricter. On a standard 8×8 board the maximum number of mutually non-attacking Amazons is only 6; 7 or more is impossible. Consequently the natural setting for *ten* such pieces is a larger board .

These typically involve:
A finite board (often 8×8 or larger, akin to a chessboard).  Most commonly, the board is 10×10 (that Zillions itself mentions in connection with the puzzle).

Distinct pieces (in this case, ten “Maharaja” pieces, modeled after a fairy chess piece with extended movement capabilities beyond the standard king or queen). A Maharaja piece is a combination of a queen and a knight, they must be placed so that no two are attacking each other

Constraints that require the placement of all pieces such that they do not threaten or attack each other, similar in principle to the classical N-Queens Problem.

Computational Challenge:
Combinatorial optimization: You must examine placements that satisfy non-intersecting, non-attacking conditions.

Symmetry considerations: Solutions often leverage board symmetry to reduce redundant searches.

Enumeration or constraint solving: Solutions can be generated systematically using backtracking, constraint propagation, or heuristic search.

## Illustrative Analogy
: Think of the classical 8-Queens Problem, where eight queens must occupy a chessboard without threatening each other. 

The Ten Maharajas Problem generalizes this concept with:
- Ten powerful pieces (maharajas) with unique movement rules.
- Placement restrictions that allow zero conflicts.

Why It’s Interesting
- It blends queen placement logic (like the classic 8 Queens problem) with knight placement constraints.
- The combined movement means that even if two pieces are not in the same row/column/diagonal, they might still attack each other via knight moves.
- It’s a good exercise in combinatorial chess puzzles and fairy chess design.

### Computational character
- The search space is enormous: the number of ways to choose 10 squares on an $n\times n$ board grows as $\binom{n^2}{10}$.
- Each candidate placement must be checked against both the queen-attack graph (rows, columns, diagonals) *and* the knight-attack graph.
- Practical solvers therefore rely on systematic backtracking, constraint propagation, symmetry reduction (rotations and reflections of the board), or integer-linear-programming formulations—exactly the techniques used for the N-Queens family and other fairy-chess independence problems.

### Notation
- Board squares are pairs $(r,c)$ with $r,c\in\{1,2,\dots,n\}$.
- Let $S=\{(r_1,c_1),\dots,(r_n,c_n)\}$ be a set of $n$ distinct occupied squares.
- Two distinct positions $p=(r_i,c_i)$ and $q=(r_j,c_j)$ are said to *attack* each other (written $p\sim q$) if at least one of the following holds:

**Queen-type attacks**

$$
\begin{align*}
r_i&=r_j &&\text{(same row)},\\
c_i&=c_j &&\text{(same column)},\\
|r_i-r_j|&=|c_i-c_j| &&\text{(same diagonal)}.
\end{align*}
$$

**Knight-type attack**

$$
(|r_i-r_j|,\;|c_i-c_j|)\in\{(1,2),(2,1)\}.
$$

### Feasibility condition
A placement $S$ is a solution if and only if

$$
\forall\,p,q\in S,\quad p\neq q\implies p\not\sim q.
$$

Equivalently, the positions form an independent set of size $n$ in the Maharaja graph $G_n$ whose vertices are the $n^2$ squares and whose edges join every pair of squares that attack each other under the rules above.

### Integer-linear-programming formulation
Introduce binary variables

$$
x_{r,c}\in\{0,1\}\qquad(r,c=1,\dots,n),
$$

where $x_{r,c}=1$ means a Maharaja occupies square $(r,c)$. The problem is the pure feasibility ILP

$$
\begin{align}
\sum_{r=1}^n\sum_{c=1}^n x_{r,c}&=n,\\
x_{r,c}+x_{r',c'}&\le 1
\quad\text{for all pairs of squares that attack each other}.
\end{align}
$$

(The second family of inequalities can be written explicitly by enumerating the four queen rays and the eight possible knight leaps from each square.)

### Counting solutions
Let $Q_A(n)$ denote the number of solutions (distinct placements of $n$ non-attacking Amazons on an $n\times n$ board). It is known that

$$
Q_A(n)=0\quad\text{for all }n<10,
$$

while

$$
Q_A(10)=1
$$

up to the action of the dihedral group $D_4$ (rotations and reflections). One fundamental solution on the $10\times 10$ board is the set of positions

$$
\{(1,2),(2,4),(3,6),(4,8),(5,10),(6,1),(7,3),(8,5),(9,7),(10,9)\}
$$

(or any of its images under the symmetries of the square).

### Graph-theoretic view
The independence number of the Maharaja graph satisfies

$$
\alpha(G_n)=n\quad\text{precisely when }n\ge 10
$$

(and is strictly smaller for $n\le 9$). Thus the Ten Maharajas Problem asks whether $\alpha(G_{10})=10$, which is true, and asks for an explicit maximum independent set of that size.

These equations and the associated notation completely characterise the combinatorial constraints of the puzzle.

## Key Points about the Puzzle

Aspect : 
Detail

Number of Pieces : 
10 Maharajas

Objective : 
Place all pieces without conflict or threats

Domain : 
Game/puzzle logic, combinatorial optimization

Approach Techniques : 
Constraint satisfaction, backtracking, combinatorial enumeration

### Relation to known results
OEIS sequences and independent computational enumerations give the number of ways to place $k$ non-attacking Amazons on boards of various sizes; those tables confirm that the independence number for Amazons on 8×8 is 6, while larger boards admit correspondingly larger sets. The Zillions “Ten Maharajas Problem” is simply the concrete instance that asks for a feasible (and preferably all distinct) solutions when $k=10$.

## Sources
Zillions of Games listing notes the problem among other chess and puzzle variants, indicating its combinatorial puzzle nature.












