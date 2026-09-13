# CIRCUIT TRANSIENTS  
- |  current i(t) after switch closes (DC source)
The lumped analyusis of **current** $i(t)$ after a DC source is switched in at $t=0$.

## RULE OF THUMB
- after ~5 tau the transient is ~gone  (e^{-5} ~ 0.7%)

## FUNDAMENTALS
```
  Capacitor  voltage cannot jump     i_C = C dv/dt
  Inductor   current cannot jump     v_L = L di/dt
  Transient  dies out as t -> inf    circuit settles to DC steady state
  At DC SS   C acts open, L acts short
```

## TYPES
```
  RC   resistor + capacitor
  RL   resistor + inductor
  RLC  resistor + inductor + capacitor
```

## VARIABLES
```
  R     resistance          [ohm]
  L     inductance          [H]
  C     capacitance         [F]
  V     source voltage      [V]
  i(t)  current             [A]
  t     time                [s]
  tau   time constant
        RC:  tau = R C
        RL:  tau = L / R
  alpha damping             RLC: alpha = R / (2L)
  w0    natural frequency   w0 = 1 / sqrt(L C)
  wd    damped frequency    wd = sqrt(w0^2 - alpha^2)
```

## CURRENT WAVEFORMS 
```
  RC charging
    i(t) = (V/R) * exp(-t / (R C))
    starts high, decays to 0
    (C charges, current stops)

  RL energizing
    i(t) = (V/R) * (1 - exp(-t R / L))
    starts at 0, rises to V/R
    (L opposes sudden current)

  RLC series  (underdamped, R small)
    i(t) = exp(-alpha t) * (A cos(wd t) + B sin(wd t))
    ringing that dies out
    overdamped if alpha > w0   (no oscillation)
    critically damped if alpha = w0
```

**Series RC** (source $V$, resistor $R$, capacitor $C$; $C$ initially uncharged)

Governing equation:

$$
RC\frac{dv_C}{dt}+v_C=V
$$

Current:

$$
i(t)=\frac{V}{R}e^{-t/\tau},\qquad\tau=RC
$$

($i$ starts at $V/R$ and decays exponentially to 0.)

**Series RL** (source $V$, resistor $R$, inductor $L$; $L$ initially unenergized)

Governing equation:

$$
L\frac{di}{dt}+Ri=V
$$

Current:

$$
i(t)=\frac{V}{R}\bigl(1-e^{-t/\tau}\bigr),\qquad\tau=\frac{L}{R}
$$

($i$ starts at 0 and rises exponentially to $V/R$.)

**Series RLC** (source $V$, $R$, $L$, $C$)

Governing equation (current):

$$
L\frac{d^2i}{dt^2}+R\frac{di}{dt}+\frac{1}{C}i=0
$$

Characteristic equation:

$$
s^2+\frac{R}{L}s+\frac{1}{LC}=0
$$

Damping factor and resonant frequency:

$$
\alpha=\frac{R}{2L},\qquad\omega_0=\frac{1}{\sqrt{LC}}
$$

Underdamped case ($\alpha<\omega_0$), which matches the animation:

$$
i(t)=e^{-\alpha t}(A\cos\omega_d t+B\sin\omega_d t),\qquad\omega_d=\sqrt{\omega_0^2-\alpha^2}
$$

Constants $A,B$ are set by initial conditions ($i(0^+)=0$, $L\,di/dt|_{0^+}=V$). Current oscillates and decays to 0 (capacitor open-circuits DC in steady state).

Notation recap: $\tau$ time constant, $\alpha$ neper frequency, $\omega_0$ undamped natural frequency, $\omega_d$ damped frequency.





