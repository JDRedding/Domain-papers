# **Coin Games**  
Coin Impartial Games on a 1D Track

The number of coins ($n$ coins) is usually 4. Any amount can be used.

This formalizes four related impartial combinatorial games played with an **arbitrary number $n \geq 1$ of coins** on a **one-dimensional board**:

- **Coins**
- **Sliding**
- **Welter’s Game**
- **Turning**

All four are:

- **Impartial:** the same moves are available to either player from a given position.
- **Normal-play:** the player who makes the **last legal move** wins.
- **Finite:** for fixed board size, every play sequence terminates.

They differ only in **move rules** and thus in their **Sprague–Grundy (SG) structure**.

| Game | How far can a coin move? | Can it move right? | Can it jump over coins? | What ends the game? |
|------|---------------------------|---------------------|--------------------------|----------------------|
| **Coins** | 1 square left | No | No | No coin has an empty square to its left |
| **Sliding** | Any number of empty squares left | No | No | No coin has an empty square to its left |
| **Welter** | Any empty square left | No | **Yes** | No coin has an empty square to its left |
| **Turning** | 1 square left or right | **Yes** | No | No coin has an empty square to its left or right |

---

# **Coins**

**Board:**  
A straight line of squares numbered from 0 up to some maximum number $M$.

**Pieces:**  
$n$ coins. Each coin sits on one square. No two coins may share a square.

**Goal:**  
If it is your turn and you have no legal move, you lose.

**How a move works:**  
On your turn, you may pick **any one coin** and slide it **one square to the left**, but only if that square is empty.

**Restrictions:**  
- A coin cannot move right.  
- A coin cannot jump over another coin.  
- A coin cannot move off the board (square 0 is the leftmost square).

**When the game ends:**  
The game ends when **every coin is blocked** — meaning each coin either sits on square 0 or has another coin immediately to its left.  
The player who cannot move loses.

---

# **Sliding Game**

**Board:**  
Same straight line of numbered squares.

**Pieces:**  
$n$ coins, each on its own square.

**Goal:**  
If you have no legal move on your turn, you lose.

**How a move works:**  
On your turn, you may pick **any one coin** and slide it **left any number of squares**, stopping on any empty square you choose.

**Restrictions:**  
- The coin may only slide through **empty squares**.  
- The coin must stop **before** the next coin to its left.  
- No jumping over coins.  
- No rightward movement.

**Example:**  
If a coin is at square 10 and squares 9, 8, and 7 are empty, but square 6 has a coin, you may slide the coin to 9, 8, or 7 — your choice.

**When the game ends:**  
The game ends when **no coin has any empty square to its left**.  
The player who cannot move loses.

---

# **Welter’s Game**

**Board:**  
Same straight line of numbered squares.

**Pieces:**  
$n$ coins.

**Goal:**  
If you have no legal move on your turn, you lose.

**How a move works:**  
On your turn, you may pick **any one coin** and move it to **any empty square to its left**, no matter how far away.

**Key difference from Sliding:**  
You **may jump over other coins**.  
The squares between the starting square and the destination do **not** need to be empty.

**Restrictions:**  
- The destination square must be empty.  
- The destination must be strictly to the left.  
- No rightward movement.

**Example:**  
If a coin is at square 12, and square 3 is empty, you may move the coin directly from 12 to 3 even if squares 11–4 are occupied.

**When the game ends:**  
The game ends when **no coin has any empty square to its left**.  
The player who cannot move loses.

---

# **Turning Game**

**Board:**  
Same straight line of numbered squares.

**Pieces:**  
$n$ coins.

**Goal:**  
If you have no legal move on your turn, you lose.

**How a move works:**  
On your turn, you may pick **any one coin** and move it **one square left or one square right**, as long as the destination square is empty.

**Restrictions:**  
- No jumping over coins.  
- A coin cannot move off the board.  
- Only one-square moves are allowed.

**Example:**  
If a coin is at square 10, you may move it to 9 or 11, provided that square is empty.

