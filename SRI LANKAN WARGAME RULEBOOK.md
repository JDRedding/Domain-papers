**SRI LANKAN WARGAME RULEBOOK**  
*Sixteen Soldiers • Peralikatuma • Kotu Ellima*  
*Expanded Alquerque War-Game Family*

---

This note is a concise rulebook for a family of Sri Lankan Alquerque-style war-games (Sixteen Soldiers, Peralikatuma, Kotu Ellima). It defines board geometry, piece counts, movement and (short‑leap) capture rules, win conditions, strategic guidance, optional local variants, and an appendix comparing related Indian triangular war-games.

- Short-leap (Alquerque/draughts-style) captures along marked lines.
- Captures **optional** (not mandatory) — the main contrast with the Indian games.
- Movement to any adjacent vacant point along a line (orthogonal or diagonal where marked).
- One piece moved per turn; move **or** capture, not both.
- Win by capturing all opposing pieces, immobilizing the opponent, or resignation.
- Boards built on the classic 5×5 Alquerque grid (25 points) plus triangular wings.

| Game              | Wings | Points | Soldiers per side |
|-------------------|-------|--------|-------------------|
| Sixteen Soldiers  | 2     | 31     | 16                |
| Peralikatuma      | 4     | 37     | 23                |
| Kotu Ellima       | 4     | 37     | 24                |

Mandatory captures (including required multi-captures), forced centre opening in most cases, majority-of-pieces win when no further captures possible, and progressive board expansions from the 19-point Lau Kata Kati hourglass.

The strategic notes (wing control, optional-capture tactics, central-grid dominance, density effects) and the optional traditional variants (Royal Soldier, Wing Lock, Double Chop) are useful additions.

## 1. Overview

Sri Lankan war-games belonging to the Alquerque family are two-player abstract strategy games characterised by:

- Short-leap captures (draughts / Alquerque style)  
- Expanded Alquerque boards featuring triangular wings  
- Full initial occupation of each player’s half of the board  
- Non-mandatory captures (in contrast to related Indian war-games)  
- High-mobility, high-attrition tactical play  

The three canonical games are:

1. **Sixteen Soldiers** — 2 wings, 16 pieces per side  
2. **Peralikatuma** — 4 wings, 23 pieces per side  
3. **Kotu Ellima** — 4 wings, 24 pieces per side  

All three share identical movement and capture rules; they differ only in board geometry and piece count.

---

## 2. Board Geometry 

### Board as a graph

Let the board be an undirected simple graph  

$$
G = (V, E),
$$  

where  
- $V$ is the finite set of **points** (vertices),  
- $E \subseteq \binom{V}{2}$ is the set of **lines** (edges).  

Two points $u,v\in V$ are **adjacent** if $\{u,v\}\in E$.

**Cardinalities**:  

$$
\begin{align*}
|V_{\text{Sixteen Soldiers}}| &= 31, \\
|V_{\text{Peralikatuma}}| = |V_{\text{Kotu Ellima}}| &= 37.
\end{align*}
$$  

(The underlying 5×5 Alquerque grid contributes the induced subgraph on 25 vertices; triangular wings add the remaining vertices and edges.)

A **straight line of length 2** is a triple $(x,y,z)$ of distinct vertices such that  

$$
\{x,y\},\{y,z\}\in E
$$  

and the three points are collinear on a marked board line (i.e., the geometric embedding admits a straight segment through them). Write $\mathcal{L}_2$ for the set of all such ordered triples.

### Graph-theoretics

$$
\begin{align*}
\text{Board} &\quad G=(V,E),\\
\text{Position} &\quad P=(S_1,S_2,t),\quad S_1\cap S_2=\emptyset,\\
\text{Move} &\quad p\to q\quad\text{with }\{p,q\}\in E,\; q\text{ vacant},\\
\text{Capture} &\quad (x,y,z)\in\mathcal{L}_2\quad\text{with }x\in S_t,\; y\in S_{3-t},\; z\text{ vacant}.
\end{align*}
$$

All rules of the three Sri Lankan games are completely determined by the choice of the concrete graph $G$ (31- or 37-vertex) and the initial partition $(S_1,S_2)$. The Indian triangular family differs only in that $C(P)$ is **mandatory** whenever non-empty, and multi-captures must be continued to exhaustion.

