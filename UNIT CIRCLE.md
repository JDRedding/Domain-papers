**UNIT CIRCLE**  
*RDG SID–PED Q Mapping*
(angles labeled in degrees and radians; coordinates shown as $(\cos\theta,\sin\theta)$)

```
                                   (0°, 0)
                                   (1, 0)
                     (30°, π/6)       |        (330°, 11π/6)
                (√3/2, 1/2)           |        (√3/2, -1/2)
                                      |
        (45°, π/4)                    |                    (315°, 7π/4)
   (√2/2, √2/2)                       |                    (√2/2, -√2/2)
                                      |
(60°, π/3)                            |                            (300°, 5π/3)
(1/2, √3/2)                           |                            (1/2, -√3/2)
                                      |
(90°, π/2)  --------------------------+----------------------------  (270°, 3π/2)
(0, 1)                                |                               (0, -1)
                                      |
(120°, 2π/3)                          |                           (240°, 4π/3)
(-1/2, √3/2)                          |                           (-1/2, -√3/2)
                                      |
        (135°, 3π/4)                  |                   (225°, 5π/4)
   (-√2/2, √2/2)                      |                   (-√2/2, -√2/2)
                                      |
                (150°, 5π/6)          |         (210°, 7π/6)
            (-√3/2, 1/2)              |         (-√3/2, -1/2)
                                      |
                                   (180°, π)
                                   (-1, 0)     
                                   
```

---
Using numerical assignments and boundary handling

### 1. RDG Structure
RDG interprets each angle as a relational state:

$$
\text{RDG}(\theta) = (S, I, D)
$$

where  
- $S = \cos\theta$  
- $I = \sin\theta$  
- $D =$ sign pattern of quadrant or boundary

Boundary angles are transitional: they inherit neither quadrant’s full sign-pattern.

### 2. SID Geometry Triad
SID is the geometry-side triad:

$$
(S, I, D) = (\cos\theta, \sin\theta, \text{quadrant sign pattern})
$$

**Interior patterns** (open intervals only):
- QI: $(+, +)$
- QII: $(-, +)$
- QIII: $(-, -)$
- QIV: $(+, -)$

**Boundary angles**:
- $0^\circ/360^\circ$: $(+1, 0)$
- $90^\circ$: $(0, +1)$
- $180^\circ$: $(-1, 0)$
- $270^\circ$: $(0, -1)$

### 3. PED Field Triad
PED is the field-side triad:

$$
P = (|\cos\theta|, |\sin\theta|)
$$
$$
E = (\sec\theta, \csc\theta)
$$
$$
D = \tan\theta
$$

Secant and cosecant carry the sign of the underlying cosine/sine.  
Undefined values are marked $\infty$.

### 4. Q-mode
Q-mode is the relational dominance operator:

$$
Q = |\cos\theta| - |\sin\theta|
$$

- $Q > 0$: cos-dominant  
- $Q < 0$: sin-dominant  
- $Q = 0$: balanced  

**Boundary values**:
- $0^\circ/360^\circ$: $Q = +1$
- $90^\circ$: $Q = -1$
- $180^\circ$: $Q = +1$
- $270^\circ$: $Q = -1$

### Full Corrected Mapping Table

**SID_state_0** — $0^\circ / 360^\circ$  
SID: $(+1, 0)$  
PED: $P=(1, 0)$, $E=(1, \infty)$, $D=0$  
Q: $+1$

**SID_state_30** — $30^\circ$  
SID: $(+\sqrt{3}/2, +1/2)$  
PED: $P=(\sqrt{3}/2, 1/2)$, $E=(2/\sqrt{3}, 2)$, $D=1/\sqrt{3}$  
Q: $> 0$

**SID_state_45** — $45^\circ$  
SID: $(+\sqrt{2}/2, +\sqrt{2}/2)$  
PED: $P=(\sqrt{2}/2, \sqrt{2}/2)$, $E=(\sqrt{2}, \sqrt{2})$, $D=1$  
Q: $0$

**SID_state_60** — $60^\circ$  
SID: $(+1/2, +\sqrt{3}/2)$  
PED: $P=(1/2, \sqrt{3}/2)$, $E=(2, 2/\sqrt{3})$, $D=\sqrt{3}$  
Q: $< 0$

**SID_state_90** — $90^\circ$  
SID: $(0, +1)$  
PED: $P=(0, 1)$, $E=(\infty, 1)$, $D=\infty$  
Q: $-1$

**SID_state_120** — $120^\circ$  
SID: $(-1/2, +\sqrt{3}/2)$  
PED: $P=(1/2, \sqrt{3}/2)$, $E=(-2, 2/\sqrt{3})$, $D=-\sqrt{3}$  
Q: $< 0$

**SID_state_135** — $135^\circ$  
SID: $(-\sqrt{2}/2, +\sqrt{2}/2)$  
PED: $P=(\sqrt{2}/2, \sqrt{2}/2)$, $E=(-\sqrt{2}, \sqrt{2})$, $D=-1$  
Q: $0$

**SID_state_150** — $150^\circ$  
SID: $(-\sqrt{3}/2, +1/2)$  
PED: $P=(\sqrt{3}/2, 1/2)$, $E=(-2/\sqrt{3}, 2)$, $D=-1/\sqrt{3}$  
Q: $> 0$

**SID_state_180** — $180^\circ$  
SID: $(-1, 0)$  
PED: $P=(1, 0)$, $E=(-1, \infty)$, $D=0$  
Q: $+1$

**SID_state_210** — $210^\circ$  
SID: $(-\sqrt{3}/2, -1/2)$  
PED: $P=(\sqrt{3}/2, 1/2)$, $E=(-2/\sqrt{3}, -2)$, $D=+1/\sqrt{3}$  
Q: $> 0$

**SID_state_225** — $225^\circ$  
SID: $(-\sqrt{2}/2, -\sqrt{2}/2)$  
PED: $P=(\sqrt{2}/2, \sqrt{2}/2)$, $E=(-\sqrt{2}, -\sqrt{2})$, $D=+1$  
Q: $0$

**SID_state_240** — $240^\circ$  
SID: $(-1/2, -\sqrt{3}/2)$  
PED: $P=(1/2, \sqrt{3}/2)$, $E=(-2, -2/\sqrt{3})$, $D=+\sqrt{3}$  
Q: $< 0$

**SID_state_270** — $270^\circ$  
SID: $(0, -1)$  
PED: $P=(0, 1)$, $E=(\infty, -1)$, $D=\infty$  
Q: $-1$

**SID_state_300** — $300^\circ$  
SID: $(+1/2, -\sqrt{3}/2)$  
PED: $P=(1/2, \sqrt{3}/2)$, $E=(2, -2/\sqrt{3})$, $D=-\sqrt{3}$  
Q: $< 0$

**SID_state_315** — $315^\circ$  
SID: $(+\sqrt{2}/2, -\sqrt{2}/2)$  
PED: $P=(\sqrt{2}/2, \sqrt{2}/2)$, $E=(+\sqrt{2}, -\sqrt{2})$, $D=-1$  
Q: $0$

**SID_state_330** — $330^\circ$  
SID: $(+\sqrt{3}/2, -1/2)$  
PED: $P=(\sqrt{3}/2, 1/2)$, $E=(2/\sqrt{3}, -2)$, $D=-1/\sqrt{3}$  
Q: $> 0$

---
