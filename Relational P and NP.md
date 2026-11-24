**SID and PED for P and NP**

### SID(P)

$$
\mathrm{SID}(P)=(S_P,I_P,D_P)
$$

- **S_P** (Structure)  

$$
S_P=\{x,L,M,\top,\bot\}
$$  

where $M:\Sigma^*\to\{\top,\bot\}$ runs in polynomial time.

- **I_P** (Interaction)  

$$
I_P=\{(x,M(x))\mid x\in\Sigma^*\}
$$  

equivalently the decision relation  

$$
x\xrightarrow{M}M(x)\in\{\top,\bot\}.
$$

- **D_P** (Dynamics)  

$$
D_P=\{\pi_P(x)\}
$$  

the single polynomial path satisfying $\mathrm{terminal}(\pi_P)=M(x)$ and $|\pi_P|\le\mathrm{poly}(|x|)$.  
Acceptance: $x\in L\Leftrightarrow\mathrm{terminal}(\pi_P)=\top$.

---

### SID(NP)

$$
\mathrm{SID}(NP)=(S_{NP},I_{NP},D_{NP})
$$

- **S_NP** (Structure)  

$$
S_{NP}=\{x,L,V,\top,\bot\}
$$  

where $V:\Sigma^*\times\Pi\to\{\top,\bot\}$ and $\Pi$ is the path space.

- **I_NP** (Interaction)  

$$
I_{NP}=\{(x,\pi,V(x,\pi))\mid\pi\in\Pi\}
$$  

with $V(x,\pi)\in\{\top,\bot\}$ and $\mathrm{time}(V)\le\mathrm{poly}(|x|)$.

- **D_NP** (Dynamics)  

$$
D_{NP}=\Pi_x=\mathrm{Cl}_{\mathrm{read}}(G_x)=\{\pi_1,\pi_2,\dots\}
$$  

(all paths of polynomial length).  
Acceptance: $x\in L\Leftrightarrow\exists\pi\in\Pi_x$ such that $\mathrm{terminal}(\pi)=\top$.

Witness identification: $y\equiv\pi_y\in\mathrm{Cl}_{\mathrm{read}}(G_x)$.

---

### PED(P)

$$
\mathrm{PED}(P)=(P_P,E_P,D_P^{\mathrm{field}})
$$

- **P_P** (Power)  
  potential over the single-path geometry.

- **E_P** (Evaluation)  

$$
E_P=\mathrm{Eval}(\pi_P)=M(x).
$$

- **D_P^field** (Field slice)  

$$
D_P^{\mathrm{field}}=\rho_P(\pi_P)
$$  

field distribution on the singleton path.

---

### PED(NP)

$$
\mathrm{PED}(NP)=(P_{NP},E_{NP},D_{NP}^{\mathrm{field}})
$$

- **P_NP** (Power)  
  potential induced over the path topology $\Pi_x$ (not a primitive existential source).

- **E_NP** (Evaluation)  

$$
E_{NP}=V(x,\pi)\quad\text{or}\quad\mathrm{Eval}(\pi),\qquad\pi\in\Pi_x.
$$

- **D_NP^field** (Field slice)  

$$
D_{NP}^{\mathrm{field}}=\rho_{NP}(\Pi_x)
$$  

  comprising access, use, persistence, and admissibility distributions on the existing paths.

---

### Relation

$$
\mathrm{PED}(P)=\mathrm{PED}(NP)\Bigm|_{\lvert\Pi_x\rvert=1}.
$$

### Q (common final gate)

$$
Q:D^{\mathrm{field}}\to\{\top,\bot\}
$$  

Acceptance holds precisely when $Q(\mathrm{Eval}(\pi))=\top$ for an appropriate path $\pi$.

This is the complete parallel presentation.
