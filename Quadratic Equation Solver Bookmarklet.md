# Comprehensive Quadratic Equation Solver Bookmarklet

The **Comprehensive Quadratic Equation Solver** prompts for the coefficients `a`, `b`, and `c` of the quadratic equation

$$
ax^2 + bx + c = 0
$$

and opens a formatted results window containing a complete analysis of the quadratic.

- No external libraries are required.
- No network connection is required for calculations.
- Wolfram|Alpha and Desmos links are optional convenience features.
- Popup windows must be allowed in the browser for the results window to appear.

## Features

The solver computes and displays:

- Equation
- Discriminant

$$
D = b^2 - 4ac
$$

- Roots
  - Two distinct real roots
  - One repeated real root
  - Two complex-conjugate roots
- Vertex

$$
\left( -\frac{b}{2a}, \;a\left(-\frac{b}{2a}\right)^2 + b\left(-\frac{b}{2a}\right) + c\right)
$$

- Y-intercept

$$
(0,c)
$$

- X-intercept summary
- Pre-filled Wolfram|Alpha graph link
- Desmos graph link
- Copy-ready equation for graphing

## Bookmarklet

Create a new browser bookmark and use the bookmarklet code as the bookmark URL.

```javascript
javascript:(function(){var a=parseFloat(prompt("Enter a (coeff of x²):","1"));if(isNaN(a)||a===0){alert(a===0?"a cannot be 0":"Invalid a");return;}var b=parseFloat(prompt("Enter b (coeff of x):","0"));if(isNaN(b)){alert("Invalid b");return;}var c=parseFloat(prompt("Enter c (constant):","0"));if(isNaN(c)){alert("Invalid c");return;}var disc=b*b-4*a*c;var vx=-b/(2*a);var vy=a*vx*vx+b*vx+c;var rootsMsg="";if(disc>0){var r1=(-b+Math.sqrt(disc))/(2*a);var r2=(-b-Math.sqrt(disc))/(2*a);rootsMsg="Two real roots:<br>x₁ = "+r1.toFixed(8)+"<br>x₂ = "+r2.toFixed(8);}else if(disc===0){var r=-b/(2*a);rootsMsg="One repeated real root:<br>x = "+r.toFixed(8);}else{var re=-b/(2*a);var im=Math.sqrt(-disc)/(2*Math.abs(a));rootsMsg="Complex conjugate roots:<br>"+re.toFixed(8)+" ± "+im.toFixed(8)+"i";}var eq=a+"x² + "+(b>=0?"+":"")+b+"x + "+(c>=0?"+":"")+c+" = 0";var wa="https://www.wolframalpha.com/input?i="+encodeURIComponent("y = "+a+"*x^2 + "+b+"*x + "+c);var html="<!DOCTYPE html><html><head><title>Quadratic Solver</title><style>body{font-family:system-ui,sans-serif;padding:20px;max-width:480px;margin:auto;line-height:1.5}h1{color:#1a73e8}.box{background:#f8f9fa;padding:12px;border-radius:8px;margin:10px 0}a{color:#1a73e8;text-decoration:none;font-weight:500}</style></head><body><h1>Quadratic Equation Solver</h1><div class=box><strong>Equation:</strong> "+eq+"</div><div class=box><strong>Discriminant D=b²-4ac:</strong> "+disc.toFixed(8)+"</div><div class=box><strong>Roots:</strong><br>"+rootsMsg+"</div><div class=box><strong>Vertex:</strong> ("+vx.toFixed(8)+", "+vy.toFixed(8)+")</div><div class=box><strong>Y-intercept:</strong> (0, "+c+")</div><div class=box><strong>X-intercepts:</strong> "+(disc>=0?"the roots above":"none (complex)")+"</div><p><a href="+wa+" target=_blank>📊 Graph on Wolfram|Alpha</a></p><p><a href=https://www.desmos.com/calculator target=_blank>📈 Open Desmos</a><br><small>Paste: y = "+a+"x^2 + "+b+"x + "+c+"</small></p></body></html>";var w=window.open("","quadsolver","width=520,height=640,scrollbars=yes");if(w){w.document.write(html);w.document.close();}else{alert("Popup blocked? Allow popups and try again.");}})();
```

## Installation

1. Create a new bookmark in your browser.
2. Name it **Quadratic solver**.
3. Paste the bookmarklet code into the bookmarks URL/location field.
4. Save the bookmark.
5. Click the bookmark from any webpage to launch the solver.

## Input Requirements

The bookmarklet accepts:

- Positive coefficie*ts
- Negative coefficients
- Integer values
- Decimal values

Coefficient `a` must be nonzero.

```text
a ≠ 0
```

If `a = 0`, the bookmarklet rejects the input because the equation is no longer quadratic.

## Output Precision

Numeric results are displayed to **8 decimal places**.

Examples:

```text
1.414*1356
-3.14159265
0*50000000
```
