# Natural cyclic hierarchy
The same `Projection` accepts any of these generators. A single `CyclicProjection(n, order)` module that emits $\zeta_n^k$ (over $n$ logits) covers every finite case; the circle remains the continuous special case. This gives a uniform experimental axis from the coarsest discrete projection (point) all the way to the continuous circle.

$$
\begin{aligned}
\text{Point}    &\quad p = 1                          && C_1 = \{1\} \\
\text{Line}     &\quad p = (-1)^k,\quad k\in\{0,1\}   && C_2 = \{1,-1\} \\
\text{Triangle} &\quad p = \omega^k,\quad k\in\{0,1,2\} && C_3 = \{1,\omega,\omega^2\} \\
\text{Square}   &\quad p = i^k,\quad k\in\{0,1,2,3\}   && C_4 = \{1,i,-1,-i\} \\
\text{n-gon}    &\quad p = \zeta_n^k,\quad k=0\dots n-1 && C_n = \langle\zeta_n\rangle \\
\text{Circle}   &\quad p = e^{i\theta},\quad\theta\in\mathbb{R} && U(1)
\end{aligned}
$$

where $\zeta_n = e^{2\pi i / n}$ is the primitive $n$ -th root of unity, and each discrete group sits inside the next:

$$
C_1 \subset C_2 \subset C_3 \subset C_4 \subset \cdots \subset C_n \subset U(1).
$$

In the SID language the relational content $S$ (Structure) and the interaction $I$ stay identical; only the projection domain $P$ changes:

$$
\begin{aligned}
P_{\text{point}}    &= C_1, \\
P_{\text{line}}     &= C_2, \\
P_{\text{triangle}} &= C_3, \\
P_{\text{square}}   &= C_4, \\
P_{n\text{-gon}}    &= C_n, \\
P_{\text{circle}}   &= U(1).
\end{aligned}
$$

