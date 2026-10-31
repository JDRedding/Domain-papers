# **The Dirichlet Divisor Problem**
- 515.72 — Analytic number theory topics
- Divisor problems, prime-counting functions, and related asymptotic questions

The Dirichlet divisor problem asks for the smallest exponent $\theta$ such that

$$
\Delta(x) = O_\varepsilon(x^{\theta+\varepsilon})
$$

holds for every $\varepsilon > 0$. Here $D(x) = \sum_{n \le x} d(n) = x\log x + (2\gamma-1)x + \Delta(x)$, where $d(n)$ is the number of positive divisors of $n$ and $\gamma$ is the Euler–Mascheroni constant. The classical Dirichlet bound (1849) gives $\theta = 1/2$, and improving this exponent has been a central challenge in analytic number theory for over 170 years.

- Best lower bound: $1/4$ (Hardy).
- Best upper bound: $131/416 \approx 0.3149$ (Huxley; minor improvement claimed by Li–Yang).
- Conjecture: $\theta = 1/4$.
- Key tool: Voronoï summation and estimates for the resulting exponential sums.
- Status: one of the most difficult unsolved problems in analytic number theory.

## Dirichlet divisor problem
The error term $\Delta(x)$ in the asymptotic formula for the summatory function of the divisor function $d(n)$ (the number of positive divisors of $n$):

$$
D(x)=\sum_{n\le x}'d(n)=x\log x+(2\gamma-1)x+\frac14+\Delta(x),
$$

where the prime on the sum means that the term for an integer $x$ is counted with weight $1/2$, and $\gamma$ is the Euler–Mascheroni constant. (Equivalently, without the constant $1/4$, one absorbs it into the error.) Dirichlet’s hyperbola method (1849) already yields the elementary bound $\Delta(x)=O(x^{1/2})$. The problem is to determine the infimum of exponents $\theta$ such that $\Delta(x)=O_\varepsilon(x^{\theta+\varepsilon})$ for every $\varepsilon>0$.

### Known lower bound (Hardy)
Hardy proved in 1916 that
$$
\Delta(x) = \Omega_\pm\bigl(x^{1/4}\bigr),
$$
so $\theta \ge 1/4$. This remains the best possible lower bound known from an $\Omega$-result of this type, and it is widely conjectured to be the true value of $\theta$.

### Best known upper bounds
Improvements have been long and incremental. The strongest classical published upper bound is due to Huxley (2003):
$$
\theta \le \frac{131}{416} \approx 0.3149038.
$$
(A 2023 arXiv preprint of Li–Yang claims a slight further improvement to $\approx 0.314483$; many references still list Huxley’s bound as the record.) The historical progression includes:

- Dirichlet (1849): $\theta = 1/2$.
- Voronoï (1903–1904): $\theta = 1/3$.
- van der Corput (1922–1928): down to $27/82 \approx 0.32927$.
- Kolesnik (1969–1982): several refinements, reaching $35/108 \approx 0.32407$.
- Iwaniec–Mozzochi (1988): $7/22 \approx 0.31818$.
- Huxley (1993, 2003): finally $131/416 \approx 0.31490$.

Thus the current best unconditional range is essentially

$$
\frac14 \le \theta \le \frac{131}{416} \approx 0.3149
$$

(with a claimed minor improvement of the upper end).

## Voronoï formula
**The error is given exactly by the Voronoï formula** (1903–1904)

$$
\Delta(x)=\sqrt{x}\sum_{n=1}^\infty\frac{d(n)}{\sqrt{n}}\Bigl(-Y_1\bigl(4\pi\sqrt{nx}\bigr)-\frac2\pi K_1\bigl(4\pi\sqrt{nx}\bigr)\Bigr),
$$

where $Y_1$ is the Bessel function of the second kind of order 1 and $K_1$ is the modified Bessel function of the second kind of order 1. (The series converges boundedly, uniformly on compact intervals free of integers.) This is the precise analogue of the Hardy–Voronoï formula for the Gauss circle problem; the two problems are intimately related through the shared method of exponential sums / spacing estimates and through the functional equations of $\zeta(s)^2$ and the theta function, respectively.

The same Voronoï series is the starting point for virtually all modern work on moments of $\Delta(x)$, sign changes, and the connection with the mean-square of $\zeta(1/2+it)$.

### Why the Voronoï formula matters

The Voronoï summation formula supplies an exact representation of the error term:

$$
\Delta(x) = \sqrt{x} \sum_{n=1}^\infty \frac{d(n)}{\sqrt{n}} \Biggl( -Y_1(4\pi\sqrt{nx}) - \frac{2}{\pi} K_1(4\pi\sqrt{nx}) \Biggr),
$$

where $Y_1$ and $K_1$ are the Bessel function of the second kind and the modified Bessel function of the second kind, respectively. This identity is the analytic foundation for essentially all modern improvements. It converts the divisor problem into the study of oscillatory Bessel-type exponential sums, enabling the application of exponent-pair methods, large-sieve inequalities, spacing problems for square roots, and lattice-point techniques (shared with the Gauss circle problem). Voronoï’s method already yields $\theta = 1/3$; all subsequent gains refine the analysis of these oscillatory sums. Asymptotically the Bessel functions may be replaced by a cosine factor, producing the familiar form involving $\sum d(n)n^{-3/4}\cos(4\pi\sqrt{nx}-\pi/4)$.

## Hardy
Hardy (1916) proved the matching $\Omega$-result $\Delta(x)=\Omega(x^{1/4})$, so the conjectured optimal bound is

$$
\Delta(x)=O_\varepsilon(x^{1/4+\varepsilon})\qquad\text{for every }\varepsilon>0.
$$

## Unconditional results 

The best unconditional results remain of the shape $O(x^{0.3145+\varepsilon})$: Huxley’s 2003 bound is $\Delta(x)=O_\varepsilon(x^{131/416+\varepsilon})$ ($\approx0.31490$), while Li–Yang (2023) improved the exponent slightly to $\approx0.314483$ by refining the first spacing problem in the Bombieri–Iwaniec method. (A still sharper exponent $209/670\approx0.31194$ has recently been obtained for the related circle problem, but the divisor-problem record is the one just cited.)

### Conjectured true value
Experts widely believe

$$
\theta = \frac14.
$$

This is supported by Hardy’s $\Omega$ results (and later refinements such as Soundararajan’s 2003 strengthening), heuristics from exponent-pair conjectures, and the existence of a non-Gaussian limiting distribution for a suitably normalized $\Delta(x)$.


### Relation to other problems
The divisor problem is deeply connected to:
- the Gauss circle problem (via Richert’s equivalence and shared lattice-point techniques),
- mean values of $|\zeta(1/2+it)|$ (Ivić–Zhai and related results),
- higher-order divisor problems (the Piltz problem).

