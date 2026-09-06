# ANTENNA TYPES AND APPLICATIONS
Different Antennas for a Connected World

From smartphones to satellites, antennas make wireless communication possible.

```
Application Area          Common Antennas
------------------------ -------------------------------
Mobile Phones             PIFA, MIMO, Patch, Monopole
Wi-Fi                     Patch, Monopole, MIMO
GPS/GNSS                  Patch, Helix, Choke-ring
Satellite Communication   Parabolic, Horn, Helix, Patch
Radar                     Phased Array, Horn, Reflector
TV Broadcasting           Yagi-Uda, Log-Periodic
Automotive                Monopole, Patch, Shark-Fin
IoT Devices               PCB Antenna, Monopole, Chip
RFID / NFC                Loop, Dipole, Patch
Aircraft & Defense        Blade, Slot, Phased Array
Spacecraft                Helix, Patch, Horn, Reflector
Radio Astronomy           Large Reflector
UWB Systems               Vivaldi, Bow-Tie, Spiral
Medical / Wearable        Patch, Wearable, Implantable
```

### 1 WIRE ANTENNAS
Simple structures, widely used at lower frequencies.

Dipole  Monopole (Whip)  Loop  Helical

Applications:
• Radio & TV broadcasting
• Mobile communication
• GPS/GNSS, RFID
• Long-distance (HF) communication
• Direction finding, spectrum monitoring

### 2 APERTURE ANTENNAS
Radiate through an opening or aperture.

Horn (Aperture)  Conical Horn  Lens Antenna

Applications:
• Satellite communication
• Radar systems
• Microwave links
• Radio astronomy
• Antenna measurements

### 3 MICROSTRIP / PATCH ANTENNAS
Low profile, lightweight, easy to integrate.

Rectangular Patch  Circular Patch  Stacked Patch

Applications:
• Wi-Fi, Bluetooth, IoT
• GPS/GNSS, Satellite communication
• 5G/6G, Mobile devices
• Compact wireless systems

### 4 ARRAY ANTENNAS
Multiple elements working together.

Yagi-Uda  Log-Periodic  Phased Array  Massive MIMO Array (5G)

Applications:
• TV reception
• 5G/6G base stations
• Radar, military systems
• Direction finding
• High-capacity wireless links

### 5 REFLECTOR ANTENNAS
Use reflecting surfaces for high gain.

Parabolic Dish  Cassegrain  Offset Dish

Applications:
• Satellite communication (DTH, VSAT)
• Radar systems
• Radio astronomy
• Deep-space communication

### 6 TRAVELING-WAVE ANTENNAS
Use traveling waves instead of standing waves.

Helical (Axial Mode)  Beverage  Rhombic

Applications:
• Satellite communication
• HF long-distance communication
• GPS/GNSS
• Military and international broadcasting

### 7 FREQUENCY-INDEPENDENT ANTENNAS
Operate over a wide frequency range.

Spiral  Log-Periodic  Vivaldi

Applications:
• Wideband communication
• EMC/EMI testing
• Spectrum monitoring
• Electronic warfare
• Direction finding

### 8 SLOT ANTENNAS
Slots cut in conducting surfaces.

Rectangular Slot  Circular Slot  H-Slot

Applications:
• Radar systems
• Satellite communication
• Wideband & multiband applications
• Compact RF systems
• Wi-Fi, 5G, IoT

### 9 HORN ANTENNAS
Widely used at microwave frequencies.

Pyramidal Horn  Conical Horn  Sectoral Horn

Applications:
• Radar and satellite communication
• Microwave measurement
• Antenna calibration
• Feeds for reflector antennas
• EMC testing

### 10 SPECIAL-PURPOSE ANTENNAS
Designed for specific needs.

RFID  NFC  Wearable  Bow-Tie

Applications:
• UWB communication
• RFID/NFC systems
• Electronic warfare
• Microwave imaging
• Healthcare & wearable devices

### 11 MODERN ANTENNAS
Advanced designs for next-generation systems.

MIMO  Metamaterial  Reconfigurable

Applications:
• 4G/5G/6G communication
• Cognitive radio, SDR
• Compact & multi-band systems
• Body area networks (IoT)
• Next-generation wireless devices

## FUNDAMENTALS
```
lambda = c / f
c     : speed of light (3e8 m/s)
f     : frequency (Hz)
lambda: wavelength (m)

k = 2 * pi / lambda
k     : wave number (rad/m)
```

### RADIATION & GAIN
```
D = 4 * pi * U_max / P_rad
G = eta * D
eta = P_rad / P_in

D     : directivity (dimensionless)
U_max : maximum radiation intensity (W/sr)
P_rad : radiated power (W)
G     : gain
eta   : radiation efficiency
P_in  : input power (W)
```

### EFFECTIVE APERTURE
```
A_e = (lambda^2 * G) / (4 * pi)
A_e   : effective aperture (m^2)
```

### FRIIS TRANSMISSION
```
P_r / P_t = G_t * G_r * (lambda / (4 * pi * R))^2

P_r   : received power (W)
P_t   : transmitted power (W)
G_t   : transmit antenna gain
G_r   : receive antenna gain
R     : distance (m)
```

### HALF-WAVE DIPOLE (WIRE)
```
L = lambda / 2
R_rad ~ 73 ohm
Z_in  ~ 73 + j42.5 ohm  (free space, thin)

L     : length (m)
R_rad : radiation resistance (ohm)
Z_in  : input impedance (ohm)
```

### MONOPOLE
```
L = lambda / 4
R_rad ~ 36.5 ohm
```

### PARABOLIC REFLECTOR
```
G ~ eta * (pi * D / lambda)^2
theta_3dB ~ 70 * (lambda / D)   (degrees)

D     : dish diameter (m)
eta   : aperture efficiency (0.5-0.7 typical)
theta_3dB : half-power beamwidth
```

### HORN ANTENNA (PYRAMIDAL)
```
G ~ (4 * pi * A_e) / lambda^2
A_e ~ 0.5 * A_p     (approx)

A_p   : physical aperture area (m^2)
```

### MICROSTRIP / PATCH
```
f_r = c / (2 * L * sqrt(eps_eff))
L ~ lambda_g / 2

f_r      : resonant frequency (Hz)
L        : patch length (m)
eps_eff  : effective permittivity
lambda_g : guided wavelength (m)
```

### ARRAY FACTOR (UNIFORM LINEAR)
```
AF = sin(N * psi / 2) / sin(psi / 2)
psi = k * d * cos(theta) + beta

N     : number of elements
d     : element spacing (m)
beta  : progressive phase shift (rad)
theta : observation angle (rad)
```

### BEAMWIDTH (GENERAL)
```
HPBW ~ k * (lambda / L_eff)

HPBW  : half-power beamwidth (rad or deg)
L_eff : effective length or aperture dimension
k     : constant depending on illumination (typically 0.886 to 1.2)
```

