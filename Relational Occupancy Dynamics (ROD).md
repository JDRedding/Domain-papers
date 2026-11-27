# Relational Occupancy Dynamics (ROD)
SIDQC Framework

$$
C(S, I) = 0 \quad | \quad \Phi = \sum w_{ij} R_{ij} + \lambda |Q| \quad | \quad \rho_{t+1} = \rho_t \cdot \alpha \cdot \left(1 + \beta \frac{|Q|}{|S|}\right) 
$$  

$$
x_{t+1} = D(x_t, R, Q) 
$$

## Types

| Symbol | Description |
|--------|-------------|
| $S$ | finite set of nodes |
| $I$ | directed relations on $S$ |
| $D$ | admissible traversals / path completions |
| $Q$ | unresolved but admissible occupancy ($Q \subseteq S$) |
| $C$ | structural consistency operator |
| $\mu$ | memetic unit (realized as triad or SID fragment) |
| $\Phi$ | relational potential |
| $T_Q$ | residual tension |

## Variables

| Symbol | Description |
|--------|-------------|
| $S$ | set of nodes \(\{A, B, C, \ldots\}\) |
| $I$ | set of relations \(\{R_{AB}, R_{BC}, R_{CA}, \ldots\}\) |
| $R_{ij}$ | relation from node $i$ to node $j$ |
| $K$ | currently occupied (known) nodes |
| $Q$ | unresolved residual nodes ($Q \subseteq S$) |
| $\rho_t(\mu)$ | density of units of type $\mu$ at discrete time $t$ |
| $\alpha, \beta$ | positive structural-stability constants |
| $\lambda$ | residual-tension coefficient ($> 0$) |
| $w_{ij}$ | relation weights ($\geq 0$) |
| $C(S, I)$ | consistency constraint evaluated on structure and relations |
| $\Phi$ | relational potential |
| $T_Q$ | residual tension |
| $\Omega(\tau)$ | triadic sum operator |
| $\gamma_t$ | path $(x_0, x_1, \ldots, x_t)$ |

## Fundamentals

1. **SIDQC State**

$$
\Sigma = (S, I, D, Q, C)
$$

   subject to $C(S, I) = 0$.

2. **Partition**

$$
S = K \cup Q, \qquad K \cap Q = \emptyset.
$$

3. **Relational Potential**

$$
\Phi(S, I, Q) = \sum_{(i,j)} w_{ij}\, R_{ij} + \lambda\, |Q|
$$

$$
\Phi = \Phi_K + T_Q, \qquad T_Q = \lambda\, |Q|.
$$

4. **Triadic Closure** (canonical triad $\tau = (A, B, C)$)

$$
\Omega(\tau) = R_{AB} + R_{BC} + R_{CA}
$$

$$
C(\tau) = \Omega(\tau) - K.
$$

   Consistency: $\Omega(\tau) = K$, i.e.

$$
R_{AB} + R_{BC} + R_{CA} = K.
$$

5. **Mutual Determination**

$$
\begin{align\*}
R_{AB} &= K - R_{BC} - R_{CA}, \\
R_{BC} &= K - R_{CA} - R_{AB}, \\
R_{CA} &= K - R_{AB} - R_{BC}.
\end{align\*}
$$

6. **Local Balance**

$$
\delta R_{AB} + \delta R_{BC} + \delta R_{CA} = 0
$$

   (general: $\sum_{(i,j)} \delta R_{ij} = 0$) while $C(S, I)$ remains 0.

7. **Density Evolution**

$$
\rho_{t+1}(\mu) = \rho_t(\mu) \cdot \alpha \cdot \Bigl(1 + \beta \cdot \frac{|Q|}{|S|}\Bigr).
$$

   When $|Q| = 0$:

$$
\rho_{t+1}(\mu) = \alpha \cdot \rho_t(\mu).
$$

8. **Additive Field Form**

