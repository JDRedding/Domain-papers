# Checkers/Draughts 

```
BASIC CHECKERS / DRAUGHTS
----------------------------------------
Non-variant‑specific minimal ruleset
----------------------------------------
A simple, basic, concise ASCII rulebook
covering the core universal mechanics of
draughts/checkers
========================================

BOARD
- 8x8 board.
- Only the dark squares are used.
- Each player starts with 12 men on the first three dark rows.
- Men always move exactly one square, but not always diagonally.

TURN STRUCTURE
1. On your turn, you must move one piece.
2. If you can capture, you must capture.

CAPTURING
- A capture is made by jumping over an adjacent enemy piece
  into the empty square immediately beyond it.
- Multiple jumps are allowed and must be taken if available.

PROMOTION
- When a man reaches the opponent’s back rank,
  it becomes a king immediately.

WIN CONDITION
- You win by capturing all opponent pieces
  OR leaving the opponent with no legal move.

DRAW CONDITIONS (simple form)
- Repetition of the same position several times.
- No captures or promotions for many consecutive moves.
- Players agree to a draw.

========================================
              END OF RULES
========================================
```
### **Kings**

A **short king** is a king that:

- **Moves exactly 1 square** per move  
  (in its allowed directions: diagonal, orthogonal, or both depending on the variant)
- **Captures by jumping over an adjacent enemy**  
  (never over a distant enemy)
- **Cannot slide or travel multiple squares**  
  (no long-range movement, no long-range capture landing)
- **Cannot “fly”**  
  (cannot move or capture across multiple empty squares)

**Flying** (in draughts/checkers) means:

> **A king can move and capture any distance along a straight line until blocked.**

A **flying king** is a king that:

1. **Moves any number of squares** along its allowed directions  
   (diagonal in International/Russian/Pool; orthogonal in Turkish; 8‑direction in Frisian).
2. **Captures at long range** by jumping over an enemy piece that may be several squares away.
3. **Continues sliding after the capture** to any empty square beyond the captured piece  
   (except in variants that force landing immediately behind the captured piece).
4. **Can chain multiple long-range captures** in one turn.

## **Mathematical mechanics formalization**
This encodes a unified parametric engine for draughts/checkers.  
Movement, capture, promotion, priority, and terminal conditions are expressed in compact, variant‑agnostic form.  

---

### **1. Board and Positions**
Let the board be a finite grid  

$$
B = \{0,1,\dots,N_x-1\} \times \{0,1,\dots,N_y-1\},
$$

with $N_x = N_y \in \{8,10\}$.

**Dark‑square restriction (most variants):**

$$
S = \{(x,y)\in B \mid x+y \equiv 1 \pmod{2}\}
$$

(or $x+y\equiv 0\pmod{2}$, depending on orientation).

**Full‑board (Turkish):**  

$$
S = B.
$$

Orientation parameter $\omega\in\{\text{standard},\text{NW},\text{NE}\}$ rotates or reflects axes; geometry remains isomorphic.

A position is a pair of disjoint finite sets:

$$
P = (W,B),\qquad W,B\subset S,\quad W\cap B=\emptyset,
$$

with each piece carrying a type $t\in\{\text{man},\text{king}\}$.

---

### **2. Direction Sets**
Directions are integer vectors $d=(d_x,d_y)\in\mathbb{Z}^2\setminus\{(0,0)\}$.

**Diagonal:**  

$$
D_{\text{diag}} = \{(\pm1,\pm1)\}.
$$

**Orthogonal:**  

$$
D_{\text{orth}} = \{(\pm1,0),(0,\pm1)\}.
$$

**Eight directions:**  

$$
D_8 = D_{\text{diag}} \cup D_{\text{orth}}.
$$

Forward half‑spaces for colour $c\in\{+1,-1\}$ (White = +1 advancing in +y):

$$
D_{\text{fwd}}(c) = \{d\in D \mid c\cdot d_y > 0\}.
$$

