# Bridges between classical and quantum mechanics
*Standard list*

# 1. **Correspondence Principle**  
Classical behavior emerges when quantum numbers are large or ℏ→0.  
Using the symbols:

### Classical observable limit

$$
A_{\text{quantum}}(a,b,c) \xrightarrow[\hbar\to 0]{} A_{\text{classical}}(a,b,c)
$$

### Example mapping  
Quantum operator → classical function:

$$
\hat{X} \mapsto x,\quad \hat{P} \mapsto p
$$

Generic symbolic form:

$$
[\hat{x},\hat{p}] = i\hbar \;\;\longrightarrow\;\; \{x,p\}=1
$$

---

# 2. **Semiclassical Methods**  
Expand quantum quantities in powers of ℏ:

### Generic WKB‑type structure

$$
\psi(x) = \exp\!\left[\frac{i}{\hbar}\left(S_0(x) + \hbar S_1(x) + \hbar^2 S_2(x)+\cdots\right)\right]
$$

Using the variables:

$$
S_0(x) = \int p(x)\,dx,\quad p(x)=\sqrt{2a\,(c - V(x))}
$$

### Semiclassical Hamiltonian

$$
H_{\text{sc}}(x,p) = \frac{p^2}{2a} + b\,x^2 + c
$$

---

# 3. **Phase‑Space Formalisms**  
Quantum mechanics in phase space parallels classical Liouville dynamics.

### Wigner function (generic symbolic form)

$$
W(x,p) = \frac{1}{2\pi\hbar}\int dy\; e^{-ipy/\hbar}\,\psi^*(x+\tfrac{y}{2})\psi(x-\tfrac{y}{2})
$$

### Moyal bracket → Poisson bracket

$$
\{A,B\}_{\text{Moyal}} = \{A,B\}_{\text{Poisson}} + O(\hbar^2)
$$

Generic symbolic Poisson bracket:

$$
\{f,g\} = \frac{\partial f}{\partial x}\frac{\partial g}{\partial p}
          -\frac{\partial f}{\partial p}\frac{\partial g}{\partial x}
$$

---

# 4. **Decoherence**  
Classicality emerges when environmental interactions suppress interference.

### Generic Lindblad‑type evolution

$$
\frac{d\rho}{dt} = -\frac{i}{\hbar}[H,\rho] + a\,L\rho L^\dagger - b\,\{L^\dagger L,\rho\}
$$

### Pointer basis emergence  
If the environment couples to $x$, then the density matrix becomes diagonal in $x$:

$$
\rho(x,y) \to 0 \quad \text{for } x\neq y
$$

Symbolically:

$$
\rho(x,y) \approx r(x)\,\delta(x-y)
$$

---

# 5. **Hybrid Quantum–Classical Dynamics**  
Mix classical variables (x,p) with quantum operators ($\hat{x},\hat{p}$).

### Generic hybrid bracket

$$
\frac{dA}{dt} = \{A,H_c\}_{x,p} + \frac{1}{i\hbar}[A,H_q]
$$

Where:
- $H_c(x,p) = \frac{p^2}{2a} + b x^2$  
- $H_q = c\,\hat{x} + r\,\hat{p}$

### Example hybrid evolution

$$
\dot{x} = \frac{\partial H_c}{\partial p},\quad
\dot{p} = -\frac{\partial H_c}{\partial x} + \langle \hat{F} \rangle
$$

---

# 6. **Category‑Theoretic Equivalence**  
Classical and quantum theories are related by functors between Poisson manifolds and C*‑algebras.

### Generic symbolic mapping

$$
\mathcal{Q}: (x,p,\{,\}) \;\mapsto\; (\hat{x},\hat{p},[,])
$$

$$
\mathcal{C}: (\hat{x},\hat{p},[,]) \;\mapsto\; (x,p,\{,\})
$$

Almost inverse:

$$
\mathcal{C}\circ\mathcal{Q} \approx \mathrm{id}
$$

---

# 7. **Least‑Action Reformulations**  
Modify the classical Hamilton–Jacobi equation to reproduce quantum dynamics.

### Classical HJ equation (generic)

$$
\frac{\partial S}{\partial t} + \frac{(\nabla S)^2}{2a} + V(x) = 0
$$

### Quantum‑corrected version

$$
\frac{\partial S}{\partial t} + \frac{(\nabla S)^2}{2a} + V(x) + \frac{\hbar^2}{2a}\frac{\nabla^2 R}{R} = 0
$$

Where $R(x)$ is a density-like field.

### Wavefunction reconstruction

$$
\psi(x) = R(x)\,e^{iS(x)/\hbar}
$$

---

# 8. **Putting It All Together**
*Unified Symbolic Summary*

Here is the compact synthesis using the variables:

### Classical mechanics  

$$
H_c(x,p) = \frac{p^2}{2a} + b x^2 + c
$$

### Quantum mechanics  

$$
\hat{H}_q = \frac{\hat{p}^2}{2a} + b\,\hat{x}^2 + c
$$

### Semiclassical limit  

$$
\psi(x) \sim e^{\frac{i}{\hbar}S_0(x)}
$$

### Phase‑space bridge  

$$
W(x,p) \leftrightarrow \rho
$$

### Decoherence  

$$
\rho(x,y)\to 0\quad (x\neq y)
$$

### Hybrid dynamics  

$$
\dot{x} = \frac{\partial H_c}{\partial p},\quad
\dot{p} = -\frac{\partial H_c}{\partial x} + \langle \hat{F} \rangle
$$

### Category‑theoretic  

$$
\mathcal{Q}(x,p) = (\hat{x},\hat{p})
$$

### Least‑action  
$$
\psi = R\,e^{iS/\hbar}
$$

---

