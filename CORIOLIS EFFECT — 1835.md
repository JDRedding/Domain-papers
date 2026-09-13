# CORIOLIS EFFECT — 1835
Gaspard-Gustave de Coriolis

Fictitious acceleration in a rotating frame:
```
  a_c = -2 (ω × v)
```
## TYPES / VARIABLES
```
  a_c  vector   Coriolis acceleration          [m/s²]
  ω    vector   Earth's angular velocity       [rad/s]
  v    vector   velocity relative to Earth     [m/s]
  m    scalar   mass (when written as force)   [kg]
  F_c  vector   F_c = m a_c = -2 m (ω × v)     [N]
```
## FUNDAMENTALS
```
  • Cross product ω × v is perpendicular to v
    → changes direction, not speed
  • Observed from Earth's rotating surface
    (not an inertial frame)
  • Horizontal deflection:
      Northern Hemisphere → to the RIGHT
      Southern Hemisphere → to the LEFT
      Equator             → ~0 (horizontal)
  • Magnitude grows with |ω|, |v|, and latitude
    (strongest near poles)
  • In an inertial frame the path is a straight line;
    Earth rotates underneath the object
```

Coriolis did not write the modern vector formula. In the 1835 memoir *Sur les équations du mouvement relatif des systèmes de corps* (*Journal de l’École polytechnique*, 24ᵉ cahier, Tome XV, pp. 142–154) he introduced two families of supplementary inertial forces that must be added to the real forces when the equations of motion are written in a rotating frame. He called the velocity-dependent family the **forces centrifuges composées** (compound centrifugal forces).

### Coriolis’s verbal statement 
Introduction of the 1835 paper

To obtain any equation of *relative* motion of a system of bodies (or of a machine) it is sufficient to add to the existing forces two kinds of supplementary forces:

1. those already required by the theorem of living forces (the ordinary centrifugal forces that keep particles attached to the moving planes);
2. forces directed perpendicularly both to the *relative* velocities and to the instantaneous axis of rotation of the moving planes; their magnitude is twice the product of the angular velocity of the moving planes and the component of relative linear momentum that lies in a plane perpendicular to that axis.

He notes that, except for the living-force equation itself, the second family must be taken *twice*.

### Notation used by Coriolis

- $x,y,z$ — coordinates of a particle of mass $m$ relative to axes that rotate with the body (the “plans mobiles”).
- $p,q,r$ — components of the angular velocity of those axes (so ${\omega}=(p,q,r)$ ).
- $\dot x=\mathrm{d}x/\mathrm{d}t$, etc. — components of the *relative* velocity $\mathbf{v}_r$.
- $X,Y,Z$ — components of the real applied force.

### Components of the compound centrifugal force

On the moving axes the three components that must be added to $X,Y,Z$ are

$$
\begin{align\*} 2mr\,\dot y-2mq\,\dot z,\\ 2mp\,\dot z-2mr\,\dot x,\\ 2mq\,\dot x-2mp\,\dot y. \end{align\*}
$$

(The ordinary centrifugal terms that depend only on position and on $p,q,r$ are written separately.)

Consequently the relative equations of motion read (the $x$-component is shown; the others are cyclic)

$$
m\frac{\mathrm{d}^2x}{\mathrm{d}t^2} =X-2mr\frac{\mathrm{d}y}{\mathrm{d}t}+2mq\frac{\mathrm{d}z}{\mathrm{d}t} +\text{(ordinary centrifugal and constraint terms)}.
$$

### Modern transcription of the same result

With the same symbols the compound-centrifugal (Coriolis) force is exactly

$$
\mathbf{F}_\text{comp}=-2m\,\boldsymbol{\omega}\times\mathbf{v}_r,
$$

which expands to the three components written by Coriolis. The full relative acceleration then takes the now-familiar form

$$
\mathbf{a}_\text{rel}=\mathbf{a}_\text{abs}-\boldsymbol{\omega}\times(\boldsymbol{\omega}\times\mathbf{r})-2\boldsymbol{\omega}\times\mathbf{v}_r
$$

(when $\boldsymbol{\omega}$ is constant). Coriolis himself never isolated the last term; he always treated it together with the ordinary centrifugal force as a single “composed” centrifugal contribution.

## Future Work
- Coriolis in meteorology
- Centrifugal force basics
- Euler force derivation
