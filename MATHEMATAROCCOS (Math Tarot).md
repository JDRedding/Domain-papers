# **MATHEMATAROCCOS**
— **SIMPLE SYSTEM SPECIFICATION v0.1**

Formal, depersonalized, RDG-compatible, ASCII-stable, operator-mode.
This document specifies a playable projection of mathemataroccos.

## 1. PURPOSE AND SCOPE

### 1.1 Purpose
This specification defines a **simple, playable procession game** derived from the mathemataroccos symbolic grammar (*mathēma* + *taroccos*).  
The game is a finite operator system. Players traverse archetypes, apply Actions, and accumulate **Insight Points (IP)**.

The game MUST be:
- learnable in under 120 seconds
- mathematically flavored
- structurally consistent with mathemataroccos v1.0 conceptual rules
- non-mystical
- tarot-adjacent in procession form only; not tarot in meaning, suit, number, or icon

### 1.2 Scope
IN SCOPE:
- system definition
- controlled terminology
- linguistic derivation (inherited)
- conceptual requirements
- deck structure (36-archetype projection)
- card taxonomy
- gameplay rules
- action grammar
- implementation constraints
- versioning

OUT OF SCOPE:
- divination
- occult symbolism
- tarot interpretations
- educational “math lesson” overlays
- the full 81-archetype grammar except as a parent mapping (Annex A)

### 1.3 Relationships
Mathemataroccos defines **81 archetypes** (9 Orders × 3; 9 Sequences × 6).  
This document defines a **36-archetype playable reduction**:
- 12 Major Operators ← collapsed from 9 Orders
- 24 Minor Set cards ← 4 of 9 Sequences, 6 cards each

The reduction MUST preserve: mathematical primacy, non-tarot dependency, processional semantics.

---

## 2. CONTROLLED TERMINOLOGY

Terms MUST be used as defined. Informal synonyms are prohibited in formal documentation.

- **System** — this playable framework plus inherited mathemataroccos grammar.
- **Archetype** — one card-level symbolic unit.
- **Order** — parent major group (v1.0). In this game, Orders are not dealt; they inform Major Operator names.
- **Sequence** — minor group / domain suit analogue. Four Sequences are active.
- **Major Operator** — high-impact archetype (12).
- **Minor Set card** — domain-indexed archetype (24).
- **Operator** — transformation encoded as a card Action.
- **Invariant** — property an Action MUST NOT silently destroy unless the Action text says so (hand existence, IP ≥ 0, turn order).
- **Procession** — legal traversal of play: draw → play → resolve → discard.
- **Insight Points (IP)** — non-negative integer score. Win currency.
- **Action** — the resolvable effect printed on an archetype.
- **Controller** — the player who played the card being resolved.
- **Target** — player or card an Action designates.
- **Chain** — additional legal play in the same turn.
- **Block** — cancellation of a card before its Action resolves.
- **Guided Link** — optional cross-reference token; not required for play.

---

## 3. LINGUISTIC DERIVATION RULES

### 3.1 Etymological Roots
- **mathēma** — that which is learned
- **taroccos** — proto-tarot plural morphological skeleton
- **trionfi** — triumphal procession (structural ancestor only)

### 3.2 Morphological Constraints
The system name MUST:
- preserve Greek root *mathēma*
- preserve Italian skeleton *taroccos*
- remain pronounceable
- support plural and adjectival forms

### 3.3 Canonical Name
**mathēmataroccos** is the canonical name.  
Informal Latinized spelling **mathemataroccos** is permitted in ASCII-only media.

### 3.4 Allowed Variants (non-canonical)
mathematarocchi; mathematarocco; mathemataroc; mathemataron; mathemataros.
Variants MUST NOT replace the canonical name in this specification.

### 3.5 Prohibited Labels
MUST NOT appear as official terms: Major Arcana, Minor Arcana, suit (tarot sense), trump (tarot sense), fortune, reading, spread.

---

## 4. CONCEPTUAL REQUIREMENTS

### 4.1 Generative Symbolism
REQ-SYM-01  Symbolism MUST derive from mathematical structure.  
REQ-SYM-02  Mapping preexisting tarot archetypes onto mathematics is PROHIBITED.