**When the game ends:**  
The game ends when **every coin is blocked on both sides** — meaning each coin has no empty square immediately to its left or right.  
The player who cannot move loses.

---

## 1. Common framework

### 1.1 Board and pieces

- **Board:** A linear track of squares labeled

$$
0, 1, 2, \dots, M
$$

  for some fixed integer $M \ge n-1$.
- **Pieces:** $n$ indistinguishable **coins**, each occupying a distinct square.
- **Position notation:** A position is a sorted tuple

$$
(a_1, a_2, \dots, a_n)
$$

  with

$$
0 \le a_1 < a_2 < \dots < a_n \le M.
$$

### 1.2 Play convention

- **Players:** Player 1 and Player 2 alternate moves.
- **Legal move:** Depends on the game variant (Sections 2–5).
- **Normal-play:** If a player has **no legal move** on their turn, they **lose**.

All four games share this framework; only the move rules differ.

---

## 2. Coins - $n$ (1-step local left, no jump)

### 2.1 Rules

- A coin at square $a_i$ may move to square $a_i - 1$ if:
  - $a_i > 0$, and
  - square $a_i - 1$ is **empty**.
- No jumping is allowed.
- No rightward moves are allowed.

Formally, a move is:

$$
(a_1,\dots,a_i,\dots,a_n) \to (a_1,\dots,a_i-1,\dots,a_n)
$$

followed by re-sorting the tuple.

### 2.2 Terminal positions

A position is **terminal** if **no coin** has an empty left neighbor. Equivalently:

- For each coin at $a_i$:
  - either $a_i = 0$, or
  - square $a_i - 1$ is occupied by another coin.

These are the **packed configurations**: coins occupy the lowest available squares with no gaps immediately to their left.

### 2.3 CGT / SG behavior

- **Impartial graph game:** Coins - $n$ is a finite impartial game on the state graph of $n$-coin configurations.
- **SG computation:** For fixed $M$, the SG value

$$
G(a_1,\dots,a_n)
$$

  can be computed by **dynamic programming**:
  - For each position, list all legal moves.
  - Take the **mex** (minimum excluded value) of the SG values of successor positions.
- **P-positions:** Positions with **no legal move** (terminal) have SG value 0. More generally:
  - A position is a **P-position** iff its SG value is 0.
  - A position is an **N-position** iff its SG value is non-zero.

Important subtlety:

- Coins - $n$ is **not** simply “each movable coin = heap of size 1, SG = XOR of number of movable coins”.
- Moving one coin can open or close moves for others; SG depends on the **full pattern** of occupied and empty squares.

---

## 3. Sliding (multi-step local left, no jump)

### 3.1 Rules

- A coin at square $a_i$ may slide left to any square $b$ such that:
  - $0 \le b < a_i$,
  - square $b$ is **empty**, and
  - all squares strictly between $b$ and $a_i$ are **empty**.
- The coin stops just before the next occupied square or at 0.
- No jumping over occupied squares is allowed.
- No rightward moves are allowed.

Formally, a move is:

$$
(a_1,\dots,a_i,\dots,a_n) \to (a_1,\dots,b,\dots,a_n)
$$

with $b$ chosen as above, followed by re-sorting.

### 3.2 Gap decomposition

Let the coins be at $a_1 < a_2 < \dots < a_n$. Define **gaps**:

- **Initial gap:**

  $$
  g_0 = a_1 - 0
  $$

- **Internal gaps:**

$$
g_i = a_{i+1} - a_i - 1 \quad \text{for } i = 1,\dots,n-1.
$$

Intuitively, $g_i$ is the number of empty squares between consecutive coins (or between 0 and the first coin).

### 3.3 SG value

Classical analysis of sliding-coin games shows:

- Each gap $g_i$ behaves like a **Nim heap of size $g_i$**.
- The SG value of the position is:

$$
G = g_0 \oplus g_1 \oplus \dots \oplus g_{n-1},
$$

  where $\oplus$ denotes **nim-sum** (bitwise XOR).

Thus:

- **P-positions:** Those with

$$
g_0 \oplus g_1 \oplus \dots \oplus g_{n-1} = 0.
$$

