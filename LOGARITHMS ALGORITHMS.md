# LOGARITHMS ALGORITHMS

## THE SAME FUNCTION, FOUR FACES
- Halving a search range          →  log₂ n steps
- Height of a balanced binary tree →  log₂ n levels
- Depth of a divide-and-conquer tree →  log₂ n layers
- Length of a binary address      →  log₂ n bits

Whenever an algorithm repeatedly cuts the instance by a constant factor, the logarithm appears.
That is why it dominates the analysis of search, trees, and information.

## FUNDAMENTALS
```
n          : input size (number of items / nodes / possibilities)
log₂ n     : binary logarithm  —  the unique k such that 2ᵏ = n
             (how many times you can halve n until you reach 1)
O(f(n))    : asymptotic upper bound  (grows no faster than c · f(n))
Θ(f(n))    : tight bound
⌊x⌋        : floor function (greatest integer ≤ x)
```

### Change-of-base identity:
log_b n = log₂ n / log₂ b     (only a constant factor; Big-O drops the base)

A million items can take about 20 steps.
That is not a trick.
It is what a logarithm measures.

If 2ᵏ = n, then k = log₂ n.
Each time a process halves the remaining work, the step count is the exponent that rebuilds n from 2.

```
log₂ 2          = 1
log₂ 8          = 3
log₂ 1 024      = 10
log₂ 1 048 576  = 20
```

Double n and the count grows by only 1.
That is why log n stays near the floor of a complexity chart while linear and exponential curves leave it behind.

## BINARY SEARCH
Starts with a sorted array of n keys.

Compare the middle key.
Keep the left half or the right half.
Discard the rest.

```
After 1 comparison the window is n / 2.
After 2 comparisons the window is n / 4.
After k comparisons the window is n / 2ᵏ.
```

Stop when the window is 1:

- n / 2ᵏ = 1
- 2ᵏ     = n
- k      = log₂ n

Worst case ≈ ⌊log₂ n⌋ + 1 probes.
- n = 1 000 000      →  ~20 probes
- n = 1 000 000 000  →  ~30 probes

Any algorithm that cuts the candidate set in half at each test pays a logarithmic price, not a linear one.

## TREE DEPTH
In a perfect binary tree the number of nodes doubles at each level.

- Level 0 : 1 node
- Level 1 : 2 nodes
- Level h : 2ʰ nodes

For n nodes:   n = 2^{h+1} − 1; h = log₂(n + 1) − 1

Height is therefore Θ(log n).

A search / insert / delete that walks from root to leaf costs O(log n) on a balanced tree.
A skewed tree loses that bound and falls back to O(n).

## DIVIDE AND CONQUER
Merge sort splits the array in two, sorts each half, then merges.
The recursion tree has depth log₂ n because each split halves the size.
At every level the merge work across all subarrays is Θ(n).

T(n) = Θ(n log n)     (depth × work-per-level)

The log is not extra magic.

It is the number of times you can cut n in half before the pieces have size 1.

Same pattern appears in heaps, FFT, and many recurrence trees.

## BITS AND INFORMATION
How many bits does it take to name one item among n equally likely items?

There are 2ʷ distinct binary strings of length w.

You need at least n of them:
- 2ʷ ≥ n
- w  ≥ log₂ n

So log₂ n is the information needed to isolate one outcome from n.

Each yes/no test (midpoint comparison, left/right child) yields at most 1 bit.

Isolating one of n possibilities therefore requires at least log₂ n tests.

Binary search and balanced trees nearly meet this information-theoretic lower bound.