### 4.2 Mathematical Primacy
Archetypes MUST represent one or more of:
- operators
- invariants
- structures
- transformations
- dynamical or epistemic concepts

### 4.3 Non-Tarot Dependency
The system MUST NOT reuse tarot suits, tarot numerology, tarot iconography, or tarot meanings.

### 4.4 Processional Semantics
The system MUST encode hierarchy, transformation, insight, and emergence.  
Emergence in play = IP crossing the win threshold via composed Actions.

### 4.5 Requirement Language
MUST / SHALL = mandatory.  
MAY = optional.  
MUST NOT / SHALL NOT = prohibited.

---

## 5. STRUCTURAL ARCHITECTURE

### 5.1 Deck Cardinality
The simple game deck contains **36 archetypes**.  
Cardinality is FIXED for v2.x.

### 5.2 Grouping

#### A. Major Operators — 12 archetypes
High-impact units derived from Orders (see Annex A).

#### B. Minor Sets — 24 archetypes
Four Sequences, six ranks each:
1. Algebra     ranks 1–6
2. Geometry    ranks 1–6
3. Analysis    ranks 1–6
4. Logic       ranks 1–6

Rank is an **action index**, not a tarot number and not a pips-value except where Action text awards IP.

### 5.3 Naming Convention
- Major Operators: operator or invariant names.
- Sequences: mathematical domain names.
- Minor cards: Sequence identifier + rank + short operator name.

### 5.4 Physical / Digital Representation
Each archetype is one card record. Duplicates MUST NOT exist in the 36-card set.

---

## 6. ARCHETYPE TAXONOMY

### 6.1 Major Operators (12)
Canonical list. Order of listing is documentation order, not deal order.

1. Limit  
2. Symmetry  
3. Function  
4. Vector  
5. Infinity  
6. Proof  
7. Chaos  
8. Identity  
9. Mapping  
10. Sequence  
11. Space  
12. Dimension  

Note: **Sequence** here is an archetype name. **Sequence** as a group term remains as defined in §2. Context disambiguates.

### 6.2 Minor Sets (24)
Each Sequence rank maps to a domain-flavored Action class (§9–10).

---

## 7. CARD FORMAT

Each archetype record MUST contain:

1. **Name** — unique string  
2. **Domain** — `Major Operator` | `Algebra` | `Geometry` | `Analysis` | `Logic`  
3. **Symbol** — ASCII-safe glyph or short diagram  
4. **Meaning** — 1–2 declarative sentences; structural, non-oracular  
5. **Action** — resolvable game effect  
6. **Class** — one of §9.1 Action Types (primary)

Optional fields: Link; parent Order/Sequence ID.

### 7.1 Record Template (ASCII)

```
NAME:     <string>
DOMAIN:   <enum>
SYMBOL:   <ascii>
MEANING:  <1-2 sentences>
ACTION:   <effect text>
CLASS:    <Transform|Boost|Swap|Draw|Block|Chain>
```

### 7.2 Example

```
NAME:     Symmetry
DOMAIN:   Major Operator
SYMBOL:   <>
MEANING:  Equivalence under reflection. Direction of an effect is reversible.
ACTION:   Reverse polarity/direction of the next Action that would resolve.
CLASS:    Transform
```

---

## 8. GAMEPLAY RULES

### 8.1 Players
Legal player count: 2–4.  
Default rules assume 2. For 3–4, Invariants in §8.7 still hold.

### 8.2 Setup
1. Shuffle the 36-card deck.  
2. Each player draws **3** cards (hidden).  
3. Remaining cards form the **Library** (face-down).  
4. **Discard** begins empty.  
5. Each player’s IP := 0.  
6. First player: agreed method that does not reference fortune-telling.

### 8.3 Turn Structure (Procession)
A turn is exactly:

1. DRAW 1 from Library (if Library empty, see §8.6).  
2. PLAY 1 card from hand.  
3. RESOLVE its Action unless Blocked.  
4. DISCARD the played card (Blocked cards are also discarded unless Action text says otherwise).  

Hand size after a normal turn: 3, if the player began with 3 and drew 1 and played 1.

### 8.4 Priority and Timing
- Play is sequential. No shared stack unless a Block is declared.  
- **Next card / next Action** means the next Action that would resolve after the current one, for any player, unless text says “you.”  
- Block MUST be declared immediately when the target card is played and before its Action applies.  
- Multiple Chains in one turn: resolve the current card fully, then play the extra card, repeat until no Chain remains.

