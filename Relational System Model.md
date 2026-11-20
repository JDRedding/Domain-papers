# Relational System Model

Identifiability is not fundamentally about recovering the true parameter.

It is about determining whether the observation relation preserves a distinction.

If a distinction lies in the kernel of observation, no amount of additional precision can recover it.

What is required is not better measurement of the same quantity, but a richer observation relation:

$$ P \to P' $$

that reduces the observational kernel and refines the equivalence classes.

Knowledge grows by shrinking observational equivalence classes rather than by approaching isolated intrinsic objects.

**State relation:** $x(t) \in X$  
**Input relation:** $u(t) \in U$  
**Observation:** $y(t) \in Y$

**Structural coordinates:**  
$\theta \in \Theta$

**Initial condition:**  
$x(0) = x_0(\theta)$

**Dynamics:**  

$$ 
\dot{x}(t) = f(x(t), u(t), \theta)
$$

**Observation relation:**  

$$ 
y(t) = h(x(t), u(t), \theta) 
$$

---

## Relational Observation Map

$$ 
\Phi : \Theta \to Y 
$$

$$ 
\Phi(\theta) \triangleq y(\cdot\,; \theta) 
$$

The observation map does not reveal structure directly.  
It reveals structure only through the distinctions preserved in $Y$.

---

## Observational Equivalence

$$ 
\theta \sim \theta' \quad \Leftrightarrow \quad \Phi(\theta) = \Phi(\theta') 
$$

$$ 
\Leftrightarrow \quad y(t;\theta) = y(t;\theta') \quad \text{for (almost) all } t 
$$

The equivalence class

$$ 
[\theta] = \{ \theta' \in \Theta : \theta' \sim \theta \} 
$$

contains all structurally distinct descriptions that are indistinguishable under the current observation relation.

---

## Relational Identifiability

**Global identification:**

$$ 
\Phi(\theta) = \Phi(\theta') \quad \Rightarrow \quad \theta = \theta' 
$$

Every structural distinction is preserved by observation.

**Local identification:**

$\Phi$ is injective only within a neighborhood of $\theta$.

**Parameter identification:**

$$ 
\Phi(\theta) = \Phi(\theta') \quad \Rightarrow \quad \theta_i = \theta_i' 
$$

for the coordinate $\theta_i$ of interest.

Identifiability is therefore not an intrinsic property of $\theta$ alone.  
It is a property of the pair $(\Theta, \Phi)$—that is, of structure together with the observation relation.

---

## Classic Example

$$
\begin{aligned}
\dot{x}_1 &= -\theta_1 x_1 \\
\dot{x}_2 &= \theta_1 x_1 \\
y &= \theta_2 x_2
\end{aligned}
$$

$$ 
x_1(0) = \theta_3, \quad x_2(0) = 0 
$$

**Solution:**

$$ 
y(t) = \theta_2 \theta_3 \bigl(1 - e^{-\theta_1 t}\bigr) 
$$

Observation preserves:

- $\theta_1$
- $\theta_2\theta_3$

but not $\theta_2$ and $\theta_3$ separately.

Thus

$$ 
(\theta_2, \theta_3) \sim (\theta_2', \theta_3') 
$$

whenever

$$ 
\theta_2\theta_3 = \theta_2'\theta_3'
$$

The observable object is the relational invariant $\theta_2\theta_3$, not the individual coordinates.

---

## Distinguishability Condition

**Sensitivity fields:**

$$ 
s_i(t) = \frac{\partial y(t)}{\partial \theta_i} 
$$

**Sensitivity matrix:** $S$

If

$$ 
{rank}(S) = p 
$$

then infinitesimal parameter directions remain distinguishable under $\Phi$.

If a column vanishes,

$$ s_i(t) = 0 $$

then variation along $\theta_i$ generates no observational difference and is therefore observationally invisible.

---

## Projection View

**Underlying structure:**  

$z \in Z$

**Observation operator:** 

$$ P : Z \to Y $$

with

$$ 
y = Pz 
$$

**Kernel:**

$$ 
\ker(P) = \{ z : Pz = 0 \} 
$$

Elements differing only by kernel directions satisfy

$$ 
z \sim z + k \quad \text{for any } k \in \ker(P) 
$$

and therefore generate identical observations.

Observation induces the quotient space

$$ 
Z / \ker(P) 
$$

whose elements are observational equivalence classes.
