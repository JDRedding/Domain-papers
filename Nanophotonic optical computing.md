## Nanophotonic optical computing

Nanophotonics uses high bandwidth, massive parallelism and low energy to meet AI compute demand. Programmable high-density photonic platforms target large-scale models, edge inference and scientific computing. Nanotech solutions for speed, density and complexity. Commercial path already visible in Lightmatter Envise and Neurophos TULKAS.

**Notation**

- $n$: refractive index  
- $T$: temperature  
- $E$: electric field  
- $r$: electro-optic coefficient  
- $\lambda$: wavelength  
- $d,h$: optical path length / metasurface height  
- $A_0,k$: input amplitude and transmission factor  
- $\varphi$: optical phase  
- $\mathbf{X},\mathbf{Y}$: input / output field or intensity vectors  
- $\mathbf{T}$: modulation / weight matrix  
- $f,F$: local or network non-linearity  
- $\otimes$: convolution  
- PSF: point-spread function of the optical system  
- $\Phi$: mixing / kernel matrix

## OPTICAL-FIELD MODULATION OPERATORS

### Phase modulation
- Thermo-optic:  Δn = (∂n/∂T) ΔT     φ = (2π/λ) n d
- Electro-optic: Δn ∝ r E            φ = (2π/λ) n h   (metasurface pillars h1, h2)

### Amplitude modulation
- Mach-Zehnder:  A0 split → φ1 / φ2 → k A0
- Microring:     A0 ring → k A0
- Phase-change / plasmonic metasurfaces: voltage-tunable transmittance 0–1

## OPTICAL COMPUTING ARCHITECTURES

### Isomorphic mapping
- X = [i1 … im]
- Tᵀ modulation array
- Y = X × Tᵀ     oi = Σ tjk · ik

### Free-space
Input vector × weight planes → lens sum → detector

### On-chip waveguides
- Laser → x1 E1, x2 E2, x3 E3  (MZI or PCM weights) → detector
- PCM grid: λ1…λm inputs × W matrix → y1…ym outputs

### Non-isomorphic / equivalent
- Optical neural net: Y = F(X)   oi = f(ii)
- Diffraction: input plane → modulation plane → output plane
- Fourier 4f: Iout = Iin ⊗ PSF
- MZI mesh: cascaded interferometers implement arbitrary unitary
- Point-source mixing: Y = X ⊗ Φ

### Key demonstrated metrics
- Taichi chiplet ~160 TOPS/W
- All-analog photoelectronic vision chips
- Integrated photonic accelerators with μs-scale latency
- All-optical nets with millions of neurons

### Remaining limits
- Low-loss high-nonlinearity nanomaterials
- Sub-nm fabrication yield
- Interconnect and packaging at scale

## Formulas and equations

### **Phase and refractive-index modulation**

Thermo-optic index shift  

$$\Delta n=\frac{\partial n}{\partial T}\Delta T$$

Electro-optic index shift  
$$\Delta n\propto rE$$

Accumulated phase  

$$\varphi=\frac{2\pi}{\lambda}nd\qquad\text{or}\qquad\varphi=\frac{2\pi}{\lambda}nh$$

**Amplitude / interferometric modulation**

Mach–Zehnder output  

$$A_{\text{out}}=kA_0\exp\bigl(i(\varphi_1+\varphi_2)/2\bigr)\cos\bigl((\varphi_1-\varphi_2)/2\bigr)$$

(ideal balanced case often written simply as $kA_0$)

### **Linear (isomorphic) optical mapping**

Input vector $\mathbf{X}=[i_1,\dots,i_m]$ 

Weight / transmission matrix $\mathbf{T}$  

Output 

$$\mathbf{Y}=\mathbf{X}\mathbf{T}^\top\qquad o_i=\sum_k t_{ik}\,i_k$$

### **Non-linear / equivalent mapping**

Element-wise or network function

$$o_i=f(i_i)\qquad\mathbf{Y}=F(\mathbf{X})$$

**Diffraction / Fourier optics**

4-f convolution  

$$I_{\text{out}}=I_{\text{in}}\otimes\text{PSF}$$

Point-source mixing  

$$\mathbf{Y}=\mathbf{X}\otimes\Phi$$