---

### **3. Movement Predicates**
A piece of type $t$ at square $p\in S$ moves in direction set $D_t$ with range $r_t\in\{\text{short},\text{flying}\}$.

**Short move:**  

$$
\{Move_{\text{short}}(p,d)\} = \{p+d\}\quad\text{if }p+d\in S\text{ is empty}.
$$

**Flying move:**  

$$
\{Move_{\text{fly}}(p,d)\} =
\{p+k d \mid k\ge1,\;p+k d\in S,\;\text{all intermediate squares empty}\}.
$$

Thus:

$$
M(p,t) = \bigcup_{d\in D_t} Move_{r_t}(p,d).
$$

---

### **4. Capture Predicates**
A capture jumps over an enemy piece of colour $e$.

**Short capture:**  

$$
Cap_{\text{short}}(p,d)=
\begin{cases}
\{p+2d\} & p+d\text{ occupied by enemy, }p+2d\in S\text{ empty},\\
\emptyset & \text{otherwise}.
\end{cases}
$$

**Flying capture:**  

$$
  \{Cap}_{\text{fly}}(p,d) = 
  \bigl\{p+k d \bigm| 
  \exists\,1\le m<k,\;
  p+m d\text{ is the unique enemy on the ray},\;
  \text{all other squares on the ray empty},\;
  p+k d\in S\text{ empty}\bigr\}.
$$

**Landing rule parameter $\lambda$:**
- $\lambda=\text{behind}$: enforce $k=m+1$
- $\lambda=\text{free-beyond}$: any $k>m$
- $\lambda=\text{final-square-only}$: additional terminal constraints

Single captures:

$$
C(p,t)=\bigcup_{d\in D_t^{\text{cap}}} Cap_{r_t}(p,d).
$$

---

### **5. Multi‑Jump Sequences**
A legal capturing sequence is:

$$
\gamma=(p_0,p_1,\dots,p_\ell),\qquad \ell\ge1,
$$

with each step a capture and no piece jumped twice (unless variant rules allow).

Let $\Gamma(p,t)$ be all maximal sequences from $p$.

**Promotion (Russian‑style mid‑sequence):**

$$
Promote(p,t)=
\begin{cases}
\text{king} & p\text{ on opponent back rank and }t=\text{man},\\
t & \text{otherwise}.
\end{cases}
$$

If promotion occurs at $p_i$, continue with new type $t' = Promote(p_i,t)$.

---

### **6. Capture Priority**
Let $\mathcal{C}(P)$ be all legal capturing sequences.

**Free choice:** any $\gamma\in\mathcal{C}(P)$.

**Maximum pieces:**

$$
\mathcal{C}_{\max}(P)=\{\gamma\in\mathcal{C}(P)\mid |\gamma|\text{ maximal}\}.
$$

**Value‑based (Frisian):**  
Assign $v(\text{man})=1$, $v(\text{king})=v_k>1$.  
Maximise:

$$
V(\gamma)=\sum_i v(\text{piece jumped at step }i).
$$

**Mandatory capture:** if $\mathcal{C}(P)\neq\emptyset$, only captures are legal.

---

### **7. Legal Moves**

$$
L(P)=
\begin{cases}
\bigcup_{p\in\text{own pieces}}\Gamma(p,t_p) & \mathcal{C}(P)\neq\emptyset,\$$4pt]
\bigcup_{p\in\text{own pieces}}M(p,t_p) & \text{otherwise}.
\end{cases}
$$

---

### **8. Terminal Conditions**

**Ordinary win:**

$$
W_{\text{ord}}(P)=
(W=\emptyset)\;\lor\;(L(P)=\emptyset\text{ for side to move}).
$$

**Misère win:**

$$
W_{\text{mis}}(P)=
(W=\emptyset)\;\lor\;(L(P)=\emptyset\text{ for side to move}).
$$

