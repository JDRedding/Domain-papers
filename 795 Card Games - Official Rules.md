# Card Games
- Official Rules
- - 795 Card games
    
The official rules of card games provide standardized instructions for playing, scoring, and determining winners across hundreds of popular games, with resources available from online guides and authoritative books. With complete rules on popular card games, including the new international laws of contract bridge, this includes  sections on: choosing games for particular occasions, teaching card games to children, the etiquette of card games, technical terms used in card games, and more.

## Direct summary
- This note is a short overview of resources and background for "795 — Card games." It points readers to comprehensive online and print references for official card-game rules, explains practical uses, and lists relevant keywords and game types.

## Key points
- Primary online resources: links to an Official Game Rules website (A–Z card games) and Bicycle Cards' how-to-play guides for common games (Poker, Bridge, Canasta).
- Authoritative print reference: Albert H. Morehead’s Official Rules of Card Games (covers ~300+ games, scoring, terminology).
- Historical sources: editions from the United States Playing Card Company for historical rule evolution.
- Practical uses: learning/teaching gameplay, ensuring consistency for casual or tournament play, and researching historical rule changes or variations.
- Keywords: a long list of related topics (poker, bridge, solitaire, blackjack, bidding, card play, strategy, history, etc.).
- Repo context: stored under the 795 Card games Dewey-class folder in the Domain-papers repo.

## Official Game Rules

These sources collectively cover virtually all card games, from traditional favorites like Poker and Bridge to modern and social party games.

### Comprehensive Online Resources

Official Game Rules Website https://officialgamerules.org/card-games/ – This site offers an extensive A-Z guide of card games, from classic trick-taking games to modern party games, providing rules, scoring instructions, and strategies for each game. It also features curated lists of all-time favorite card games and regularly updated rules information

Users can download a free e-book compiled with the most popular and essential game rules

Bicycle Cards Guide https://bicyclecards.com/how-to-play/ – Bicycle provides easy-to-follow instructions for popular card games such as Poker, Bridge, and Canasta, catering to beginners and seasoned players alike 

### Authoritative Book References

Albert H. Morehead’s Official Rules of Card Games – This classic reference includes rules for over 300 card games, covering areas such as contract bridge, etiquette, teaching games to children, and game choice for different occasions

The book also provides technical terms and detailed scoring methods, making it an authoritative source for formal or competitive play.

## Historical Sources

United States Playing Card Company Editions – Historic compilations, such as the Ninth Edition issued by the US Playing Card Company, revise rules for popular social games and include additions of lesser-known games 

These editions are valuable for understanding the evolution of card game standards and the historical interpretation of rules.

## Practical Use

### Choosing games for particular occasions
For direct access, users can explore the Official Game Rules website for updated rules, consult Official Rules of Card Games by Albert H. Morehead, or browse digital copies from the United States Playing Card Company archives 

Reference and Correction – Historical editions offer insight into authorized variations and rule changes over time, crucial for enthusiasts or researchers interested in card game history.

### Teaching card games 
Learning and Teaching – Online guides and books are suitable for individual learning, teaching children, or instructing new players. They clarify gameplay, scoring procedures, and common variations.

### Etiquette of card games
Game Night or Competitive Play – Using official rules ensures clarity during casual play or tournaments, reduces disputes, and maintains consistency across players.

### Technical terms used in card games

Mathematical equations and formulas commonly associated with card games (especially for combinatorial counting, probability calculations, scoring, and analysis of games such as Poker, Blackjack, Bridge, and general deck dealing) rely on standard discrete mathematics and probability notation.

#### Core Combinatorial Notation and Formulas
The binomial coefficient (combinations) counts the number of ways to choose $k$ cards from a deck of $n$ cards without regard to order:

$$
\binom{n}{k} = C(n,k) = \frac{n!}{k!(n-k)!}
$$

where $n!$ denotes the factorial $n! = n \times (n-1) \times \cdots \times 1$, and $0! = 1$.

The number of permutations (ordered selections) is:

$$
P(n,k) = \frac{n!}{(n-k)!}
$$

For a standard 52-card deck the total number of possible 5-card poker hands is:

$$
\binom{52}{5} = 2{,}598{,}960
$$

#### Poker Hand Probabilities
The probability of a specific hand type is the number of favorable hands divided by the total number of hands:

$$
P(\text{hand type}) = \frac{\text{number of ways to form the hand}}{\binom{52}{5}}
$$

Classic exact counts (for reference) include:

- Royal flush: $4$
- Straight flush (including royal): $40$
- Four of a kind: $624$
- Full house: $3{,}744$
- Flush: $5{,}108$
- Straight: $10{,}200$
- Three of a kind: $54{,}912$
- Two pair: $123{,}552$
- One pair: $1{,}098{,}240$
- High card: $1{,}302{,}540$

#### Conditional Probability and Sequential Draws
Bayes’ theorem and the definition of conditional probability appear frequently when cards are dealt sequentially:

$$
P(A \mid B) = \frac{P(A \cap B)}{P(B)}
$$

For drawing without replacement the hypergeometric probability of obtaining exactly $k$ successes in $n$ draws from a population of size $N$ containing $K$ successes is:

$$
P(X = k) = \frac{\binom{K}{k}\binom{N-K}{n-k}}{\binom{N}{n}}
$$

#### Expected Value
The expected value of a random variable $X$ (e.g., payoff of a bet or hand strength) is:

$$
E[X] = \sum_{i} x_i P(X = x_i)
$$

or, in continuous approximations, the corresponding integral. In card games this is routinely used for pot odds, equity calculations, and optimal strategy.

#### Bridge and Trick-Taking Scoring 
- / Probability Fragments

In contract bridge the probability that a particular suit is distributed in a given pattern among the remaining cards follows the hypergeometric distribution above. Basic trick-probability approximations sometimes employ the binomial distribution when independence is assumed:

$$
P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}
$$

Scoring formulas themselves are rule-based rather than purely mathematical (e.g., contract points, overtricks, slam bonuses), but the underlying combinatorial counts remain the same.

#### Shuffling and Randomness
A perfectly random shuffle of a deck of $n$ cards has $n!$ possible orderings, each with probability $1/n!$. The number of riffle shuffles needed to approach uniformity is governed by the total-variation distance to the uniform distribution; a well-known result states that roughly $\frac{3}{2}\log_2 n$ riffle shuffles suffice for a 52-card deck.

These are the principal equations and the associated standard mathematical notation used throughout the analysis of official card-game rules, probabilities, and strategies. Specific games may introduce additional specialized scoring functions, but they are built on the combinatorial and probabilistic foundations shown above.

# Keywords 
acol
advanced
backgammon
Basement Boxes
beginner
Beginner level
bidding
Bidding Doubles
Bidding Weak Two Bids
biography
blackjack
board games
bridge
card games
Card Play
cards
contract bridge
declarer play
defense
divination
fantasy
fiction
gambling
game
games
games and puzzles
gaming
General
go
history
hobbies
how-to
humor
intermediate
Las Vegas
magic
mahjong
math
memoir
non-fiction
own
paperback
play
playing cards
Playing Leads
poker
poker strategy
psychology
read
recreation
reference
RPG
rules
solitaire
strategy
tarot
tarot deck
Texas Hold'em
to-read
unread
