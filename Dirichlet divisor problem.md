# Dirichlet divisor problem
The error term $\Delta(x)$ in the asymptotic formula for the summatory function of the divisor function $d(n)$ (the number of positive divisors of $n$):

$$
D(x)=\sum_{n\le x}'d(n)=x\log x+(2\gamma-1)x+\frac14+\Delta(x),
$$

where the prime on the sum means that the term for an integer $x$ is counted with weight $1/2$, and $\gamma$ is the Euler–Mascheroni constant. (Equivalently, without the constant $1/4$, one absorbs it into the error.) Dirichlet’s hyperbola method (1849) already yields the elementary bound $\Delta(x)=O(x^{1/2})$. The problem is to determine the infimum of exponents $\theta$ such that $\Delta(x)=O_\varepsilon(x^{\theta+\varepsilon})$ for every $\varepsilon>0$.

**The error is given exactly by the Voronoï formula** (1903–1904)

$$
\Delta(x)=\sqrt{x}\sum_{n=1}^\infty\frac{d(n)}{\sqrt{n}}\Bigl(-Y_1\bigl(4\pi\sqrt{nx}\bigr)-\frac2\pi K_1\bigl(4\pi\sqrt{nx}\bigr)\Bigr),
$$

where $Y_1$ is the Bessel function of the second kind of order 1 and $K_1$ is the modified Bessel function of the second kind of order 1. (The series converges boundedly, uniformly on compact intervals free of integers.) This is the precise analogue of the Hardy–Voronoï formula for the Gauss circle problem; the two problems are intimately related through the shared method of exponential sums / spacing estimates and through the functional equations of $\zeta(s)^2$ and the theta function, respectively.

Hardy (1916) proved the matching $\Omega$-result $\Delta(x)=\Omega(x^{1/4})$, so the conjectured optimal bound is

$$
\Delta(x)=O_\varepsilon(x^{1/4+\varepsilon})\qquad\text{for every }\varepsilon>0.
$$

The best unconditional results remain of the shape $O(x^{0.3145+\varepsilon})$: Huxley’s 2003 bound is $\Delta(x)=O_\varepsilon(x^{131/416+\varepsilon})$ ($\approx0.31490$), while Li–Yang (2023) improved the exponent slightly to $\approx0.314483$ by refining the first spacing problem in the Bombieri–Iwaniec method. (A still sharper exponent $209/670\approx0.31194$ has recently been obtained for the related circle problem, but the divisor-problem record is the one just cited.)

The same Voronoï series is the starting point for virtually all modern work on moments of $\Delta(x)$, sign changes, and the connection with the mean-square of $\zeta(1/2+it)$.