**Draw predicates:**
- Repetition: position $P$ (incl. side to move) occurs ≥ r times (typically $r=3$).
- No‑progress: $n$ moves without capture or promotion (e.g., $n=40$–50).

---

### **9. Superfamily Instantiation**
| Family | $D_{\text{men}}^{\text{move}}$ | $D_{\text{men}}^{\text{cap}}$ | $r_{\text{king}}$ | $D_{\text{king}}$ |
|--------|----------------------------------|---------------------------------|---------------------|---------------------|
| Orthogonal (Turkish) | orth‑fwd+side | orth | flying | orth |
| Short‑king (English) | diag‑fwd | diag‑fwd | short | diag |
| Flying‑king (International) | diag‑fwd | diag‑any | flying | diag |
| Hybrid 8‑dir (Frisian) | diag‑fwd | $D_8$ | flying | $D_8$ |
| Special | base | base | base | base (+ win‑condition change) |

Other parameters (board size, promotion timing, landing rule $\lambda$, priority function, etc.) instantiate all concrete variants.

---

### **Completeness**
Every legal move, multi‑jump, promotion, priority decision, and terminal condition is expressible via the predicates and equations above.

---

## BASIC CHECKERS (AMERICAN / ENGLISH)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal forward/backward (short).

Capture geometry:
- Men: diagonal forward only.
- Kings: diagonal forward/backward.

King range:
- Kings: short.

--------------------------------------------------------------------
```

## VARIANT CHECKERS

### ARMENIAN (TAMA)
```
--------------------------------------------------------------------
Movement geometry:
- Men: orthogonal forward + sideways + diagonal forward.
- Kings: 8 directions (orthogonal + diagonal).

Capture geometry:
- Men: orthogonal (forward + sideways).
- Kings: mostly orthogonal; some diagonal variants.

King range:
- Kings: flying.

Difference from BASIC:
- Adds orthogonal movement/capture; kings fly; men move partly diagonal.

--------------------------------------------------------------------
```
### CENTRAL-SOUTH GERMAN
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal forward/backward (short).

Capture geometry:
- Men: diagonal forward only.
- Kings: diagonal forward/backward; must land behind capture.

King range:
- Kings: short.

Difference from BASIC:
- Similar to BASIC but stricter king landing rules.

--------------------------------------------------------------------
```
### CHECKERS 10x10 (15 MEN)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal all directions (flying).

Capture geometry:
- Men: diagonal all directions.
- Kings: diagonal all directions.

King range:
- Kings: flying.

Difference from BASIC:
- Flying kings + backward capture for men + 10×10 board.

--------------------------------------------------------------------
```
### INTERNATIONAL 10x10 (20 MEN)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal all directions (flying).

Capture geometry:
- Men: diagonal all directions.
- Kings: diagonal all directions.

King range:
- Kings: flying.

Difference from BASIC:
- Flying kings + backward capture + maximum-capture rule.

--------------------------------------------------------------------
```
### DOUBLE-BACK
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward; some backward movement variants.
- Kings: diagonal both directions (short or flying depending on source).

Capture geometry:
- Men: diagonal forward + backward emphasis.
- Kings: diagonal both directions.

King range:
- Kings: short or flying (variant-dependent).

Difference from BASIC:
- Adds backward movement/capture for men.

--------------------------------------------------------------------
```
### FRISIAN 10x10
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: all 8 directions (orthogonal + diagonal).

Capture geometry:
- Men: all 8 directions.
- Kings: all 8 directions.

King range:
- Kings: flying.

Difference from BASIC:
- Orthogonal captures + flying kings + 8-direction capture.

--------------------------------------------------------------------
```
### GERMAN (DAMESPIEL)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal forward/backward (short).

Capture geometry:
- Men: diagonal forward only.
- Kings: diagonal forward/backward; must land behind capture.

King range:
- Kings: short.

