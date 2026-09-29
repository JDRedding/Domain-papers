
# SEVEN PLANETARY MAGIC SQUARES

Magic squares begin as a small Chinese number-diagram used for ritual and cosmology, then spread and change function: first as medical and divinatory devices in India and the Islamic world, later as objects of systematic construction, and finally as planetary talismans in Renaissance Europe. The “4,200-year-old turtle” story is legend; the documentary trail is much later and more specific.

Legend ties the unique normal square of order 3 to the *Luoshu* (“Luo River writing”): a turtle emerges from the Luo River bearing a 3×3 pattern of dots that Emperor Yu uses while controlling floods. That myth is often back-dated to the third millennium BCE, but early “river map” mentions are ambiguous. The first clear numerical 3×3 appears in Chinese sources around 190 BCE–1st century CE (*Shushu jiyi*; the *Mingtang* chapter of the *Da Dai Liji*), where it is the “Nine Halls” arrangement used in rites, astrology, and spatial symbolism. Only from about the 12th century is that grid routinely identified with the *Luoshu*. Higher-order Chinese squares (Yang Hui, 13th century) come later and already look indebted to foreign methods.

The earliest firmly dated square outside China is not the 3×3 but an order-4 arrangement in Varāhamihira’s *Bṛhatsaṃhitā* (c. 550 CE), used to fix quantities of perfume ingredients. He calls the figure a turtle’s carapace—an echo of the Chinese turtle motif. A 3×3 square appears in Indian medical writing by about 900 CE; later tradition also links small squares to pacifying the nine planets. Transmission from China into India between the 4th and 6th centuries is plausible given the shared turtle imagery and the timing.

Arabic texts from the 9th–10th centuries already treat squares as useful objects, not just curiosities. Al-Ṭabarī’s medical encyclopedia uses the 3×3 square in childbirth practice, close in time and function to Indian medical use—strong evidence that the Islamic tradition first absorbed squares from India rather than only from China. By c. 983 the *Rasāʾil Ikhwān al-Ṣafāʾ* (Brethren of Purity) displays specimens of orders 3 through 9. Construction methods then multiply (bordered squares, letter-number *wafq* figures). Astral use follows: the *Ghāyat al-Ḥakīm* (*Picatrix*) and later Andalusian writers attach the first seven squares to the seven classical planets as talismans.

The first Western mathematical treatise is by the Byzantine scholar Manuel Moschopoulos (c. 1315), who strips away much of the occult framing and gives construction rules. In 1514 Dürer embeds a 4×4 square in *Melencolia I*. Heinrich Cornelius Agrippa’s *De occulta philosophia* (published 1531/1533), Book II, chapter 22, is the source behind the seven “planetary” grids in the original post: Saturn $3\times3$, Jupiter $4\times4$, Mars $5\times5$, Sun $6\times6$, Venus $7\times7$, Mercury $8\times8$, Moon $9\times9$, each with names, intelligences, spirits, and seals drawn from the line-sum $M(n)=\frac{n(n^2+1)}{2}$. Agrippa is compiling an already Islamic–Latin talismanic package, not inventing the squares.

In China the 3×3 square was a cosmic map (center 5, odd/even balance). In India and early Arabic medicine it was a practical charm. In medieval Islam it became both a branch of arithmetic and a planetary seal. In Renaissance Europe those seven seals were standardized and printed, which is why the same grids still circulate as “the” planetary magic squares.

## **Notation**

- $n$: order of the square (here $n = 3,4,5,6,7,8,9$)
- $N = n^2$: last integer used
- $a_{ij}$: entry in row $i$, column $j$, with $1 \le i,j \le n$
- $M(n)$: magic constant (common line sum)
- $S_{\text{row}}(i)$, $S_{\text{col}}(j)$, $S_{\text{diag}}$, $S_{\text{anti}}$: line sums

### **Magic-constant formula**

$$
M(n) = \frac{n(n^2 + 1)}{2}
$$

Equivalently,

$$
M(n) = \frac{n(N + 1)}{2}
$$

since the integers $1$ through $N$ sum to $\frac{N(N+1)}{2}$ and that total is partitioned into $n$ equal row sums.

