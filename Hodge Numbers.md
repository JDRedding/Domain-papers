# **Hodge Numbers**

Hodge numbers $h^{p,q}(X)$ are the complex dimensions of certain Dolbeault cohomology groups of a compact complex manifold $X$. They refine the topological Betti numbers by encoding holomorphic structure. Hodge numbers are fundamental invariants that measure the holomorphic structure of a complex manifold, refine the Betti numbers, and play a central role in Hodge theory in algebraic geometry and complex analysis.

## **Definition**  
For a compact complex manifold $X$ of complex dimension $n$, the $(p,q)$-Hodge number is

$$
h^{p,q}(X)=\dim_{\mathbb{C}}H^{q}(X;\Omega_{X}^{p}),
$$

where $\Omega_{X}^{p}$ is the sheaf of holomorphic $p$-forms and $H^{q}$ denotes the $q$-th sheaf cohomology group. Equivalently, by the Dolbeault theorem, $h^{p,q}(X)$ is the complex dimension of the space of $(p,q)$-harmonic forms on $X$.

## **Key Properties**  
- **Symmetry (Kähler case):** If $X$ is Kähler, then $h^{p,q}(X)=h^{q,p}(X)$.  
- **Poincaré duality:** $h^{p,q}(X)=h^{n-p,n-q}(X)$, where $n=\dim_{\mathbb{C}}X$.  
- **Relation to Betti numbers:** The $k$-th Betti number $b_{k}(X)$ is the sum of the Hodge numbers with $p+q=k$:

$$
b_{k}(X)=\sum_{p+q=k}h^{p,q}(X).
$$  

- **Special cases:** $h^{n,n}(X)=1$ (corresponding to the top holomorphic volume form) and $h^{0,0}(X)=1$ (corresponding to constant functions), for connected $X$.

## **Examples**  
- **Projective space $\mathbb{P}^{n}$:** $h^{p,q}=1$ if $p=q=0$ or $p=q=n$, and $h^{p,q}=0$ otherwise. (More precisely, $h^{p,p}=1$ for $0\leq p\leq n$.)  
- **Riemann surfaces:** For a compact Riemann surface of genus $g\geq 1$, $h^{1,0}=h^{0,1}=g$ and $h^{2,0}=h^{0,2}=0$.  
- **Complex surfaces:** $h^{0,1}$ is the irregularity $q$ of the surface; for Kähler surfaces this equals the dimension of the Albanese variety.

## **Role in Hodge Theory**  
Hodge numbers arise from the Hodge decomposition of cohomology for compact Kähler manifolds:

$$
H^{k}(X,\mathbb{C})=\bigoplus_{p+q=k}H^{p,q}(X),
$$

where $H^{p,q}(X)\cong H^{q}(X,\Omega_{X}^{p})$. This decomposition links topology (Betti numbers) with complex geometry (holomorphic forms).
