# M27W401-80B6 STMicroelectronics
4 Mbit Low-Voltage UV / OTP EPROM

## FUNDAMENTALS
```
  Each cell is a floating-gate MOSFET.
  Charge on the floating gate shifts Vth.
  UV light (window ceramic package) discharges
  the gate and erases the array.
  OTP versions use the same die in opaque
  plastic packages and cannot be UV-erased.
  Read uses a single low-voltage supply.
  Programming needs elevated VPP on selected
  cells.
```

## TYPE
```
  Non-volatile memory
  UV-erasable EPROM  and  OTP EPROM
  Parallel 8-bit interface
  CMOS process
  Pin-compatible with M27C4001
```

## ORGANIZATION
```
  Capacity     : 4 Mbit
  Array        : 524288 x 8   (512 Kb x 8)
  Address bus  : A0 .. A18    (19 bits)
  Data bus     : Q0 .. Q7     (8 bits)
```

## KEY SIGNALS
```
  E    Chip Enable          (active low)
  G    Output Enable        (active low)
  VCC  Read supply          2.7 V to 3.6 V
  VPP  Program supply
  VSS  Ground
```

## SPEED / POWER  (-80 grade)
```
  Access time  : 80 ns  @ VCC = 2.7–3.6 V
               : 70 ns  @ VCC = 3.0–3.6 V
  Active ICC   : 15 mA max @ 5 MHz
  Standby ICC  : 15 µA max
  Program time : 100 µs / byte typical
```

## IDENTIFIERS
```
  Manufacturer code : 20h
  Device code       : 41h
  Package shown     : 32-pin PDIP  (B)
  Temp range        : -40 °C to +85 °C  (6)
```

### Original marked PDIP
: decapped die, memory array visible as two large rectangular blocks with  a central decode / interconnect strip
-M27W401-80B6  BA88B  0242L  TAIWAN

## EQUATIONS AND NOTATION

### MEMORY ORGANIZATION
```
N_addr  =  2^19  =  524288
N_bit   =  N_addr * 8  =  4 194 304   (4 Mbit)
A       =  A18 A17 ... A0              address word
Q       =  Q7  Q6  ... Q0              data byte
byte(A) maps to 8 cells at linear index
          i = A * 8 + b,   b in {0..7}

```
### LOGIC / ACCESS
```
Read enable:
  Q valid  iff  E = 0  and  G = 0
               and addresses held >= t_AVQV

Timing (grade -80):
  t_AVQV  = t_ACC   address-valid  -> Q-valid
  t_ELQV  = t_CE    E-low          -> Q-valid
  t_GLQV  = t_OE    G-low          -> Q-valid

  t_AVQV(3.0–3.6 V)  <=  70 ns
  t_AVQV(2.7–3.6 V)  <=  80 ns
  t_GLQV             <=  40–50 ns

  t_AVQV  ≈  t_ELQV     (when G already low)

Hold / release:
  t_AXQX  = t_OH    address change -> Q change   (>= 0)
  t_EHQZ, t_GHQZ    E or G high    -> Hi-Z

```
### POWER
```
P_act   =  V_CC * I_CC
P_stby  =  V_CC * I_CC2

  I_CC   <=  15 mA    (E=G=low, f=5 MHz, I_OUT=0)
  I_CC2  <=  15 µA    (CMOS standby, E > V_CC-0.2 V)
  I_CC1  <=   1 mA    (TTL standby, E=V_IH)

Energy per access (order of magnitude):
  E_acc  ≈  V_CC * I_CC * t_AVQV

```
### PROGRAMMING
```
V_CC,prog  =  6.25 V ± 0.25 V
V_PP       = 12.75 V ± 0.25 V
t_pw       = 100 µs / byte   (typical pulse)
T_array    ≈ 52.5 s          (PRESTO II, whole chip typical)

Mode:
  program when  V_PP = 12.75 V,  G = V_IH,  E pulsed to V_IL
  virgin / erased state = logic 1
  program writes selected 0s only
  0 -> 1 only by UV (window package)

```
### FLOATING-GATE CELL
```
Notation
  Q_fg     charge on floating gate
  C_pp     control-gate to floating-gate capacitance
  C_tot    total FG capacitance
  α        C_pp / C_tot     (coupling ratio)
  V_cg     control-gate voltage
  V_fg     floating-gate voltage
  V_th0    virgin (erased) threshold
  ΔV_th    threshold shift
  V_th     apparent cell threshold

Capacitive divider:
  V_fg  =  α V_cg  +  Q_fg / C_tot  +  coupled terms

Threshold shift:
  ΔV_th  =  - Q_fg / C_pp
  V_th   =  V_th0 + ΔV_th

Read sense:
  programmed (electrons on FG):  Q_fg < 0,  V_th high  ->  "0"
  erased     (Q_fg ≈ 0):          V_th ≈ V_th0        ->  "1"

Channel-hot-electron program (EPROM):
  high V_drain + high V_cg  injects hot electrons onto FG
  dQ_fg / dt  <  0   during pulse

```
### UV ERASE
```
Wavelength cutoff:
  λ  <  ≈ 4000 Å   starts photoemission from FG
  λ_rec  =  2537 Å  (recommended mercury line)

Dose:
  D  =  I_UV * t_erase
  D_min  >=  15 W·s / cm^2

Example lamp:
  I_UV  =  12 000 µW / cm^2  =  0.012 W / cm^2
  t_erase  ≈  D_min / I_UV
           ≈  15 / 0.012  =  1250 s   (~15–20 min practice)

Photon energy:
  E_ph  =  h c / λ
  λ = 253.7 nm  =>  E_ph ≈ 4.89 eV
  (above SiO2 / poly barrier enough to emit stored electrons)

Distance note: chip within ≈ 2.5 cm of lamp tubes.
```
### SIGNATURE
```
Manufacturer ID  =  20h
Device ID        =  41h
(same pair as M27C4001)
```

## Future work
- Floating Gate Transistor Physics
- Flash Memory Technology