Difference from BASIC:
- Mandatory landing behind captured piece.

--------------------------------------------------------------------
```
### GOTHIC (ALTDEUTSCHES DAMESPIEL)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal forward/backward (short).

Capture geometry:
- Men: 5 directions (forward, diagonal, sideways).
- Kings: same 5 directions.

King range:
- Kings: short.

Difference from BASIC:
- Adds sideways captures; no backward capture for men.

--------------------------------------------------------------------
```
### ITALIAN
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal forward/backward (short).

Capture geometry:
- Men: diagonal forward only; cannot capture kings.
- Kings: diagonal forward/backward.

King range:
- Kings: short.

Difference from BASIC:
- Men cannot capture kings; strict capture priority rules.

--------------------------------------------------------------------
```
### LOSING / SUICIDE / MISÈRE
```
--------------------------------------------------------------------
Movement geometry:
- Same as base variant chosen (often Russian).

Capture geometry:
- Same as base variant.

King range:
- Same as base variant.

Difference from BASIC:
- Win by losing all pieces or having no moves.

--------------------------------------------------------------------
```
### NW DIAGONAL
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward along NW–SE army orientation.
- Kings: diagonal forward/backward (short).

Capture geometry:
- Men: diagonal forward only.
- Kings: diagonal forward/backward.

King range:
- Kings: short.

Difference from BASIC:
- Same rules, different starting geometry.

--------------------------------------------------------------------
```
###NE DIAGONAL
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward along NE–SW army orientation.
- Kings: diagonal forward/backward (short).

Capture geometry:
- Men: diagonal forward only.
- Kings: diagonal forward/backward.

King range:
- Kings: short.

Difference from BASIC:
- Same rules, different starting geometry.

--------------------------------------------------------------------
```
### POOL (AMERICAN POOL CHECKERS)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal all directions (flying).

Capture geometry:
- Men: diagonal all directions.
- Kings: diagonal all directions.

King range:
- Kings: flying.

Difference from BASIC:
- Flying kings + backward capture + free-choice capture.

--------------------------------------------------------------------
```
### RUSSIAN (SHASHKI)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal all directions (flying).

Capture geometry:
- Men: diagonal all directions.
- Kings: diagonal all directions.

King range:
- Kings: flying.

Difference from BASIC:
- Men promote mid-capture and continue as king.

--------------------------------------------------------------------
```
### SCANDINAVIAN (MAKVÆR / RELATED)
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal + orthogonal (varies).

Capture geometry:
- Men: diagonal + orthogonal.
- Kings: diagonal + orthogonal.

King range:
- Kings: usually flying.

Difference from BASIC:
- Orthogonal captures; often flying kings.

--------------------------------------------------------------------
```
### SPANISH
```
--------------------------------------------------------------------
Movement geometry:
- Men: diagonal forward.
- Kings: diagonal all directions (often flying).

Capture geometry:
- Men: diagonal all directions.
- Kings: diagonal all directions.

King range:
- Kings: flying.

Difference from BASIC:
- Flying kings + backward capture; Iberian capture priorities.

--------------------------------------------------------------------
```
### TURKISH (DAMA)
```
--------------------------------------------------------------------
Movement geometry:
- Men: orthogonal forward + sideways.
- Kings: orthogonal all directions.

Capture geometry:
- Men: orthogonal only.
- Kings: orthogonal only.

King range:
- Kings: flying.

Difference from BASIC:
- Orthogonal-only movement/capture; flying kings; uses all 64 squares.
--------------------------------------------------------------------
```

All 19 variants fall into **five mechanical superfamilies** based on *movement geometry*, *capture geometry*, and *king range*:  
1. **Orthogonal Men / Orthogonal Kings** (Turkish-line)  
2. **Diagonal Men / Short Kings** (English-line)  
3. **Diagonal Men / Flying Kings** (International-line)  
4. **Diagonal+Orthogonal Capture Hybrids** (Frisian-line)  
5. **Special Win-Condition or Setup Variants** (Misère, Diagonal-start)