Explicit values:

$$
\begin{align*}
M(3) &= 15 \\
M(4) &= 34 \\
M(5) &= 65 \\
M(6) &= 111 \\
M(7) &= 175 \\
M(8) &= 260 \\
M(9) &= 369
\end{align*}
$$

### **Defining conditions of a normal magic square**

The set of entries is exactly

$$
\{ a_{ij} \} = \{ 1, 2, \dots, n^2 \}
$$

Row sums:

$$
S_{\text{row}}(i) = \sum_{j=1}^{n} a_{ij} = M(n) \qquad \text{for all } i = 1,\dots,n
$$

Column sums:

$$
S_{\text{col}}(j) = \sum_{i=1}^{n} a_{ij} = M(n) \qquad \text{for all } j = 1,\dots,n
$$

Main diagonal:

$$
S_{\text{diag}} = \sum_{i=1}^{n} a_{ii} = M(n)
$$

Anti-diagonal:

$$
S_{\text{anti}} = \sum_{i=1}^{n} a_{i,\, n+1-i} = M(n)
$$

## **Total-sum identity**
(consistency check)

$$
\sum_{i=1}^{n} \sum_{j=1}^{n} a_{ij} = \frac{n^2(n^2 + 1)}{2} = n \cdot M(n)
$$

### **Planetary assignment used in the squares**

$$
\begin{align*}
n=3 &\mapsto \text{Saturn} \\
n=4 &\mapsto \text{Jupiter} \\
n=5 &\mapsto \text{Mars} \\
n=6 &\mapsto \text{Sun} \\
n=7 &\mapsto \text{Venus} \\
n=8 &\mapsto \text{Mercury} \\
n=9 &\mapsto \text{Moon}
\end{align*}
$$

The seven grids satisfy the four families of equations above with the listed $M(n)$.

## FUNDAMENTALS

A normal magic square of order n uses each integer 1..n^2 exactly once.
Every row, every column, and both main diagonals sum to the same magic constant M.

TYPE
```
square[n][n] : integers
order n      : 3..9
magic constant M(n) = n * (n*n + 1) / 2
```
VARIABLES
```
n = order
N = n*n                 # last number placed
M = n*(n*n + 1)//2      # shared sum

M(3)=15   M(4)=34   M(5)=65   M(6)=111
M(7)=175  M(8)=260  M(9)=369
```
SATURN   n=3   M=15
```
4  9  2
3  5  7
8  1  6
```
JUPITER  n=4   M=34
```
 1 14 15  4
12  7  6  9
 8 11 10  5
13  2  3 16
```

MARS     n=5   M=65
```
17 24  1  8 15
23  5  7 14 16
 4  6 13 20 22
10 12 19 21  3
11 18 25  2  9
```

SUN      n=6   M=111
```
 6 32  3 34 35  1
 7 11 27 28  8 30
19 14 16 15 23 24
18 20 22 21 17 13
25 29 10  9 26 12
36  5 33  4  2 31
```

VENUS    n=7   M=175
```
22 47 16 41 10 35  4
 5 23 48 17 42 11 29
30  6 24 49 18 36 12
13 31  7 25 43 19 37
38 14 32  1 26 44 20
21 39  8 33  2 27 45
46 15 40  9 34  3 28
```

MERCURY  n=8   M=260
```
64  2  3 61 60  6  7 57
 9 55 54 12 13 51 50 16
17 47 46 20 21 43 42 24
40 26 27 37 36 30 31 33
32 34 35 29 28 38 39 25
41 23 22 44 45 19 18 48
49 15 14 52 53 11 10 56
 8 58 59  5  4 62 63  1
```

MOON     n=9   M=369
```
47 58 69 80  1 12 23 34 45
57 68 79  9 11 22 33 44 46
67 78  8 10 21 32 43 54 56
77  7 18 20 31 42 53 55 66
 6 17 19 30 41 52 63 65 76
16 27 29 40 51 62 64 75  5
26 28 39 50 61 72 74  4 15
36 38 49 60 71 73  3 14 25
37 48 59 70 81  2 13 24 35
```

## Further reading
Source tradition: Agrippa, Occult Philosophy, Book II, Ch. 22