The game phases can be characterized by density thresholds:

$$
\begin{align*}
\text{Congested opening:} &\quad \delta \gtrsim 0.8, \\
\text{Explosive mid-game:} &\quad 0.4 \lesssim \delta \lesssim 0.8, \\
\text{Positional end-game:} &\quad \delta \lesssim 0.4.
\end{align*}
$$

(Exact numerical cut-offs are approximate and depend on the precise wing sizes.)

These formulas supply a precise notational framework for the strategic principles of wing control, central-grid dominance, optional-capture tactics, and density-driven phase structure. This notation is sufficient for rigorous analysis, computer implementation, or combinatorial-game-theoretic study.

### 2.1 Base Alquerque Grid (5 × 5)

```
o---o---o---o---o
| \ | / | \ | / |
o---o---o---o---o
| / | \ | / | \ |
o---o---o---o---o
| \ | / | / | \ |
o---o---o---o---o
| / | \ | \ | / |
o---o---o---o---o
```

25 points.

### 2.2 Sixteen Soldiers Board (Alquerque + 2 Wings)

```
      o-o-o
       \|/
o---o---o---o---o
| \ | / | \ | / |
o---o---o---o---o
| / | \ | / | \ |
o---o---o---o---o
| \ | / | / | \ |
o---o---o---o---o
| / | \ | \ | / |
o---o---o---o---o
       /|\
      o-o-o
```

- Total points: 25 + 6 = **31**  
- Wings attach to the north and south sides of the grid.

### 2.3 Peralikatuma / Kotu Ellima Board (Alquerque + 4 Wings)

```
          o-o-o
           \|/
    o---o---o---o---o
    | \ | / | \ | / |
o   o---o---o---o---o   o
| \ | / | \ | / | \ | / | 
o---o---o---o---o---o---o
| / | \ | / | / | \ | \ | 
o   o---o---o---o---o   o
    | / | \ | \ | / |
    o---o---o---o---o
           /|\
          o-o-o
```

Left and right wings attach in the same manner to the east and west sides.

- Total points: 25 + 12 = **37**

---

## 3. Pieces

**Sixteen Soldiers**  
- 16 pieces per player  
- Pieces occupy the player’s half of the Alquerque grid plus the nearest triangular wing.

**Peralikatuma**  
- 23 pieces per player  
- Pieces occupy the player’s half of the grid plus two adjacent wings.

**Kotu Ellima**  
- 24 pieces per player  
- Pieces occupy the player’s half of the grid, two adjacent wings, and one additional point (fuller occupation than Peralikatuma).

Pieces are called **soldiers**. Captured soldiers are said to be **chopped**.

### Positions and pieces

A **position** is a triple  

$$
P = (S_1,S_2,t),
$$ 

where  
- $S_1,S_2\subseteq V$ are the sets of points occupied by Player 1 and Player 2 respectively,  
- $S_1\cap S_2=\emptyset$ (no two pieces occupy the same point),  
- $t\in\{1,2\}$ is the player to move.  

The **soldiers** of player $i$ are the elements of $S_i$.  
Initial positions satisfy  

$$
|S_1|=|S_2|=n,
$$  

where  

$$
n=\begin{cases}
16 & \text{(Sixteen Soldiers)},\\
23 & \text{(Peralikatuma)},\\
24 & \text{(Kotu Ellima)}.
\end{cases}
$$

(The precise initial sets occupy each player’s half of the grid plus the appropriate wing(s).)

---

## 4. Movement Rules

### Movement (non-capturing)

A **legal non-capturing move** by player $t$ is a pair $(p,q)$ satisfying  

$$
\begin{align*}
p&\in S_t,\\
q&\notin S_1\cup S_2,\\
\{p,q\}&\in E.
\end{align*}
$$

The resulting position is  

$$
P' = \bigl((S_t\setminus\{p\})\cup\{q\},\; S_{3-t},\; 3-t\bigr)
$$

(with the opponent’s set unchanged).

### 4.1 Turn Structure
- Players alternate turns.  
- Each turn a player moves **one** soldier.  
- A soldier may either move or capture, but not both in the same turn.