$$
\rho_{t+1}(\mu) = \rho_t(\mu) + \alpha\, \nabla_I \Phi + \beta\, Q
$$

   subject to $C(S, I) = 0$.

9. **Internal Traversal**

$$
x_{t+1} = D(x_t, R, Q),
$$

   path $\gamma_t = (x_0, x_1, \ldots, x_t)$.

10. **Compact SIDQC Summary**

$$
\begin{align\*}
C(S, I) &= 0, \\
\Phi &= \sum w_{ij}\, R_{ij} + \lambda\, |Q|, \\
\rho_{t+1} &= \rho_t \cdot \alpha \cdot \Bigl(1 + \beta \cdot \frac{|Q|}{|S|}\Bigr), \\
x_{t+1} &= D(x_t, R, Q).
\end{align\*}
$$

## Relational Constraint Dynamics
**SIDQC Summary**  

**Core Notation**
- $S$: finite set of nodes  
- $I$: set of directed relations on $S$  
- $D$: admissible traversals / path completions  
- $Q \subseteq S$: unresolved residual nodes  
- $C$: structural consistency operator  
- $\mu$: memetic unit (triad or SID fragment)  
- $\Phi$: relational potential  
- $T_Q$: residual tension  
- $K$: currently occupied (known) nodes  
- $R_{ij}$: relation from node $i$ to node $j$  
- $\rho_t(\mu)$: density of units of type $\mu$ at discrete time $t$  
- $\alpha, \beta > 0$: structural-stability constants  
- $\lambda > 0$: residual-tension coefficient  
- $w_{ij} \geq 0$: relation weights  
- $\Omega(\tau)$: triadic sum operator  
- $\gamma_t$: path $(x_0, x_1, \dots, x_t)$

**1. SIDQC State**

$$
\Sigma = (S, I, D, Q, C) 
$$  

subject to

$$
C(S, I) = 0 
$$

**2. Partition**  

$$
S = K \cup Q, \quad K \cap Q = \emptyset 
$$

**3. Relational Potential**  

$$
\Phi(S, I, Q) = \sum_{(i,j)} w_{ij} R_{ij} + \lambda |Q| 
$$  

$$
\Phi = \Phi_K + T_Q, \quad T_Q = \lambda |Q| 
$$

**4. Triadic Closure** (canonical triad $\tau = (A, B, C)$ )  

$$
\Omega(\tau) = R_{AB} + R_{BC} + R_{CA} $$  

$$
C(\tau) = \Omega(\tau) - K 
$$ 

Consistency condition:  

$$
\Omega(\tau) = K \quad \Leftrightarrow \quad R_{AB} + R_{BC} + R_{CA} = K 
$$

**5. Mutual Determination**  

$$
R_{AB} = K - R_{BC} - R_{CA} 
$$  

$$
R_{BC} = K - R_{CA} - R_{AB}
$$ 

$$
R_{CA} = K - R_{AB} - R_{BC} 
$$

**6. Local Balance**  

$$
\delta R_{AB} + \delta R_{BC} + \delta R_{CA} = 0 
$$ 

General form:  

$$
\sum_{(i,j)} \delta R_{ij} = 0 
$$  

while $C(S, I)$ remains 0.

**7. Density Evolution**  

$$
\rho_{t+1}(\mu) = \rho_t(\mu) \cdot \alpha \cdot \left(1 + \beta \frac{|Q|}{|S|}\right)
$$  

Special case when $|Q| = 0$:  

$$
\rho_{t+1}(\mu) = \alpha \cdot \rho_t(\mu) 
$$

**8. Additive Field Form**  

$$
\rho_{t+1}(\mu) = \rho_t(\mu) + \alpha \cdot \nabla_I \Phi + \beta \cdot Q 
$$  

subject to $C(S, I) = 0$.

**9. Internal Traversal**  

$$x_{t+1} = D(x_t, R, Q)
$$ 

$$
\gamma_t = (x_0, x_1, \dots, x_t) 
$$

