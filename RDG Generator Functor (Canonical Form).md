# **RDG Generator Functor (Canonical Form)**  
The generator functor is the operator that turns **free data** into a full **SID object**:

$$
\Gamma : \mathbf{FreeData}(\mathcal{C}) \longrightarrow \mathbf{RDG}(\mathcal{C})
$$

Its action is:

$$
\Gamma(D) = SID\langle S(D),\; I(D),\; D(D) \rangle
$$

with:

- **S‑mode** — structural embedding of the free data  
- **I‑mode** — interaction constructors induced by the data  
- **D‑mode** — dynamic propagation determined by the data  

This is the universal constructor behind every “object class : free data” pattern.

---

## **1. Domain: FreeData(𝓒)**  
For each mathematical class $ \mathcal{C} $:

$$
\mathbf{FreeData}(\mathcal{C}) = \text{minimal generative inputs}
$$

Examples:

- **Dyad** → $(r_1,r_2)$  
- **Triad** → $(r_1,r_2,r_3)$  
- **Tetrad** → $(r_1,r_2,r_3,r_4)$  
- **Möbius triple** → three point‑images  
- **Vector field** → $F$  
- **Jet** → $J^k$  
- **Spectrum** → $\{\hat f(\omega)\}$  
- **Taylor jet** → $\{f^{(n)}(a)\}$

This is the seed category.

---

## **2. Codomain: RDG(𝓒)**  

$$
\mathbf{RDG}(\mathcal{C}) = \{ SID\langle S,I,D\rangle \}
$$

Every RDG object is a triad:

```text
SID⟨ S , I , D ⟩
```

- **S** — structural anchors  
- **I** — interaction rules  
- **D** — dynamic evolution  

---

## **3. Functor Action (Modewise)**  

### **S‑mode**

$$
S(D) = \text{canonical structural embedding of } D
$$

Examples:

- dyad → two‑point structure  
- triad → three‑point structure  
- jet → derivative tower  
- spectrum → frequency lattice  

---

### **I‑mode**

$$
I(D) = \text{constructors induced by } D
$$

Examples:

- roots → polynomial constructors  
- Möbius triple → cross‑ratio constructors  
- vector field → directional constructors  
- jet → differential constraints  

---

### **D‑mode**

$$
D(D) = \text{propagation rules determined by } D
$$

Examples:

- polynomial → evaluation dynamics  
- gradient potential → gradient flow  
- Hamiltonian → symplectic flow  
- jet → PDE propagation  

---

## **4. Full Definition**
$$
\Gamma(D) =
\left\langle
S(D),\;
I(D),\;
D(D)
\right\rangle
$$

This is the generator functor.

---

## **5. Functorial Laws**

### **Identity**

$$
\Gamma(\mathrm{id}_D) = \mathrm{id}_{\Gamma(D)}
$$

Modewise:

$$
\Gamma(\mathrm{id}_D) =
\langle
\mathrm{id}_{S(D)},\;
\mathrm{id}_{I(D)},\;
\mathrm{id}_{D(D)}
\rangle
$$

---

### **Composition**
Given seed maps:

$$
D \xrightarrow{\phi} D' \xrightarrow{\psi} D''
$$

$$
\Gamma(\psi \circ \phi) =
\Gamma(\psi) \circ \Gamma(\phi)
$$

Modewise:

$$
\begin{aligned}
S(\psi\circ\phi) &= S(\psi)\circ S(\phi) \\
I(\psi\circ\phi) &= I(\psi)\circ I(\phi) \\
D(\psi\circ\phi) &= D(\psi)\circ D(\phi)
\end{aligned}
$$

---

### **SID Naturality**

$$
\pi_S \circ \Gamma(\phi) = S(\phi) \circ \pi_S
$$

$$
\pi_I \circ \Gamma(\phi) = I(\phi) \circ \pi_I
$$

$$
\pi_D \circ \Gamma(\phi) = D(\phi) \circ \pi_D
$$

Each mode commutes with the functor.

---

### **Free‑Data Minimality**

$$
D \text{ is free data}
\iff
(D' \subsetneq D \Rightarrow \Gamma(D') \not\cong \Gamma(D))
$$

Equivalently:

- deleting any generator breaks the SID object  
- adding redundant data produces a non‑minimal seed  

This is the formal version of your deletion test.

---

## **6. Compact Axiom**

$$
\Gamma(\langle D\rangle) =
SID\langle S(D), I(D), D(D)\rangle
\quad\text{with}\quad
\Gamma \text{ preserving identity, composition, SID, and minimality.}
$$


---