On player $t$’s turn the legal actions are the set  

$$
A(P) = M(P)\cup C(P),
$$  

where $M(P)$ is the set of non-capturing moves and $C(P)$ is the set of (possibly multi-)captures.  
Exactly one action from $A(P)$ is chosen; the turn then passes.

### 4.2 Movement
A soldier may move to any adjacent vacant point along a marked line.

Movement is possible:
- Orthogonally (horizontal or vertical)  
- Diagonally (where lines exist)  
- Into or out of the triangular wings  

Movement is free in all directions from the start of the game.

---

## 5. Capture Rules

### Capture (short leap)

A **legal capture** by player $t$ is a triple $(x,y,z)\in\mathcal{L}_2$ such that 

$$
\begin{align*}
x&\in S_t,\\
y&\in S_{3-t},\\
z&\notin S_1\cup S_2.
\end{align*}
$$  

Execution removes the captured soldier and relocates the capturing soldier:  

$$
\begin{align*}
S_t' &= (S_t\setminus\{x\})\cup\{z\},\\
S_{3-t}' &= S_{3-t}\setminus\{y\}.
\end{align*}
$$  

The new position is $P'=(S_t',S_{3-t}',3-t)$.

**Multi-capture.**  

After a capture the same soldier may continue capturing if another legal leap exists from its new location. Because captures are **optional**, a player may stop after any number of leaps (including zero). Formally, a multi-capture is a finite sequence of successive single captures by the same piece; each intermediate landing point must satisfy the vacancy and adjacency conditions above.

### 5.1 Capture Method
Captures use the short leap:

```
[Your soldier] adjacent to [enemy soldier]
Leap over the enemy → land on the vacant point immediately beyond
Enemy soldier is removed (“chopped”)
```

### 5.2 Capture Conditions
- The leap must follow the board’s lines.  
- The leap must be in a straight line.  
- The landing point must be vacant.  
- Captures are **not mandatory**.  
- Multi-captures are permitted but optional.

This non-compulsory capture rule is the principal difference from Indian war-games such as Lau Kata Kati, Dash-guti and Egara-guti, in which captures are compulsory.

---

## 6. Win Conditions

A player wins by:

1. Capturing all enemy soldiers, or  
2. Immobilising the opponent (no legal moves remaining), or  
3. The opponent resigning.

A draw may be declared by mutual agreement or when neither player can force progress.

### Terminal positions and outcome

A position $P$ is **terminal** if  

$$
A(P)=\emptyset
$$  

(or the opponent has already resigned).  

Outcome function $\omega$:  

$$
\omega(P)=\begin{cases}
+1 & \text{if }S_{3-t}=\emptyset\text{ or }A(P)=\emptyset\text{ for the player to move},\\
-1 & \text{(symmetric for the opponent)},\\
0 & \text{draw by mutual agreement or perpetual inability to progress}.
\end{cases}
$$  

(The conventional combinatorial-game values $+1$ = first-player win, $-1$ = second-player win may be assigned according to who faces the terminal position.)

---

## 7. Strategic Principles

Strategy guidance: Emphasis on wing control (flanks/ambush), central 5×5 grid dominance (high mobility), using optional-capture rules tactically (baiting, stalling), and dealing with high initial density.

Optional local variants: Royal Soldier (last unit gains extra moves), Wing Lock (full wing prevents entry), Double Chop (double capture grants extra move).

### Board Representation
Model the board as an undirected graph $G = (V, E)$, where:
- $V$ is the set of intersection points (vertices),
- $E$ is the set of legal movement/capture lines (edges).

Decompose $V = C \cup W$, where:
- $C$ is the central $5 \times 5$ Alquerque grid ($|C| = 25$),
- $W = W_1 \cup W_2 \cup \dots$ is the union of the triangular wings.

The subgraph induced by $C$ has the classic Alquerque line structure (orthogonal + selected diagonals). Each wing $W_i$ is a triangular subgraph attached to the boundary of $C$.

### Mobility and Central Grid Dominance
The **mobility** of a point $v \in V$ is its graph degree:

$$
\mu(v) = \deg(v) = |\{ u \in V : \{v,u\} \in E \}|.
$$

