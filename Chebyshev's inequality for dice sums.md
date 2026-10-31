# **Chebyshev's inequality for dice sums**

Chebyshev's inequality is distribution-free and states that for any random variable with finite mean $\mu$ and variance $\sigma^2 > 0$,

$$
P\bigl(|X - \mu| \ge k\sigma\bigr) \le \frac{1}{k^2}, \qquad k > 0.
$$

It gives an upper bound on the probability of large deviations that holds for every distribution.

Applied to the sum of fair dice:

| Dice | $k$ | Interval around mean | Actual $P(\text{outside})$ | Chebyshev bound |
|------|-------|----------------------|------------------------------|-----------------|
| 2d6  | 1     | $[4.58, 9.42]$     | $0.333$                    | $1.00$        |
| 2d6  | 1.5   | $[3.38, 10.62]$    | $0.167$                    | $0.444$       |
| 2d6  | 2     | $[2.17, 11.83]$    | $0.056$                    | $0.250$       |
| 3d6  | 1     | $[7.54, 13.46]$    | $0.324$                    | $1.00$        |
| 3d6  | 1.5   | $[6.06, 14.94]$    | $0.185$                    | $0.444$       |
| 3d6  | 2     | $[4.58, 16.42]$    | $0.037$                    | $0.250$       |

The bounds are valid but loose (especially for small $k$) because the dice-sum distributions are concentrated and unimodal; Chebyshev must also cover heavy-tailed distributions.

**Variance properties for dice**

- A single fair six-sided die has ${Var}(X)=\frac{35}{12}$.
- Independence of the dice implies that variances add exactly:

$$
{Var}(S_n)={Var}(X_1+\cdots+X_n)=n\cdot\frac{35}{12}.
$$

- Consequently the standard deviation grows only with the square root of the number of dice:

$$
\sigma_n=\sqrt{n\cdot\frac{35}{12}}=\sigma_1\sqrt{n}.
$$

- The same scaling holds for any number of sides: an $s$-sided die has variance $\frac{s^2-1}{12}$, and the sum of $n$ independent copies has variance $n$ times that quantity.
- These identities let the mean and variance of any dice sum be written in closed form without enumerating the $6^n$ outcomes.

**Three dice (3d6)**

There are $6^3=216$ equally likely outcomes. The sum ranges from 3 to 18 with mean

$$
\mathbb{E}[S]=3\times3.5=10.5
$$

and variance

$$
{Var}(S)=3\times\frac{35}{12}=\frac{35}{4}=8.75,\qquad\sigma\approx2.958.
$$

Exact probabilities (ways / 216):

| Sum | Ways | Prob.   | Sum | Ways | Prob.   |
|-----|------|---------|-----|------|---------|
| 3   | 1    | 0.0046  | 11  | 27   | 0.1250  |
| 4   | 3    | 0.0139  | 12  | 25   | 0.1157  |
| 5   | 6    | 0.0278  | 13  | 21   | 0.0972  |
| 6   | 10   | 0.0463  | 14  | 15   | 0.0694  |
| 7   | 15   | 0.0694  | 15  | 10   | 0.0463  |
| 8   | 21   | 0.0972  | 16  | 6    | 0.0278  |
| 9   | 25   | 0.1157  | 17  | 3    | 0.0139  |
| 10  | 27   | 0.1250  | 18  | 1    | 0.0046  |

The distribution is symmetric about 10.5, unimodal, and already closer to a normal shape than the triangular 2d6 distribution; the central-limit effect continues to strengthen as more dice are added.