- **N-positions:** All others.

This is the standard “sliding coins / Silver Dollar without the dollar” result.

---

## 4. Welter’s Game (global left, jumping allowed)

### 4.1 Rules

- A coin at square $a_i$ may move to any empty square $b$ such that:
  - $0 \le b < a_i$,
  - square $b$ is **empty**.
- Jumping over other coins is allowed; intervening squares may be occupied.
- No rightward moves are allowed.

Formally, a move is:

$$
(a_1,\dots,a_i,\dots,a_n) \to (a_1,\dots,b,\dots,a_n)
$$

with $b$ chosen as above, followed by re-sorting.

This is the classical **Welter / Sato game**.

### 4.2 Welter function and SG

Let the coins be at positions $a_1 < a_2 < \dots < a_n$.

The Sprague–Grundy value is given by the Welter function:

```
G = (a1 XOR a2 XOR ... XOR an)
    XOR
    ( ⊕_{i<j} ( 2^(ord2(ai - aj) + 1) - 1 ) )
```

where:

- $\oplus$ is bitwise nim-sum  
- $\mathrm{ord}_2(k)$ is the 2-adic valuation of $k$ (the highest power of 2 dividing $k$)

Key facts:

- The **Sprague–Grundy value** of a Welter position is given by this Welter function.
- A position is a **P-position** iff its Welter value is 0.
- A position is an **N-position** iff its Welter value is non-zero.

The function is **non-local**:

- SG depends on the **pairwise differences** $a_i - a_j$, not just on the positions themselves.
- Simple XOR of the $a_i$ alone is not sufficient.

Alternative formulations via the **mating function** exist and are equivalent.

---

## 5. Turning (1-step local, bidirectional, no jump)

### 5.1 Rules

- A coin at square $a_i$ may move to:
  - $a_i - 1$ if $a_i > 0$ and square $a_i - 1$ is empty, or
  - $a_i + 1$ if $a_i < M$ and square $a_i + 1$ is empty.
- No jumping is allowed.

Formally, a move is:

$$
(a_1,\dots,a_i,\dots,a_n) \to (a_1,\dots,a_i\pm 1,\dots,a_n)
$$

with the target square chosen as above, followed by re-sorting.

This is a **token-sliding impartial game** on a path graph.

### 5.2 Graph view and SG

- The board is a path graph on vertices $0,\dots,M$.
- Coins occupy vertices; legal moves are along edges to empty vertices.
- The position decomposes into **independent regions** (connected components) where coins can move without crossing a jam or boundary.

Conceptual SG structure:

- Each region has a small SG value (often 0, 1, or 2), determined by:
  - the number of free edges,
  - the arrangement of coins and gaps.
- **Immobilized clusters** (coins blocked on both sides or at boundaries) contribute SG value 0.
- **Isolated free steps** and small movable patterns contribute non-zero nimbers.
- The total SG value is the **nim-sum** of the SG values of these independent regions.

Terminal positions:

- Every coin is blocked on both sides (or at the ends) $\Rightarrow$ no legal moves $\Rightarrow$ SG = 0.

---

## 6. Taxonomy

The four games can be classified along several axes:

| Axis            | Coins - $n$                     | Sliding                         | Welter                        | Turning                          |
|-----------------|---------------------------------|----------------------------------|--------------------------------|-----------------------------------|
| **Range**       | Local (1 step)                  | Local (multi-step)              | Global (any left square)      | Local (1 step)                    |
| **Direction**   | Left only                       | Left only                       | Left only                     | Bidirectional (left & right)     |
| **Jumping**     | No                              | No                              | Yes                           | No                                |
| **SG locality** | Local, interactive (DP needed)  | Local, gap-XOR (closed form)    | Non-local (Welter function)   | Local, component-based (graph)   |

Interpretation:

- **Range:** Whether moves are restricted to adjacent squares (local) or can reach any empty square to the left (global).
- **Direction:** Whether coins can move only left or both left and right.
- **Jumping:** Whether coins may jump over other coins.
- **SG locality:**
  - Coins - $n$: local moves, but SG depends on interactions; no simple heap decomposition.
  - Sliding: SG is a clean XOR of gap sizes.
  - Welter: SG given by a non-local function of positions and their differences.
  - Turning: SG arises from local graph components.