A player’s **tactical control** of the center can be quantified by the occupied high-mobility subset:

$$
\mathcal{T} = \sum_{v \in C \cap \text{own pieces}} \mu(v).
$$

Higher $\mathcal{T}$ correlates with more available capture routes and greater freedom of movement.

### 7.1 Wing Control
The triangular wings serve as:
- Flanking routes  
- Ambush pockets  
- Safe retreat zones  

Loss of access to a wing frequently collapses a player’s position.

Define the **wing-access indicator** for wing $W_i$:

$$
\alpha_i =
\begin{cases}
1 & \text{if the player can move a piece into or through } W_i, \\
0 & \text{otherwise}.
\end{cases}
$$

Loss of wing access is expressed by $\alpha_i = 0$. Strategic collapse risk rises when

$$
\sum_i \alpha_i
$$

falls (especially if both flanking wings are lost). Under the optional **Wing Lock** variant, a fully occupied wing satisfies

$$
|W_i \cap \text{occupied}| = |W_i| \implies \text{entry forbidden}.
$$

### 7.2 Optional Captures
Because captures are not mandatory:
- A player may stall to avoid creating multi-jump opportunities for the opponent.  
- Formations can be built before launching an attack.  
- The opponent can be baited into unfavourable exchanges.

### 7.3 Central Grid Dominance
The 5 × 5 Alquerque grid is the tactical core of the board:
- Greatest number of lines  
- Highest mobility  
- Most capture routes

The central grid maximizes average mobility:

$$
\overline{\mu}_C = \frac{1}{|C|} \sum_{v \in C} \mu(v) > \overline{\mu}_{W_i}
$$

for any wing.  

Wing control is primarily strategic; grid control is primarily tactical.

### 7.4 Soldier Density
High initial density produces:
- A congested early game  
- An explosive mid-game  
- A positional end-game

Let $n$ be the total number of pieces on the board at a given moment and $|V|$ the total number of points.  
**Density** is

$$
\delta = \frac{n}{|V|}.
$$

High initial density corresponds to $\delta$ close to $1$ (nearly full board), producing the congested opening phase. As captures occur, $\delta$ decreases, transitioning through the explosive mid-game into a sparse positional end-game.

---

## 8. Game-by-Game Summary

| Game              | Board      | Wings | Points | Soldiers | Capture Rule | Notes                  |
|-------------------|------------|-------|--------|----------|--------------|------------------------|
| Sixteen Soldiers  | Alquerque  | 2     | 31     | 16       | Optional     | Most common variant    |
| Peralikatuma      | Alquerque  | 4     | 37     | 23       | Optional     | Larger armies          |
| Kotu Ellima       | Alquerque  | 4     | 37     | 24       | Optional     | Fullest occupation     |

---

## 9. Optional Advanced Rules (Traditional Variants)

A **simple capture** exists along an edge when an opposing piece occupies an adjacent vertex and the landing vertex beyond it is empty.  

Because captures are optional, a player may choose a non-capturing move even when a capture is available. The **baiting/stalling value** of a position can be viewed as the difference

$$
\Delta = M_{\text{forced}} - M_{\text{optional}},
$$

where $M_{\text{forced}}$ is the material loss under mandatory capture and $M_{\text{optional}}$ is the expected material under free choice (including formation-building).

The following rules appear in some village traditions and may be included if desired:

- **Royal Soldier**: The last surviving soldier gains extended movement.  
- **Wing Lock**: Occupying every point of a wing prevents enemy entry.  
- **Double Chop**: Capturing two soldiers in one turn grants an extra move.

These are not universal.

### Optional variants 

- **Royal Soldier**  
  When $|S_i|=1$, the unique remaining soldier $r\in S_i$ may move any positive integer number of steps along a straight line of consecutive vacant points (i.e., the ordinary adjacency relation is replaced by the transitive closure restricted to a single geometric line).

  When only one own piece remains, it becomes a **Royal Soldier** whose move set is enlarged. If the ordinary move set of a piece is the closed neighborhood $N[v]$, the royal version may use
  
$$
N_{\text{royal}}[v] = N[v] \cup \{ \text{additional permitted steps} \}
$$

  (exact enlargement depends on local rules, commonly one extra orthogonal or diagonal step).