## 🧠 *Mechanics‑first taxonomy*
Mechanism‑indexed classification that makes the relationships between these variants explicit.
The *true* structural divide in draughts is not board size or king range — it’s **capture geometry**.  
Once know whether men capture:

- only forward diagonally  
- diagonally in all directions  
- orthogonally  
- or in all eight directions  

… can predict almost the entire tactical character of the game.

---

# **📐 MECHANICS-FIRST TAXONOMY**

## **1. Orthogonal Movement Family (Turkish-line)**
Men move **orthogonally** (forward/sideways), never diagonally. Kings fly orthogonally.

### Members
- **Turkish**  
- **Armenian** (hybrid: orthogonal capture + diagonal forward move)  
- **Gothic** (semi-orthogonal capture directions; historically transitional)

### Key Mechanics
- Men: orthogonal advance; orthogonal capture  
- Kings: flying orthogonal  
- Capture priority: usually **maximum capture**  
- Board: full 64-square usage in Turkish; partial in Armenian/Gothic

### Why this is a distinct family  
Orthogonal capture fundamentally changes threat geometry: no “triangle” capture nets, only “line” nets. This produces a tactical style closer to **orthogonal chase games** than diagonal draughts.

---

## **2. Diagonal Movement / Short Kings (English-line)**
Men move diagonally forward; kings move one square in all diagonal directions.

### Members
- **Checkers (American/English)**  
- **Italian**  
- **German**  
- **Central-South German**  
- **Pool** (but with flying kings → transitional)  
- **NW Diagonal**  
- **NE Diagonal**

### Key Mechanics
- Men: diagonal forward move; forward-only capture (except Pool)  
- Kings: short-range  
- Capture priority: varies (Italian has strict priority; English free-choice)

### Why this is a distinct family  
Short kings create **local tactical fights** rather than long-range geometry. Italian adds the unique “men cannot capture kings” rule, making it the most asymmetric member.

---

## **3. Diagonal Movement / Flying Kings (International-line)**
Men move diagonally forward but capture in all diagonal directions; kings fly.

### Members
- **International 10×10 (20 men)**  
- **Checkers 10×10 (15 men)**  
- **Russian**  
- **Spanish**  
- **Pool** (flying kings but free-choice capture → hybrid)

### Key Mechanics
- Men: diagonal forward move; capture in **any diagonal direction**  
- Kings: flying  
- Capture priority:  
  - International: **maximum capture**  
  - Russian/Pool: **free choice**  
  - Spanish: mixed historical rules

### Why this is a distinct family  
Flying kings + backward capture for men produces **highly combinatorial capture sequences** and long-range forcing lines.

---

## **4. Hybrid Capture Geometry (Frisian-line)**
Diagonal movement but **capture in all eight directions** (orthogonal + diagonal).

### Members
- **Frisian**  
- **Scandinavian** (historical variants vary)

### Key Mechanics
- Men: diagonal forward move  
- Capture: **orthogonal + diagonal**  
- Kings: flying (usually)  
- Capture priority: Frisian uses **value-based** capture (king > man but < two men)

### Why this is a distinct family  
This is the only family where capture geometry is **8-directional**, creating unique “cross-net” tactics impossible in other draughts.

---

## **5. Special Win-Condition / Setup Variants**
These modify the *objective* or *initial deployment* rather than core movement geometry.

### Members
- **Losing / Suicide / Misère**  
- **Double-Back** (uncertain; often backward-movement emphasis)  
- **NW Diagonal**  
- **NE Diagonal**

### Key Mechanics
- Misère: win by losing all pieces or having no moves  
- Diagonal-start variants: same rules as English Checkers but different initial geometry  
- Double-Back: unclear; likely backward capture/move emphasis

---

