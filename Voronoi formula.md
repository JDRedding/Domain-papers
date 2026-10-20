# The Voronoï formula

The **Voronoï summation** formula is a classical identity in analytic number theory that expresses a weighted sum involving the divisor function $d(n)$ in terms of an integral main term plus a dual sum involving Bessel functions. It is the precise analogue, for the Dirichlet series $\zeta(s)^2$, of the Poisson summation formula.

### Specialized form (error term in the divisor problem)
For the summatory function of $d(n)$,

$$
\sum_{n\le x}' d(n) = x\bigl(\log x + (2\gamma - 1)\bigr) + \frac14 + \sqrt{x} \sum_{n=1}^\infty \frac{d(n)}{\sqrt{n}} \Bigl( -Y_1\bigl(4\pi\sqrt{nx}\bigr) - \frac2\pi K_1\bigl(4\pi\sqrt{nx}\bigr) \Bigr),
$$

where the prime means the term at an integer $x$ is counted with weight $1/2$, $\gamma$ is the Euler–Mascheroni constant, $Y_1$ is the Bessel function of the second kind of order 1, and $K_1$ is the modified Bessel function of the second kind of order 1. Equivalently, the error term is exactly the infinite series on the right-hand side (the series converges boundedly, and uniformly on compact intervals free of integers).

### General form (with a test function)
For a suitable test function $f$ (e.g., piecewise continuous and of bounded variation, or smoother),

$$
\sum_{\alpha < n < \beta}' d(n) f(n) = \int_\alpha^\beta f(t)(\log t + 2\gamma)\, dt + 2\pi \sum_{n=1}^\infty d(n) \int_\alpha^\beta f(t) \Bigl( \frac2\pi K_0\bigl(4\pi\sqrt{nt}\bigr) - Y_0\bigl(4\pi\sqrt{nt}\bigr) \Bigr)\, dt,
$$

with the usual conventions on the endpoints of the sum. (There is also a version for the infinite sum $\sum_{n=1}^\infty d(n) f(n)$.) This is the form Voronoï himself established and used.

### Historical context and relation to the circle problem
Voronoï introduced the formula in papers of 1903–1904 and used it to improve Dirichlet’s bound $\Delta(x) = O(x^{1/2})$ to $\Delta(x) = O(x^{1/3} \log x)$. He also asserted an analogous formula for the representation function $r_2(n)$ (the number of ways to write $n$ as a sum of two squares). That formula, later proved rigorously by Hardy and Sierpiński, involves the ordinary Bessel function $J_0$ (or equivalently $J_1$ in the error-term version) and is precisely the Hardy–Voronoï formula appearing in the Gauss circle problem:

$$
\sum_{n\le x}' r_2(n) = \pi x + \sum_{n=1}^\infty r_2(n) \sqrt{\frac{x}{n}} J_1\bigl(2\pi\sqrt{nx}\bigr).
$$

Both formulas arise from the functional equations of the associated Dirichlet series ($\zeta(s)^2$ and the theta function, respectively) via Mellin inversion or contour integration, and both are the starting points for all modern exponential-sum attacks on the two lattice-point problems.

### Modern extensions
The same idea has been vastly generalized. There are Voronoï-type formulas for the coefficients of holomorphic modular forms, Maass forms, and more generally for automorphic forms on $\mathrm{GL}(2)$ (and higher-rank groups), typically involving additive twists and Hankel transforms of the test function. These are now standard tools in the theory of $L$-functions and subconvexity.

---