---

## 7. CGT and implementation notes

- All four games are **impartial** and **normal-play**, so the **Sprague–Grundy theorem** applies:
  - The SG value of a disjunctive sum of positions is the **nim-sum** of their SG values.
- For fixed $M$, the number of $n$-coin positions is:

$$
\binom{M+1}{n},
$$
  
  which is tractable for moderate $n$ and $M$.

- **Computation strategies:**
  - **Coins - $n$, Turning:** SG via recursive mex / dynamic programming on the state graph.
  - **Sliding:** SG via gap decomposition (no recursion once gaps are known).
  - **Welter:** SG via the closed Welter function (no recursion).

---

# **Appendix A — Frequently Asked Questions (FAQ)**

## **A.1 Board Size and Boundaries**

**Q: Is the board size $M$ fixed for the entire game?**  
Yes. Each game instance chooses a fixed finite board $0..M$. All moves must remain within this range.

**Q: Can the board be infinite?**  
Not in this rulebook. An infinite board changes SG behavior (especially for Sliding and Turning), so the rules assume a finite $M$.

**Q: How large must $M$ be?**  
At minimum, $M \ge n-1$ so the initial position is legal. Larger $M$ simply allows more movement.

---

## **A.2 Coin Identity and Sorting**

**Q: Are coins distinguishable?**  
No. Coins are identical tokens. Only the **set of occupied squares** matters.

**Q: Why do we “re-sort” after a move?**  
Sorting is not a physical action; it is a **notation convention**. Positions are always written as a sorted tuple  
$(a_1 < a_2 < \dots < a_n)$  
to avoid ambiguity.

---

## **A.3 Terminal Positions**

### **Coins, Sliding, Welter**

**Q: When is a position terminal?**  
When **no coin has an empty square to its left**.  
A coin at square $a_i$ is blocked if:

- $a_i = 0$, or  
- $a_i - 1$ is occupied.

### **Turning**

**Q: What does “blocked on both sides” mean?**  
A coin at $a_i$ is blocked if:

- Left neighbor: $a_i - 1$ is occupied or off-board  
- Right neighbor: $a_i + 1$ is occupied or off-board

The game ends only when **every** coin satisfies both conditions.

**Q: Do adjacent coins automatically make the position terminal?**  
No. Adjacent coins block each other on one side, but they may still move on the other side if space exists.

---

## **A.4 Move Legality Clarifications**

### **Sliding**

**Q: Can a coin slide past another coin?**  
No. All intermediate squares must be empty.

### **Welter**

**Q: Can a coin jump over other coins?**  
Yes. Only the **destination** square must be empty.

### **Turning**

**Q: Can coins pass each other?**  
No. Moves are 1-step and cannot jump, so coins never cross.

---

## **A.5 Sprague–Grundy (SG) Behavior**

**Q: Why does Coins - $n$ require dynamic programming?**  
Because moving one coin can open or close moves for others. SG depends on the **full pattern**, not just gaps.

**Q: Why is Sliding just XOR of gaps?**  
Because each gap behaves like an independent Nim heap. No move affects more than one gap.

**Q: Why is Welter non-local?**  
Because SG depends on pairwise 2-adic valuations of differences $a_i - a_j$. This is a global interaction.

**Q: Why are Turning SG values small?**  
Turning decomposes into **local movable regions** on a path graph. Each region has SG in $\{0,1,2\}$.

---

## **A.6 Cycles and Termination**

**Q: Can the game loop forever?**  
No. In all four games, coins never pass each other, and movement is monotone or bounded. The state graph is **acyclic**.

**Q: Can a position repeat?**  
Yes, but only trivially (e.g., moving right then left in Turning). Repetition does not create cycles because the game graph still has no infinite descending chains.

---

## **A.7 Implementation Notes**