# **🧩 CROSS-FAMILY COMPARISON TABLE**

| Variant | Board | Men Capture | King Range | Capture Priority | Family |
|--------|-------|-------------|------------|------------------|--------|
| **Turkish** | 8×8 | Orthogonal | Flying | Max | Orthogonal |
| **Armenian** | 8×8 | Mostly orthogonal | Expanded | Max | Orthogonal-hybrid |
| **Gothic** | 8×8 | 5 directions | Short | Mixed | Orthogonal-hybrid |
| **Checkers** | 8×8 | Forward diag | Short | Mandatory | Short-king |
| **Italian** | 8×8 | Forward diag | Short | Strict | Short-king |
| **German** | 8×8 | Forward diag | Short | Mixed | Short-king |
| **Central-South German** | 8×8 | Forward diag | Short | Mixed | Short-king |
| **Pool** | 8×8 | Any diag | Flying | Free | Flying-hybrid |
| **Russian** | 8×8 | Any diag | Flying | Free | Flying |
| **International** | 10×10 | Any diag | Flying | Max | Flying |
| **Frisian** | 10×10 | 8-dir | Flying | Value-based | Hybrid |
| **Scandinavian** | 8/10 | 8-dir | Mixed | Mixed | Hybrid |
| **Misère** | 8×8 | Base rules | Base | Base | Special |
| **NW Diagonal** | 8×8 | Base rules | Short | Base | Special |
| **NE Diagonal** | 8×8 | Base rules | Short | Base | Special |

---
# UNIFIED PARAMETRIC DRAUGHTS ENGINE

### USAGE

1. Choose parameter values for BOARD, MEN, KING, PROMOTION,
   CAPTURE PRIORITY, WIN/DRAW.
2. The resulting tuple defines a complete draughts variant.
3. All 19 listed variants are special cases of this engine.

PARAMETER GROUPS
```
----------------

[BOARD]
- SIZE:           {8x8, 10x10}
- SQUARES:        {dark-only, all}
- START_ROWS:     {2, 3}
- MEN_COUNT:      {12, 15, 16, 20}
- ORIENTATION:    {standard, NW-diagonal, NE-diagonal}

[MEN MOVEMENT]
- MOVE_DIR:       {diag-forward, orth-forward, orth-forward+side}
- MOVE_RANGE:     {short}   ; men always 1 square
- CAPTURE_DIR:    {diag-forward, diag-any, orth-any, 8-dir}
- CAPTURE_RANGE:  {short}  ; men always jump 1 enemy

[KING MOVEMENT]
- MOVE_DIR:       {diag-any, orth-any, 8-dir}
- MOVE_RANGE:     {short, flying}
- CAPTURE_DIR:    {diag-any, orth-any, 8-dir}
- CAPTURE_RANGE:  {short, flying}
- LAND_RULE:      {free-beyond, behind-captured, final-square-only}

[PROMOTION]
- PROMOTE_RANK:   {last-rank}
- PROMOTE_TIME:   {end-of-move, mid-sequence}
- PROMOTE_CONT:   {continue-as-king, stop-on-promotion}

[CAPTURE PRIORITY]
- CAPTURE_REQ:    {mandatory, optional}
- PRIORITY:       {none/free, max-pieces, max-value, strict-hierarchy}
- VALUE_MODEL:    {man=1, king>man, custom}

[WIN / DRAW]
- WIN_COND:       {capture-all, block-all, misere}
- DRAW_RULES:     {repetition, no-progress, agreed}
```
---
### MISÈRE (LOSING)
```
---------------
Same parameters as chosen base variant,
except:
- WIN_COND = misere (you win by losing all pieces or having no moves).
```
---
## VARIANT ENCODINGS (EXAMPLES)

