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

# 

---
