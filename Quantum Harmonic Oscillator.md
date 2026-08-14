# Quantum Harmonic Oscillator 
Equations and Notation

A quantum harmonic oscillator's zero-point energy, where even the ground state (n=0) retains E₀ = ½ℏω, preventing the system from ever fully stopping due to inherent quantum uncertainty.

Energy levels are evenly spaced as Eₙ = ℏω(n + ½), derived from Schrödinger's 1926 wave mechanics, serving as a foundational model for molecular vibrations, phonons, and quantum field theory.

The included wave function probability densities for states n=0 to 6, emphasizing nodes, orthogonality, and the non-zero ground state motion central to quantum behavior at absolute zero.

### 1. Potential Energy

$$
V(x) = \frac{1}{2} m \omega^{2} x^{2}
$$

**Notation**  
- $m$: particle mass  
- $\omega$: angular frequency of the oscillator  
- $x$: position coordinate  

### 2. Time-Independent Schrödinger Equation

$$
-\frac{\hbar^{2}}{2m} \frac{d^{2}\psi(x)}{dx^{2}} + \frac{1}{2} m \omega^{2} x^{2} \psi(x) = E \psi(x)
$$

**Notation**  
- $\hbar = \frac{h}{2\pi}$: reduced Planck’s constant  
- $\psi(x)$: wave function (eigenfunction)  
- $E$: energy eigenvalue  

### 3. Energy Eigenvalues (Quantized Levels)

$$
E_{n} = \hbar \omega \left( n + \frac{1}{2} \right), \quad n = 0, 1, 2, 3, \dots
$$

**Zero-point energy** (ground state, $n = 0$):

$$
E_{0} = \frac{1}{2} \hbar \omega
$$

**Notation**  
- $n$: quantum number (non-negative integer)  
- Levels are equally spaced by $\hbar \omega$  

### 4. Wave Function (Eigenfunction)

$$
\psi_{n}(x) = \frac{1}{\sqrt{2^{n} n!}} \left( \frac{m\omega}{\pi \hbar} \right)^{1/4} e^{-\frac{m\omega x^{2}}{2\hbar}} H_{n}\left( \sqrt{\frac{m\omega}{\hbar}} x \right)
$$

**Notation**  
- $H_{n}(\xi)$ : $n$-th Hermite polynomial  
- $|\psi_{n}(x)|^{2}$: probability density of finding the particle at position \( x \)  
- The $n$-th state has exactly $n$ nodes (zeros)  

### 5. Key Related Relations
- Orthogonality of eigenfunctions:

$$
\int_{-\infty}^{\infty} \psi_{m}(x) \psi_{n}(x)\, dx = \delta_{mn}
$$

- Energy spacing:
  
$$
\Delta E = E_{n+1} - E_{n} = \hbar \omega
$$