### AMERICAN / ENGLISH CHECKERS
```
---------------------------
BOARD:        SIZE= 8x8, SQUARES=dark-only, START_ROWS=3, MEN_COUNT=12
MEN MOVE:     MOVE_DIR= diag-forward, CAPTURE_DIR=diag-forward
KING MOVE:    MOVE_DIR= diag-any, MOVE_RANGE=short,
              CAPTURE_DIR= diag-any, CAPTURE_RANGE=short,
              LAND_RULE= behind-captured (effectively 1 square)
PROMOTION:    PROMOTE_RANK= last-rank, PROMOTE_TIME=end-of-move,
              PROMOTE_CONT= continue-as-king (next turn)
CAPTURE PRIO: CAPTURE_REQ= mandatory, PRIORITY=none/free
WIN/DRAW:     WIN_COND= capture-all OR block-all
```
### INTERNATIONAL 10x10
```
-------------------
BOARD:        SIZE= 10x10, SQUARES=dark-only, START_ROWS=4, MEN_COUNT=20
MEN MOVE:     MOVE_DIR= diag-forward, CAPTURE_DIR=diag-any
KING MOVE:    MOVE_DIR= diag-any, MOVE_RANGE=flying,
              CAPTURE_DIR= diag-any, CAPTURE_RANGE=flying,
              LAND_RULE= free-beyond
PROMOTION:    PROMOTE_RANK =last-rank, PROMOTE_TIME=end-of-move,
              PROMOTE_CONT= continue-as-king (next turn)
CAPTURE PRIO: CAPTURE_REQ= mandatory, PRIORITY=max-pieces
WIN/DRAW:     WIN_COND= capture-all OR block-all
```
### RUSSIAN (SHASHKI)
```
-----------------
BOARD:        SIZE= 8x8, SQUARES= dark-only, START_ROWS=3, MEN_COUNT=12
MEN MOVE:     MOVE_DIR= diag-forward, CAPTURE_DIR=diag-any
KING MOVE:    MOVE_DIR= diag-any, MOVE_RANGE=flying,
              CAPTURE_DIR= diag-any, CAPTURE_RANGE=flying,
              LAND_RULE=free-beyond
PROMOTION:    PROMOTE_RANK= last-rank, PROMOTE_TIME=mid-sequence,
              PROMOTE_CONT= continue-as-king
CAPTURE PRIO: CAPTURE_REQ= mandatory, PRIORITY=none/free
WIN/DRAW:     WIN_COND= capture-all OR block-all
```
### TURKISH (DAMA)
```
--------------
BOARD:        SIZE= 8x8, SQUARES= all, START_ROWS=2, MEN_COUNT=16
MEN MOVE:     MOVE_DIR= orth-forward+side, CAPTURE_DIR=orth-any
KING MOVE:    MOVE_DIR= orth-any, MOVE_RANGE=flying,
              CAPTURE_DIR= orth-any, CAPTURE_RANGE=flying,
              LAND_RULE= free-beyond
PROMOTION:    PROMOTE_RANK= last-rank, PROMOTE_TIME=end-of-move
CAPTURE PRIO: CAPTURE_REQ= mandatory, PRIORITY=max-pieces
WIN/DRAW:     WIN_COND= capture-all OR block-all
```
### FRISIAN 10x10
```
-------------
BOARD:        SIZE= 10x10, SQUARES=dark-only, START_ROWS=4, MEN_COUNT=20
MEN MOVE:     MOVE_DIR= diag-forward, CAPTURE_DIR=8-dir
KING MOVE:    MOVE_DIR= 8-dir, MOVE_RANGE=flying,
              CAPTURE_DIR= 8-dir, CAPTURE_RANGE=flying,
              LAND_RULE= free-beyond
PROMOTION:    PROMOTE_RANK= last-rank, PROMOTE_TIME=end-of-move
CAPTURE PRIO: CAPTURE_REQ= mandatory, PRIORITY=max-value,
              VALUE_MODEL= king>man but <2 men
WIN/DRAW:     WIN_COND= capture-all OR block-all
```