### 8.5 Win Condition
A player with **IP ≥ 10** at the end of any Action resolution wins.  
If two or more players are ≥ 10 after the same Action, the player with the higher IP wins.  
If IP values are equal, play continues until a unique maximum ≥ 10 exists at end of a resolution.

### 8.6 Library Exhaustion
If Library is empty when a draw is required: shuffle Discard into a new Library, then draw.  
If both are empty, skip draws; play continues from hands.  
If a player cannot play a card, that player passes (no Action). Pass does not award IP.

### 8.7 Invariants
INV-01  IP SHALL NOT go below 0. Excess loss is truncated.  
INV-02  A player cannot be forced to discard or swap from an empty hand; the excess part of the Action fails.  
INV-03  Turn order is cyclic and is not changed except by explicit Action text (none in v2.1 baseline).  
INV-04  Hidden hands remain hidden except where an Action reveals.

---

## 9. ACTION GRAMMAR

### 9.1 Action Types (closed set)
Every Action’s primary class MUST be one of:

- **Transform** — modify another Action’s effect or targeting.  
- **Boost** — change IP (normally increase controller IP).  
- **Swap** — exchange cards between zones or players.  
- **Draw** — move cards from Library to hand.  
- **Block** — cancel a card before resolution.  
- **Chain** — permit one additional PLAY in the same turn.

Major Operators use stronger instances.  
Minor Set cards use domain-specific instances of the same six types.

### 9.2 Operator Strength
Majors MAY exceed Minor numeric magnitudes (e.g., Infinity +3 vs rank-1 +1).  
Minors MUST NOT Block Major Operators unless a future version adds such text.  
v2.1: Algebra 6 Blocks any Minor; other 6s Block only their own Sequence.

### 9.3 Transform Scope
A Transform that names “the next Action” attaches as a one-shot modifier.  
If no Action occurs before the transformer’s controller’s next DRAW step, the Transform expires.

---

## 10. CANONICAL ACTIONS

### 10.1 Major Operators

```
Limit       SYMBOL: ->L
MEANING:    Approach without arrival. Values may be bounded.
ACTION:     Transform. The next Boost awards at most +1 IP.
CLASS:      Transform

Symmetry    SYMBOL: <>
MEANING:    Balance under reflection. Direction is reversible.
ACTION:     Transform. Reverse direction of the next Action
            (gain<->loss of the same magnitude, truncated by INV-01;
             draw<->discard same count; swap controller<->target).
CLASS:      Transform

Function    SYMBOL: f(x)
MEANING:    Input is sent to output by a defined rule.
ACTION:     Transform. The next card YOU play this turn copies the
            last fully resolved Action instead of its printed Action.
CLASS:      Transform

Vector      SYMBOL: ->
MEANING:    Quantity with direction.
ACTION:     Boost. You gain +2 IP. Choose another player. That
            player gains +1 IP.
CLASS:      Boost

Infinity    SYMBOL: inf
MEANING:    Unbounded extent within the scoring model.
ACTION:     Boost. You gain +3 IP.
CLASS:      Boost

Proof       SYMBOL: |-
MEANING:    A closed justification. A claim is stopped or sealed.
ACTION:     Block any one card as it is played.
CLASS:      Block

Chaos       SYMBOL: ~=
MEANING:    Sensitive dependence. Local state is disrupted.
ACTION:     Each player discards 1 card. You discard last.
CLASS:      Transform

Identity    SYMBOL: I
MEANING:    The unit that leaves structure unchanged.
ACTION:     Invariant overlay: Transforms targeting your next card
            fail. You gain +1 IP.
CLASS:      Boost

Mapping     SYMBOL: |->
MEANING:    Correspondence between collections.
ACTION:     Swap hands with one target player.
CLASS:      Swap

Sequence    SYMBOL: (an)
MEANING:    Ordered succession of terms.
ACTION:     Chain. After this resolves, play one extra card, then
            draw 1.
CLASS:      Chain

Space       SYMBOL: R^n
MEANING:    The ambient domain of a structure.
ACTION:     Draw 1. You MAY play that card immediately. This play
            is not itself a Chain.
CLASS:      Draw

Dimension   SYMBOL: dim
MEANING:    Count of independent degrees of freedom.
ACTION:     Draw 2. Put one into hand; discard the other.
CLASS:      Draw
```

