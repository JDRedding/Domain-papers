# Coin Games
Coin Impartial Games on a 1D Track

This repository formalizes four related impartial combinatorial games played with **six coins** on a **one‑dimensional board**:

- **Coins**
- **Sliding**
- **Welter’s Game**
- **Turning**

All four are:

- **Impartial:** the same moves are available to either player from a given position.
- **Normal‑play:** the player who makes the **last legal move** wins.
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
A straight line of squares numbered from 0 up to some maximum number (for example 0–20).

**Pieces:**  
Six coins. Each coin sits on one square. No two coins may share a square.

**Goal:**  
If it’s your turn and you have no legal move, you lose.

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
Six coins, each on its own square.

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
Six coins.

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
If a coin is at square 12, and square 3 is empty, you may move the coin directly from 12 to 3 even if squares 11, 10, 9, 8, 7, 6, 5, and 4 are occupied.

**When the game ends:**  
The game ends when **no coin has any empty square to its left**.  
The player who cannot move loses.

---

# **Turning Game**

**Board:**  
Same straight line of numbered squares.

**Pieces:**  
Six coins.

**Goal:**  
If you have no legal move on your turn, you lose.

**How a move works:**  
On your turn, you may pick **any one coin** and move it **one square left or one square right**, as long as the destination square is empty.

**Restrictions:**  
- No jumping over coins.  
- A coin cannot move off the board.  
- Only one‑square moves are allowed.

**Example:**  
If a coin is at square 10, you may move it to 9 or 11, provided that square is empty.

**When the game ends:**  
The game ends when **every coin is blocked on both sides** — meaning each coin has no empty square immediately to its left or right.  
The player who cannot move loses.

---
---

## 1. Common framework

### 1.1 Board and pieces

- **Board:** A linear track of squares labeled
  
$$
0, 1, 2, \dots, M
$$

  for some fixed integer $M \ge 5$.
- **Pieces:** Six indistinguishable **coins**, each occupying a distinct square.
- **Position notation:** A position is a sorted tuple
  
$$
(a_1, a_2, a_3, a_4, a_5, a_6)
$$

  with
  
$$
0 \le a_1 < a_2 < \dots < a_6 \le M.
$$


### 1.2 Play convention

- **Players:** Player 1 and Player 2 alternate moves.
- **Legal move:** Depends on the game variant (Sections 2–5).
- **Normal‑play:** If a player has **no legal move** on their turn, they **lose**.

All four games share this framework; only the move rules differ.

---

## 2. Coins‑6 (1‑step local left, no jump)

### 2.1 Rules

- A coin at square $a_i$ may move to square $a_i - 1$ if:
  - $a_i > 0$, and
  - square $a_i - 1$ is **empty**.
- No jumping is allowed.
- No rightward moves are allowed.

Formally, a move is:

$$
(a_1,\dots,a_i,\dots,a_6) \to (a_1,\dots,a_i-1,\dots,a_6)
$$

followed by re‑sorting the tuple.

### 2.2 Terminal positions

A position is **terminal** if **no coin** has an empty left neighbor. Equivalently:

- For each coin at $a_i$:
  - either $a_i = 0$, or
  - square $a_i - 1$ is occupied by another coin.

These are the **packed configurations**: coins occupy the lowest available squares with no gaps immediately to their left.

### 2.3 CGT / SG behavior

- **Impartial graph game:** Coins‑6 is a finite impartial game on the state graph of 6‑coin configurations.
- **SG computation:** For fixed $M$, the SG value
  
$$
G(a_1,\dots,a_6)
$$

  can be computed by **dynamic programming**:
  - For each position, list all legal moves.
  - Take the **mex** (minimum excluded value) of the SG values of successor positions.
- **P‑positions:** Positions with **no legal move** (terminal) have SG value 0. More generally:
  - A position is a **P‑position** iff its SG value is 0.
  - A position is an **N‑position** iff its SG value is non‑zero.

Important subtlety:

- Coins‑6 is **not** simply “each movable coin = heap of size 1, SG = XOR of #movable coins”.
- Moving one coin can open or close moves for others; SG depends on the **full pattern** of occupied and empty squares.

---

## 3. Sliding (multi‑step local left, no jump)

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
(a_1,\dots,a_i,\dots,a_6) \to (a_1,\dots,b,\dots,a_6)
$$

with $b$ chosen as above, followed by re‑sorting.

### 3.2 Gap decomposition

Let the coins be at $a_1 < a_2 < \dots < a_n$ (here $n=6$). Define **gaps**:

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

Classical analysis of sliding‑coin games shows:

- Each gap $g_i$ behaves like a **Nim heap of size $g_i$**.
- The SG value of the position is:

$$
G = g_0 \oplus g_1 \oplus \dots \oplus g_{n-1},
$$

  where $\oplus$ denotes **nim‑sum** (bitwise XOR).

Thus:

- **P‑positions:** Those with
  
$$
g_0 \oplus g_1 \oplus \dots \oplus g_{n-1} = 0.
$$

- **N‑positions:** All others.

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
(a_1,\dots,a_i,\dots,a_6) \to (a_1,\dots,b,\dots,a_6)
$$

with $b$ chosen as above, followed by re‑sorting.

This is the classical **Welter / Sato game**.

### 4.2 Welter function and SG

Let the coins be at positions `a1 < a2 < ... < an`.

The Sprague–Grundy value is:

`G = a1 XOR a2 XOR ... XOR an XOR  ⊕_{i<j} ( 2^(ord2(ai - aj) + 1) - 1 )`

where:

- `XOR` is bitwise nim‑sum  
- `ord2(k)` is the exponent of the highest power of 2 dividing `k`; **2‑adic valuation** of $k$

Key facts:

- The **Sprague–Grundy value** of a Welter position is given by this Welter function.
- A position is a **P‑position** iff its Welter value is 0.
- A position is an **N‑position** iff its Welter value is non‑zero.

The function is **non‑local**:

- SG depends on the **pairwise differences** $a_i - a_j$, not just on the positions themselves.
- Simple XOR of the $a_i$ alone is not sufficient.

Alternative formulations via the **mating function** exist and are equivalent.

---

## 5. Turning (1‑step local, bidirectional, no jump)

### 5.1 Rules

- A coin at square $a_i$ may move to:
  - $a_i - 1$ if $a_i > 0$ and square $a_i - 1$ is empty, or
  - $a_i + 1$ if $a_i < M$ and square $a_i + 1$ is empty.
- No jumping is allowed.

Formally, a move is:


$$
(a_1,\dots,a_i,\dots,a_6) \to (a_1,\dots,a_i \pm 1,\dots,a_6)
$$

with the target square chosen as above, followed by re‑sorting.

This is a **token‑sliding impartial game** on a path graph.

### 5.2 Graph view and SG

- The board is a path graph on vertices $0,\dots,M$.
- Coins occupy vertices; legal moves are along edges to empty vertices.
- The position decomposes into **independent regions** (connected components) where coins can move without crossing a jam or boundary.

Conceptual SG structure:

- Each region has a small SG value (often 0, 1, or 2), determined by:
  - the number of free edges,
  - the arrangement of coins and gaps.
- **Immobilized clusters** (coins blocked on both sides or at boundaries) contribute SG value 0.
- **Isolated free steps** and small movable patterns contribute non‑zero nimbers.
- The total SG value is the **nim‑sum** of the SG values of these independent regions.

Terminal positions:

- Every coin is blocked on both sides (or at the ends) ⇒ no legal moves ⇒ SG = 0.

---

## 6. Taxonomy

The four games can be classified along several axes:

| Axis            | Coins‑6                         | Sliding                         | Welter                        | Turning                          |
|-----------------|---------------------------------|----------------------------------|--------------------------------|-----------------------------------|
| **Range**       | Local (1 step)                  | Local (multi‑step)              | Global (any left square)      | Local (1 step)                    |
| **Direction**   | Left only                       | Left only                       | Left only                     | Bidirectional (left & right)     |
| **Jumping**     | No                              | No                              | Yes                           | No                                |
| **SG locality** | Local, interactive (DP needed)  | Local, gap‑XOR (closed form)    | Non‑local (Welter function)   | Local, component‑based (graph)   |

Interpretation:

- **Range:** Whether moves are restricted to adjacent squares (local) or can reach any empty square to the left (global).
- **Direction:** Whether coins can move only left or both left and right.
- **Jumping:** Whether coins may jump over other coins.
- **SG locality:**
  - Coins‑6: local moves, but SG depends on interactions; no simple heap decomposition.
  - Sliding: SG is a clean XOR of gap sizes.
  - Welter: SG given by a non‑local function of positions and their differences.
  - Turning: SG arises from local graph components.

---

## 7. CGT and implementation notes

- All four games are **impartial** and **normal‑play**, so the **Sprague–Grundy theorem** applies:
  - The SG value of a disjunctive sum of positions is the **nim‑sum** of their SG values.
- For fixed $M$, the number of 6‑coin positions is:
  
$$
\binom{M+1}{6},
$$

  which is tractable for moderate $M$.

- **Computation strategies:**
  - **Coins‑6, Turning:** SG via recursive mex / dynamic programming on the state graph.
  - **Sliding:** SG via gap decomposition (no recursion once gaps are known).
  - **Welter:** SG via the closed Welter function (no recursion).