**Q: Do I need to track coin labels?**  
No. Treat positions as sets of occupied squares.

**Q: Do I need to track move history?**  
No. SG depends only on the current position.

**Q: Are illegal moves ever ambiguous?**  
No. All move rules are local and deterministic.

---

## **A.8 Relation to Classical Games**

**Q: Is Turning the same as Turning Toads or Dawson’s Kayles?**  
No. This Turning game is **bidirectional token sliding**, not the classical frog/toad or Kayles variants.

**Q: Is Sliding the Silver Dollar game?**  
Yes, except without the “dollar” piece.

**Q: Is Welter the classical Welter/Sato game?**  
Yes. The SG formula matches the standard Welter function.

---

## **A.9 Strategy Questions**

**Q: Are P-positions always unique?**  
Yes. SG = 0 uniquely characterizes P-positions.

**Q: Can I combine multiple boards?**  
Yes. The disjunctive sum of positions has SG equal to the XOR of their SG values.

---

## **A.10 Miscellaneous**

**Q: Can coins move off the board?**  
No.

**Q: Can two coins occupy the same square?**  
Never.

**Q: Can I add or remove coins mid-game?**  
Not in these rules.

---

# **Appendix B — Definition Glossary**

## **B.1 Board and Position Terms**

- **Board** — The finite linear track of squares labeled  
  `0, 1, 2, …, M`.  
  All coins must remain within this range.

- **Square** — A single position on the board. Each square may hold at most one coin.

- **Coin** — An indistinguishable token occupying exactly one square. Coins have no identity; only their positions matter.

- **Position** — A sorted tuple  
  `(a1 < a2 < … < an)`  
  listing all occupied squares.

- **Occupied square** — A square containing a coin.

- **Empty square** — A square containing no coin.

---

## **B.2 Move and Blocking Terms**

- **Legal move** — A move permitted by the rules of the specific game variant.

- **Left move** — Moving a coin to a strictly smaller square index.

- **Right move** — Moving a coin to a strictly larger square index (Turning only).

- **Jump** — Moving a coin to a square while passing over occupied squares. Allowed only in Welter.

- **Slide** — Moving a coin through consecutive empty squares (Coins and Sliding).

- **Blocked** — A coin is blocked in a direction if the adjacent square in that direction is either occupied or off-board.

- **Terminal position** — A position where **no legal moves** exist for the current player.

---

## **B.3 Gap and Locality Terms**

- **Gap** — The number of empty squares between consecutive coins (or between square 0 and the first coin).  
  Formally:  
  `g0 = a1 - 0`  
  `gi = a(i+1) - ai - 1`.

- **Local move** — A move restricted to adjacent squares or contiguous empty squares.

- **Global move** — A move that may target any empty square to the left, regardless of intervening occupancy (Welter).

---

## **B.4 Game-Theoretic Terms**

- **Impartial game** — A game where both players have the same available moves from any position.

- **Normal-play** — The player who makes the **last legal move** wins.

- **Sprague–Grundy value** (SG value, nimber) — A non-negative integer assigned to each position, defined recursively as the mex of SG values of its options.

- **mex** — The **minimum excluded** non-negative integer from a set.

- **P-position** — A position with SG value `0`. The previous player wins with perfect play.

- **N-position** — A position with SG value non-zero. The next player wins with perfect play.

- **Nim-sum** — Bitwise XOR of integers. Used to combine SG values of independent components.

- **Disjunctive sum** — A combination of independent games where a move consists of playing in exactly one component.

---

## **B.5 Variant-Specific Terms**

### **Coins**
- **1-step left move** — A coin may move only one square left if empty.

### **Sliding**
- **Multi-step slide** — A coin may slide left through any number of consecutive empty squares.

### **Welter**
- **Jumping move** — A coin may move to any empty square left of its current position, even if intervening squares are occupied.

- **Welter function** — The closed-form SG formula involving XOR of positions and pairwise 2-adic terms.

### **Turning**
- **Bidirectional move** — A coin may move left or right by one square if empty.

- **Movable region** — A connected segment of squares where coins can move without crossing or being blocked.

