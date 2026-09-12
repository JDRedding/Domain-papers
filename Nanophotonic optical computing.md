## Nanophotonic optical computing

Nanophotonics uses high bandwidth, massive parallelism and low energy to meet AI compute demand. Programmable high-density photonic platforms target large-scale models, edge inference and scientific computing. Nanotech solutions for speed, density and complexity. Commercial path already visible in Lightmatter Envise and Neurophos TULKAS.

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