### 10.2 Minor Sets

#### Sequence of Algebra
```
A1  +     Boost    You gain +1 IP.
A2  *     Draw     Draw 1.
A3  <->   Swap     Swap 1 card with a target player (you choose
                   both cards if both hands are non-empty).
A4  ^     Transform Boost overlay: your next card this turn gives
                   +1 IP in addition to its Action (if it already
                   gives IP, +1 extra).
A5  o     Chain    Play one extra card this turn.
A6  0     Block    Block a Minor Set card.
```

#### Sequence of Geometry
```
G1  /\    Boost    You gain +1 IP.
G2  _|_   Transform Next Action’s target player is swapped with
                   its controller (self <-> intended target).
G3  rot   Transform Look at the top 2 Library cards; replace in
                   any order.
G4  []    Draw     Draw 1.
G5  ||    Chain    Play one extra card this turn.
G6  ang   Block    Block a Geometry card.
```

#### Sequence of Analysis
```
An1  int   Boost     You gain +1 IP.
An2  lim   Transform Next Boost awards +1 IP instead of printed
                     magnitude.
An3  d/dx  Transform If the next Action draws, its controller
                     draws 1 additional. If it awards IP, +1 IP.
An4  eps   Draw      Draw 1.
An5  sum   Chain     Play one extra card this turn.
An6  d     Block     Block an Analysis card.
```

#### Sequence of Logic
```
L1  T     Boost     You gain +1 IP.
L2  ~     Transform Invert polarity of the next Action:
                    Boost N -> lose N IP (INV-01);
                    Block -> target resolves twice;
                    Draw N -> discard N;
                    Swap -> Action fails; that controller draws 1.
L3  ?     Transform Look at target hand. That player’s next card
                    this or next turn is played face-up.
L4  v     Draw      Draw 1.
L5  ^     Chain     Play one extra card this turn.
L6  F     Block     Block a Logic card.
```

---

## 11. IMPLEMENTATION CONSTRAINTS

### 11.1 Visual Design
MAY: diagrams, graphs, geometric forms, operator glyphs.  
MUST NOT: tarot iconography, occult symbols, astrological motifs.

### 11.2 Format
Archetypes MUST be representable in ASCII, vector diagrams, and symbolic notation.  
Print and screen implementations MUST use the same Name/Domain/Action text.

### 11.3 Usability
Rules MUST be teachable in under 2 minutes.  
Play MUST NOT require the 81-archetypes.

### 11.4 Determinism
Randomness is limited to shuffle and hidden hands.  
No oracle tables. No “significance” of drawn order beyond Action text.

### 11.5 Cross-Team Consistency
Implementations MUST use §2 terms and §10 Action text verbatim or as a documented localization that preserves effect.

---

## 12. VERSIONING

---

## ANNEX A — MAPPING (INFORMATIVE)

Not required for play. Maps 12 Majors onto Orders (3 archetypes collapsed to 1 playable Operator).

```
O1 Insight        -> Proof, Identity
O2 Structure      -> Space, Dimension
O3 Dynamics       -> Vector, Chaos
O4 Continuity     -> Limit, Infinity
O5 Symmetry       -> Symmetry
O6 Transformation -> Function, Mapping
O7 Abstraction    -> Sequence
O8 Complexity     -> Chaos (shared), Function (shared)
O9 Emergence      -> Infinity (shared)
```

Active Sequences in the 36-card projection: Algebra, Geometry, Analysis, Logic.  
Deferred Sequences (v0.0, not in this deck): Topology, Computation, Probability, Category, Systems.

---

## ANNEX B — TEACH SCRIPT (NORMATIVE LENGTH, INFORMATIVE WORDING)

“36 cards. 12 majors, four domains of six. Deal 3. On your turn draw 1, play 1, do what it says, discard it. First to 10 Insight Points wins. Boost adds points. Draw draws. Swap trades. Block cancels. Chain lets you play another. Transform changes the next effect. No fortunes. Only operators.”

Target duration: ≤ 120 seconds.

---

# END OF SPECIFICATION v0.1
