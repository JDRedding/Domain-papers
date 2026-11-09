# Unit Circle (Instant Trig Reference)

The **Unit Circle (Instant Trig Reference)** bookmarklet provides a quick, interactive reference for the most common angles on the unit circle.

Click any standard angle to instantly view:

- Degree measure
- Exact radian equivalent
- Unit-circle coordinates `(cos θ, sin θ)`
- `sin θ`, `cos θ`, and `tan θ`
- `csc θ`, `sec θ`, and `cot θ`
- Wolfram|Alpha lookup link
- Desmos graphing link

The unit circle is one of the most frequently referenced tools in trigonometry. This bookmarklet turns it into a portable, browser-based calculator and reference sheet that is available from any webpage with a single click.

It serves as both a learning aid and a quick-reference tool for students, educators, engineers, and anyone working with trigonometric functions.

## Supported Angles

```text
0°, 30°, 45°, 60°, 90°, 120°, 135°, 150°,
180°, 210°, 225°, 240°, 270°, 300°, 315°, 330°
```

## Features

### Exact Radian Values

The bookmarklet displays common exact radian measures:

| Degrees | Radians |
|----------|----------|
| 0° | 0 |
| 30° | π/6 |
| 45° | π/4 |
| 60° | π/3 |
| 90° | π/2 |
| 180° | π |
| 270° | 3π/2 |
| 360° | 2π |

### Unit Circle Coordinates

Coordinates are displayed in the form:

```text
(cos θ, sin θ)
```

Examples:

```text
30° → (0.866025, 0.500000)
45° → (0.707107, 0.707107)
60° → (0.500000, 0.866025)
```

### Complete Trigonometric Reference

For each angle, the bookmarklet computes:

- `sin θ`
- `cos θ`
- `tan θ`
- `csc θ`
- `sec θ`
- `cot θ`

Undefined values are handled automatically.

Example for **90°**:

```text
sin θ = 1
cos θ = 0
tan θ = undefined

csc θ = 1
sec θ = undefined
cot θ = 0
```

## Mathematical Definitions

### Sine

```text
sin θ = y-coordinate
```

### Cosine

```text
cos θ = x-coordinate
```

### Tangent

```text
tan θ = sin θ / cos θ
```

### Reciprocal Functions

```text
csc θ = 1 / sin θ
sec θ = 1 / cos θ
cot θ = cos θ / sin θ
```

## Usage

1. Click the bookmarklet.
2. A popup window opens.
3. Select an angle button.
4. Instantly view the trigonometric values for that angle.

## Example Output

```text
Angle: 45°

Radians: π/4

Coordinates:
(0.707107, 0.707107)

sin θ = 0.707107
cos θ = 0.707107
tan θ = 1.000000

csc θ = 1.414214
sec θ = 1.414214
cot θ = 1.000000
```

## Educational Uses

Useful for:

- Algebra II
- Trigonometry
- Precalculus
- Calculus
- Physics
- Engineering
- Exam review
- Memorization and practice

## Notes

- Angles are displayed in degrees.
- Radians are shown in exact symbolic form where available.
- Undefined values (such as `tan(90°)`) are detected automatically.
- Results are computed directly in the browser.
- No external libraries are required.
- Works on any webpage that supports bookmarklets.
- Popup blockers may need to be disabled.

## Future Enhancements

Future versions could include:

- Quadrant highlighting
- Full SVG unit-circle diagram
- Exact radical forms instead of decimal approximations

```text
√3/2
√2/2
1/2
```

- Arbitrary angle input
- Reference-angle calculations
- Arc-length calculations
- Sector-area calculations
- Interactive unit-circle visualization
