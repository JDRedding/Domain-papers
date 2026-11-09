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

## Bookmarklet

Create a new browser bookmark and use the bookmarklet code as the bookmark URL.

```javascript
javascript:(function(){var A=[0,30,45,60,90,120,135,150,180,210,225,240,270,300,315,330];var exact={0:"0",30:"%CF%80/6",45:"%CF%80/4",60:"%CF%80/3",90:"%CF%80/2",120:"2%CF%80/3",135:"3%CF%80/4",150:"5%CF%80/6",180:"%CF%80",210:"7%CF%80/6",225:"5%CF%80/4",240:"4%CF%80/3",270:"3%CF%80/2",300:"5%CF%80/3",315:"7%CF%80/4",330:"11%CF%80/6"};var w=window.open("","trigref","width=580,height=720,scrollbars=yes");if(!w){alert("Popup blocked %E2%80%94 try Version B");return;}w.document.write('<!DOCTYPE html><html><head><title>Trig Reference</title><style>body{font-family:system-ui;padding:20px;max-width:540px;margin:auto}h1{color:#1a73e8}.btn{margin:3px;padding:7px%2012px;font-size:14px;cursor:pointer}.box{background:#f8f9fa;padding:14px;border-radius:8px;margin-top:14px;line-height:1.5}a{color:#1a73e8;text-decoration:none;font-weight:500}%3C/style%3E%3C/head%3E%3Cbody%3E%3Ch1%3EInstant%20Trig%20Reference%3C/h1%3E%3Cdiv%20id=btns%3E%3C/div%3E%3Cdiv%20class=box%20id=out%3ESelect%20an%20angle%20above.%3C/div%3E%3C/body%3E%3C/html%3E');w.document.close();var%20d=w.document;A.forEach(function(a){%20%20var%20b=d.createElement(%22button%22);%20%20b.className=%22btn%22;%20%20b.textContent=a+%22%C2%B0%22;%20%20b.onclick=function(){%20%20%20%20var%20r=a*Math.PI/180,s=Math.sin(r),c=Math.cos(r);%20%20%20%20var%20f=function(n){return%20Math.abs(n)%3C1e-10?%220%22:n.toFixed(6);};%20%20%20%20var%20wa=%22https://www.wolframalpha.com/input?i=%22+encodeURIComponent(%22unit%20circle%20%22+a+%22%20degrees%22);%20%20%20%20var%20des=%22https://www.desmos.com/calculator%22;%20%20%20%20d.getElementById(%22out%22).innerHTML=%20%20%20%20%20%20%22%3Cb%3EAngle:%3C/b%3E%20%22+a+%22%C2%B0%3Cbr%3E%22+%20%20%20%20%20%20%22%3Cb%3ERadians:%3C/b%3E%20%22+exact[a]+%22%3Cbr%3E%22+%20%20%20%20%20%20%22%3Cb%3ECoordinates:%3C/b%3E%20(%22+f(c)+%22,%20%22+f(s)+%22)%3Chr%3E%22+%20%20%20%20%20%20%22%3Cb%3Esin%20%CE%B8%3C/b%3E%20=%20%22+f(s)+%22%3Cbr%3E%22+%20%20%20%20%20%20%22%3Cb%3Ecos%20%CE%B8%3C/b%3E%20=%20%22+f(c)+%22%3Cbr%3E%22+%20%20%20%20%20%20%22%3Cb%3Etan%20%CE%B8%3C/b%3E%20=%20%22+(Math.abs(c)%3C1e-10?%22undefined%22:f(s/c))+%22%3Cbr%3E%22+%20%20%20%20%20%20%22%3Cb%3Ecsc%20%CE%B8%3C/b%3E%20=%20%22+(Math.abs(s)%3C1e-10?%22undefined%22:f(1/s))+%22%3Cbr%3E%22+%20%20%20%20%20%20%22%3Cb%3Esec%20%CE%B8%3C/b%3E%20=%20%22+(Math.abs(c)%3C1e-10?%22undefined%22:f(1/c))+%22%3Cbr%3E%22+%20%20%20%20%20%20%22%3Cb%3Ecot%20%CE%B8%3C/b%3E%20=%20%22+(Math.abs(s)%3C1e-10?%22undefined%22:f(c/s))+%20%20%20%20%20%20%22%3Chr%3E%3Ca%20href='%22+wa+%22'%20target=_blank%3E%F0%9F%93%8A%20Graph%20on%20Wolfram|Alpha%3C/a%3E%3Cbr%3E%22+%20%20%20%20%20%20%22%3Ca%20href='%22+des+%22'%20target=_blank%3E%F0%9F%93%88%20Open%20Desmos%3C/a%3E%20%3Csmall%3E(paste:%20(%22+f(c)+%22,%22+f(s)+%22)%20)%3C/small%3E%22;%20%20};%20%20d.getElementById(%22btns%22).appendChild(b);});})();
```

## Installation

1. Create a new bookmark in your browser.
2. Name it **Unit Circle**.
3. Paste the bookmarklet code into the bookmarks URL/location field.
4. Save the bookmark.
5. Click the bookmark from any webpage to launch the solver.


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
