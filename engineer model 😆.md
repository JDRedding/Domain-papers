# The engineer model 😆
An engineer as a black-box mapping from two non-negative inputs to a pair of outputs:

$$
E:\mathbb{R}_{\ge 0}\times\mathbb{R}_{\ge 0}\to\mathbb{R}_{\ge 0}\times\mathbb{R},\qquad
(C,P)\mapsto\bigl(S,\sigma\bigr)
$$

where the symbols have the following meanings:

- $C$ = coffee intake,
- $P$ = problem load,
- $S=S(C,P)$ = solutions produced (principal output),
- $\sigma=\sigma(C,P)$ = sarcasm generated (by-product).

A simple explicit realization consistent with the arrows is the pair of constitutive relations

$$
S=k\,C\,P,\qquad \sigma=\alpha C+\beta P
$$

with positive constants $k,\alpha,\beta$. In process-engineering notation the same mapping appears as the block

$$
\begin{array}{c} C\\ \downarrow\\ P\;\to\;\boxed{E}\;\to\;S\\ \to {P}\;\nearrow\\ \sigma \end{array}
$$

which is exactly the flowchart shown in the original post.
