# REALSPORTS SOCCER — BOARDGAME EDITION  
### Rulebook v1.2

```
===========================================
=        REALSPORTS SOCCER (BOARD)        =
=         3‑Lane / 3‑Player System        =
===========================================
```
## 1. COMPONENTS
```
BOARD: 3 horizontal lanes × 18 spaces long
TEAMS: Orange vs Blue
PIECES PER TEAM:
   F1 – Forward (Lane 1)
   F2 – Midfielder (Lane 2)
   F3 – Defender (Lane 3)
BALL TOKEN: 1
SCORE TRACK: 0–9
TIMER TRACK: 24 turns (standard match)
```

---

## 2. BOARD LAYOUT
```
Lane 1: [1][2][3]...[18]
Lane 2: [1][2][3]...[18]
Lane 3: [1][2][3]...[18]

Orange: spaces 3,3,3 (lanes 1–3)
Blue:   spaces 16,16,16 (lanes 1–3)
Ball:   Lane 2, Space 9
```

---

## 3. TURN STRUCTURE (Simultaneous Movement)
```
1. Possession Check
2. Movement Phase (secret orders → reveal)
3. Kick Phase (team with ball)
4. Collision Resolution
5. Goal Check
6. Advance Timer
```

### 3.1 Secret Movement Orders
Each player writes:

```
F1: +1 / -1 / Stay
F2: +1 / -1 / Stay
F3: +1 / -1 / Stay
```

Then reveal simultaneously.

This preserves the twitchy unpredictability of the original.

---

## 4. MOVEMENT RULES

### 4.1 Lane‑Locked Movement
Players **cannot change lanes**.  
Each piece moves **1 space forward or backward**.

```
Orange → (toward 18)
Blue   ← (toward 1)
```

### 4.2 Wraparound
Players **without the ball** may wrap:

```
18 → 1
1  → 18
```

Ball carriers cannot wrap.

---

## 5. POSSESSION RULES

### 5.1 Gaining the Ball
A player gains possession if:

- They move onto the ball’s space, OR  
- The ball is kicked into their space.

### 5.2 Losing the Ball
Possession is lost if:

- An opponent enters their space (collision), OR  
- A kick is intercepted (low kicks only), OR  
- They are pushed back during collision resolution.

---

## 6. KICK SYSTEM

### 6.1 LOW KICK (Short Pass)
```
Range: 2 spaces forward
Lane: same lane
Interceptable: YES
```

### 6.2 HIGH KICK (Long Pass)
```
Range: 4 spaces forward
Lane: same lane
Interceptable: NO
```

### 6.3 KICK ANGLE REMINDER
```
All kicks stay in the same lane.
(Cross‑lane kick only exists in Optional Tactical Mode.)
```

### 6.4 KICK POWER
After declaring Low or High, the kicker may choose:

```
Spend Momentum → +1 range
OR
Risk Roll (d6):
   1–3: +1 range
   4–6: Turnover (ball becomes loose)
```

---

## 6B. MOMENTUM
```
Gain 1 Momentum token after completing
two successful passes in a row
(without losing possession).

Max Momentum: 1 token.

Spend Momentum to activate Kick Power.
```

---

## 7. COLLISION RESOLUTION
```
If two opposing players end on the same space:

1. The player who MOVED INTO the space
   gains possession of the ball.

2. The other player is pushed back 1 space.

3. If the ball carrier is pushed back,
   they LOSE possession (ball goes to mover).

4. If both moved in simultaneously,
   ball becomes loose.
```

---

## 8. GOAL SYSTEM

### 8.1 Goal Zones
```
Orange scores at Space 1.
Blue scores at Space 18.
```

### 8.2 Scoring
A goal is scored if:

- A ball carrier enters the goal zone, OR  
- A kick lands the ball in the goal zone.

After scoring:

```
Score +1
Reset all pieces to starting layout
Ball returns to Lane 2, Space 9
Timer continues
```

---

## 9. TIMER & MATCH END
Standard match: **24 turns**  
Short match: **16 turns**  
Long match: **32 turns**

If tied → **Sudden Death** (first goal wins).

---

## 10. OPTIONAL RULES

### 10.1 Authenticity Mode
```
REMOVE cross‑lane kick entirely.
High kicks are 100% unblockable.
No Kick Power.
No Momentum.
```

Pure lane‑locked, timing‑based 2600 feel.

---

### 10.2 Cross‑Lane Kick (Optional Tactical Mode)
```
Range: 1 diagonal (lane ±1)
Interceptable: YES
Requires teammate in target lane.
```

Adds modern boardgame depth.

---

### 10.3 Shared Turn Mode (Fast Play)
```
Both teams move simultaneously.
Possession team kicks.
Resolve collisions.
```

Cuts match time by ~40%.

---

### 10.4 Scrolling Field Mode
```
Every 5 turns, shift all pieces 1 space backward
relative to Orange.

Goal zones DO NOT move.
(They remain at spaces 1 and 18.)

Ball scrolls unless possessed.
```

Recreates the 2600’s pseudo‑scrolling field.

---

## 11. SOLO AI (Blue Team)
```
Blue moves each piece toward:
1. The ball (if within 3 spaces), otherwise
2. Orange’s goal zone (space 1).
```

Simple, fast, pressure behavior.

---

## 12. STARTING POSSESSION
```
Standard: Orange begins with the ball
at Lane 2, Space 9.

Alternative: Coin flip for kickoff.
```

---

## 13. QUICK‑REFERENCE (v1.2)
```
===========================================
= MOVEMENT =
Lane‑locked; 1 space; wrap if no ball.

= KICKS =
Low: 2 spaces, interceptable.
High: 4 spaces, not interceptable.
Power: +1 range (Momentum or d6 Risk Roll).

= MOMENTUM =
2 passes → 1 token (max 1).

= COLLISIONS =
Mover always gains ball; pushed-back carrier loses it.

= GOALS =
Orange → 1
Blue → 18

= TIMER =
24 turns standard.

= SCROLL MODE =
Board scrolls; goal zones fixed.

= SOLO AI =
Blue moves toward ball or Orange goal.

= KICK LANES =
All kicks stay in-lane (unless optional cross-lane).
===========================================
```

---