- **Wing Lock**  
  Let $W\subset V$ be the vertex set of a triangular wing. If $W\subseteq S_i$, then no piece of player $3-i$ may enter any vertex of $W$.

- **Double Chop**  
  If a single turn captures two or more enemy soldiers, the capturing player receives an extra turn (the turn counter $t$ is not flipped). Under the **Double Chop** variant, a double capture ($k=2$) awards an extra move, formally adding one extra turn after any path of length exactly 2.
  
  A **multi-jump sequence** of length $k$ is a path

$$
v_0 \to v_1 \to \dots \to v_k
$$

  in which each consecutive pair realizes a capture.  

---

## 10. Appendix: Board Templates

### Blank Sixteen Soldiers Board (Extended)
```
    o---o---o
     \  |  /
      o-o-o
       \|/
o---o---o---o---o
| \ | / | \ | / |
o---o---o---o---o
| / | \ | / | \ |
o---o---o---o---o
| \ | / | / | \ |
o---o---o---o---o
| / | \ | \ | / |
o---o---o---o---o
       /|\
      o-o-o
     /  |  \
    o---o---o
```

### Blank Peralikatuma / Kotu Ellima Board (4-wing, Extended)
```
          o---o---o
           \  |  /
            o-o-o
             \|/
o     o---o---o---o---o     o
|\    | \ | / | \ | / |    /|
| o   o---o---o---o---o   o |
| | \ | / | \ | / | \ | / | |
o-o---o---o---o---o---o---o-o
| | / | \ | / | / | \ | \ | |
| o   o---o---o---o---o   o |
|/    | / | \ | \ | / |    \|
o     o---o---o---o---o     o
             /|\
            o-o-o
           /  |  \
          o---o---o
```
(Left and right wings attach similarly.)

---

# Appendix: Lau Kata Kati & Related Games  
*(Indian Triangular War-Game Family)*

This appendix covers:

1. Lau Kata Kati (core game)  
2. Butterfly (Mozambique twin)  
3. Dash-guti (board expansion)  
4. Egara-guti (board expansion)  
5. Pretwa (circular-triangular cousin)  
6. Gol-skuish (rare variant)  
7. Structural comparison tables  
8.  board references  

---

## 1. Lau Kata Kati — Core Specification

### Board Geometry
Two triangles joined at a single apex, forming a 19-point hourglass:

```
o-----o-----o
 \    |    /
  o---o---o
   \  |  /
    o-o-o
     \|/ 
      o
     /|\ 
    o-o-o
   /  |  \
  o---o---o
 /    |    \
o-----o-----o
```

### Pieces
- 9 per player  
- All points occupied except the centre  
- The centre is the forced opening capture point  

### Movement
One step along any line to an adjacent vacant point.

### Capture
- Mandatory  
- Short leap (Alquerque style)  
- Multi-capture required when available  
- Captures must follow board lines  

### Win Conditions
- Capture all enemy pieces, or  
- Immobilise the opponent  
- If no further captures are possible, the player with the majority of pieces wins; equal numbers result in a draw.

---

## 2. Butterfly (Mozambique)

**Status**: Exact twin of Lau Kata Kati  
**Board**: Identical 19-point hourglass  
**Rules**: Identical  

**Significance**: Demonstrates historical transmission between India and East Africa.

---

## 3. Dash-guti — Expanded Lau Kata Kati

### Board Geometry
Dash-guti enlarges the Lau Kata Kati hourglass by adding extra ranks and lines:

```
o-----o-----o
 \    |    /
  o---o---o
   \  |  /
    o-o-o
   / \|/ \
  o---o---o
   \ /|\ /
    o-o-o
   /  |  \
  o---o---o
 /    |    \
o-----o-----o
```

### Pieces
10 per player (occasionally 11, depending on region).

### Rules
Movement identical to Lau Kata Kati.  
Captures are mandatory; multi-captures are required.  
Win conditions remain the same.

**Notes**: Dash-guti constitutes the first expansion tier of Lau Kata Kati.

---

## 4. Egara-guti — Larger Expansion

### Board Geometry
Egara-guti further expands Dash-guti, adding more intersection points and lines:

```
o-----o-----o
 \    |    /
  o---o---o
  |\  |  /|
  | o-o-o |
  |  \|/  |
  |   o   |
  |  /|\  |
  | o-o-o |
  |/  |  \|
  o---o---o
 /    |    \
o-----o-----o
```

### Pieces
11 per player (sometimes 12).

### Rules
Identical to Lau Kata Kati: mandatory captures, required multi-captures, and majority-wins endgame.

**Notes**: Egara-guti is the second expansion tier, structurally analogous to certain Alquerque expansions.

---

## 5. Pretwa  — Circular-Triangular Cousin

Pretwa employs a circular board with radial lines and triangular subdivisions:

```
       o-----o 
      / \   / \
     o----.----o
      \  /  \ /
       o-----o
```
(This is a condensed version)

### Pieces
12 per player (varies by region).

### Rules
- Mandatory captures  
- Short leap  
- Multi-capture required  
- Movement along both radial and circular lines  

**Notes**: Pretwa is not a direct expansion of Lau Kata Kati but shares the mandatory-capture rule, full initial occupation (except the centre), and overall Indian war-game structure.

---

## 6. Gol-skuish — Rare Variant

Gol-skuish uses a star-like board with triangular lobes:

```
        o---------------------o
       / o-------------------o \
      / / o-----------------o \ \
     / / / o---------------o \ \ \
    / / / / o-------------o \ \ \ \
   / / / / /  o---------o  \ \ \ \ \
  / / / / /  / o------o  \  \ \ \ \ \
 / / / / /  / /  \  /  \  \  \ \ \ \ \
o-o-o-o-o--o--o----.----o--o--o-o-o-o-o
 \ \ \ \ \  \ \  /  \  /  /  / / / / /
  \ \ \ \ \  \ o------o  /  / / / / /
   \ \ \ \ \  o---------o  / / / / /
    \ \ \ \ o------------o  / / / /
     \ \ \ o--------------o  / / /
      \ \ o----------------o  / /
       \ o------------------o  /
        o--------------------o
```

### Pieces
10–12 per player (regional variation).

### Rules
- Mandatory captures  
- Multi-capture required  
- Movement along the star-triangular lines  

**Notes**: Gol-skuish is the least-documented member of the family.

---

## 7. Structural Comparison Table

| Game            | Board                | Points | Pieces | Capture Rule | Opening Rule            | Relation        |
|-----------------|----------------------|--------|--------|--------------|-------------------------|-----------------|
| Lau Kata Kati   | Hourglass            | 19     | 9      | Mandatory    | Forced centre capture   | Core            |
| Butterfly       | Hourglass            | 19     | 9      | Mandatory    | Forced centre capture   | Twin            |
| Dash-guti       | Expanded hourglass   | ~25    | 10     | Mandatory    | Forced centre capture   | Expansion 1     |
| Egara-guti      | Larger expansion     | ~33    | 11     | Mandatory    | Forced centre capture   | Expansion 2     |
| Pretwa          | Circular-triangular  | ~21    | 12     | Mandatory    | Forced centre capture   | Cousin          |
| Gol-skuish      | Star-triangular      | ~20    | 10–12  | Mandatory    | Forced centre capture   | Rare variant    |

---

## 8. Board Appendix

### 8.1 Lau Kata Kati (19-point)
```
o-----o-----o
 \    |    /
  o---o---o
   \  |  /
    o-o-o
     \|/
      o
     /|\
    o-o-o
   /  |  \
  o---o---o
 /    |    \
o-----o-----o
```

### 8.2 Dash-guti (expanded)
```
o-----o-----o
 \    |    /
  o---o---o
   \  |  /
    o-o-o
   / \|/ \
  o---o---o
   \ /|\ /
    o-o-o
   /  |  \
  o---o---o
 /    |    \
o-----o-----o

```

### 8.3 Egara-guti (larger)
```
o-----o-----o
 \    |    /
  o---o---o
  |\  |  /|
  | o-o-o |
  |  \|/  |
  |   o   |
  |  /|\  |
  | o-o-o |
  |/  |  \|
  o---o---o
 /    |    \
o-----o-----o
```