---

## **B.6 Implementation Terms**

- **State graph** — The directed acyclic graph of all legal positions and moves.

- **Dynamic programming SG** — Computing SG values by evaluating positions in increasing order of complexity.

- **Indistinguishable tokens** — Coins have no identity; only their positions matter.

---

# **Appendix C — Rule Clarifications & Edge Cases**

This appendix resolves subtle or easily misunderstood aspects of the four coin games.  
It is intended for implementers, CGT analysts, and anyone verifying correctness of SG computations.

---

## **C.1 Board Size and Boundaries**

- The **board** is always a **finite** interval of squares `0..M`.  
- The value of `M` is **fixed for the entire game instance**.  
- All moves must remain within this interval; coins cannot move off-board.  
- Larger `M` increases mobility (especially in Sliding, Welter, and Turning), but does not change the rules.

**Clarification:**  
Welter’s global-left rule does **not** imply an infinite board. The destination must still lie within `0..M`.

---

## **C.2 Coin Identity and Position Representation**

- Coins are **indistinguishable** tokens.  
- A position is always represented as a **sorted tuple** `(a1 < a2 < … < an)`.  
- Sorting is a **notation convention**, not a game action.  
- Only the **set of occupied squares** matters; coin labels do not exist.

**Clarification:**  
Implementations should treat positions as sorted lists or bitsets, not as labeled objects.

---

## **C.3 Blocking and Terminal Conditions**

### **Coins, Sliding, Welter**
A coin at `ai` is **blocked on the left** if:

- `ai = 0`, or  
- square `ai − 1` is occupied.

A position is **terminal** when **no coin** has an empty square to its left.

### **Turning**
A coin at `ai` is blocked if:

- Left neighbor: `ai − 1` is occupied or off-board  
- Right neighbor: `ai + 1` is occupied or off-board

A position is terminal when **every coin** is blocked on **both** sides.

**Clarification:**  
Adjacent coins do **not** automatically create a terminal position.  
Example: `(5,6,8)` is not terminal because coins at 5 and 6 can still move outward.

---

## **C.4 Move Legality Subtleties**

### **Coins**
- Only **1-step left** moves are allowed.  
- No jumping.  
- No rightward movement.

### **Sliding**
- A coin may slide left through **consecutive empty squares only**.  
- It must stop **before** the next occupied square.  
- No jumping.

### **Welter**
- A coin may move to **any empty square** left of its current position.  
- Jumping over occupied squares is allowed.  
- Only the **destination** must be empty.

### **Turning**
- A coin may move **one square left or right** if empty.  
- No jumping.  
- Coins can never pass each other.

**Clarification:**  
Turning is **not** the classical Turning Toads or Dawson’s Kayles; it is pure bidirectional token sliding.

---

## **C.5 Sprague–Grundy Structural Clarifications**

- **Coins‑n:** SG must be computed via **dynamic programming**; moves interact and no closed form exists.  
- **Sliding:** SG is exactly the **nim‑sum of gaps**.  
- **Welter:** SG is given by the **Welter function**, involving XOR of positions and pairwise 2‑adic terms.  
- **Turning:** SG decomposes into **independent movable regions**, each with small SG values (0,1,2).

**Clarification:**  
All four games are impartial and normal-play, so SG theory applies without modification.

---

## **C.6 Acyclicity and Repetition**

- The state graph of each game is **acyclic**.  
- Moves never increase any coin’s maximum reachable region in a way that allows cycles.  
- Repeated positions may occur (e.g., Turning: right then left), but cannot form infinite loops.

**Clarification:**  
Acyclicity guarantees SG values are well-defined.

---

## **C.7 Implementation Notes**

- Treat positions as **sorted sets** of occupied squares.  
- Use **bitsets** or sorted arrays for efficient SG computation.  
- For Coins and Turning, use **DP over the state graph**.  
- For Sliding and Welter, use **closed-form SG formulas**.

**Clarification:**  
SG computation does not require tracking move history; only the current position matters.

---

# External Articles
- Welter's Game https://welter.fuglede.dk/