### 8.4 Pretwa (circular)
```
    o-------------o
   /  o---------o  \
  /  /  o-----o  \  \
 /  /  /  \  / \  \  \
o--o--o----.----o--o--o
 \  \  \  /  \ /  /  /
  \  \  o-----o  /  /
   \  o---------o  /
    o------------o

```

### 8.5 Gol-skuish (star)
```
        o---------------------o
       / o-------------------o \
      / / o-----------------o \ \
     / / / o---------------o \ \ \
    / / / / o-------------o \ \ \ \
   / / / / /  o---------o  \ \ \ \ \
  / / / / /  / o------o  \  \ \ \ \ \
 / / / / /  / /  \  /  \  \  \ \ \ \ \
o-o-o-o-o--o--o----.----o--o--o-o-o-o-o
 \ \ \ \ \  \ \  /  \  /  /  / / / / /
  \ \ \ \ \  \ o------o  /  / / / / /
   \ \ \ \ \  o---------o  / / / / /
    \ \ \ \ o------------o  / / / /
     \ \ \ o--------------o  / / /
      \ \ o----------------o  / /
       \ o------------------o  /
        o--------------------o
```
---

## ⚔️ COMPARISON APPENDIX 
— Sri Lankan vs Indian War‑Games

### **Board Geometry**
```
SRI LANKAN FAMILY (Alquerque + Wings)
-------------------------------------
Base: 5×5 Alquerque grid (25 points)
Sixteen Soldiers: +2 wings → 31 points
Peralikatuma:     +4 wings → 37 points
Kotu Ellima:      +4 wings → 37 points

INDIAN TRIANGULAR FAMILY (Hourglass expansions)
-----------------------------------------------
Lau Kata Kati:   19‑point hourglass
Dash‑guti:       Expanded hourglass (~25 points)
Egara‑guti:      Larger expansion (~33 points)
Pretwa:          Circular‑triangular (~21 points)
Gol‑skuish:      Star‑triangular (~20 points)
```

---

### **Capture Rules**
```
SRI LANKAN
-----------
• Short‑leap captures
• Captures OPTIONAL
• Multi‑capture OPTIONAL
• Positional, formation‑driven tempo

INDIAN
-------
• Short‑leap captures
• Captures MANDATORY
• Multi‑capture REQUIRED
• Forced centre opening (Lau Kata Kati)
• Highly tactical, forcing sequences
```

---

### **Opening Structure**
```
SRI LANKAN
-----------
• Full occupation of half‑board + wings
• No forced opening capture
• Dense, positional opening

INDIAN
-------
• Full occupation except centre
• Centre is forced opening capture
• Immediate tactical engagement
```

---

### **Piece Count**
```
SRI LANKAN
-----------
Sixteen Soldiers: 16 per side
Peralikatuma:     23 per side
Kotu Ellima:      24 per side

INDIAN
-------
Lau Kata Kati:  9 per side
Dash‑guti:     10 per side
Egara‑guti:    11 per side
Pretwa:        12 per side
Gol‑skuish:    10–12 per side
```

---

### **Strategic Character**
```
SRI LANKAN
-----------
• Wing control (flanks, ambush pockets)
• Central grid dominance (high mobility)
• Optional‑capture tactics (baiting, stalling)
• Density‑driven phase transitions

INDIAN
-------
• Forced captures → sharp tactical play
• Multi‑jump sequences dominate outcomes
• Centre control is immediate and decisive
• Less stalling; more forced exchanges
```

---

### **Structural Summary Table**

| Feature | Sri Lankan Family | Indian Triangular Family |
|--------|-------------------|--------------------------|
| Board Type | Alquerque + wings | Hourglass / triangular / circular |
| Points | 31–37 | 19–33 (varies) |
| Capture Rule | **Optional** | **Mandatory** |
| Multi‑Capture | Optional | Required |
| Opening | No forced capture | Forced centre capture |
| Tempo | Positional + tactical | Highly tactical, forcing |
| Key Games | Sixteen Soldiers, Peralikatuma, Kotu Ellima | Lau Kata Kati, Dash‑guti, Egara‑guti, Pretwa, Gol‑skuish |

---

## External Articles
- [Alquerque](https://github.com/OMerkel/Alquerque), https://github.com/OMerkel/Alquerque

