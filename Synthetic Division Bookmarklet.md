# Synthetic Division Bookmarklet

The **Synthetic Division** bookmarklet automates one of the most useful techniques in algebra: dividing a polynomial by a linear factor of the form `(x - r)` or `(x + r)`. Synthetic division is easy to make mistakes with by hand, especially for higher-degree polynomials. This bookmarklet performs the calculation instantly while displaying the synthetic division results, quotient coefficients, and remainder. Synthetic division is one of the most common algebra procedures repeatedly perform by hand. Automating the arithmetic removes clerical errors while preserving the educational value of seeing the division results and quotient formation process.

## Features

- Supports polynomials of any degree
- Displays the synthetic division work
- Computes quotient coefficients
- Computes the remainder
- Tests whether a candidate root is an actual root
- Useful for the Rational Root Theorem
- Educational visualization of the process
- No external libraries required

## Mathematical Background

Given

```text
P(x) = aₙxⁿ + aₙ₋₁xⁿ⁻¹ + … + a₁x + a₀
```

and divisor

```text
(x - r)
```

synthetic division produces

```text
P(x) = (x - r)Q(x) + R
```

where `Q(x)` is the quotient and `R` is the remainder.

If `R = 0`, then `(x - r)` is a factor of the polynomial.

## Inputs

The bookmarklet prompts for:

### Polynomial Coefficients

Enter coefficients separated by commas (highest degree to constant).

Example:

```text
1,-6,11,-6
```

represents

```text
x³ - 6x² + 11x - 6
```

### Synthetic Value

Enter `r` for division by `(x - r)`.

Example: `r = 2` corresponds to `(x - 2)`.

## Example

Polynomial:

```text
x³ - 6x² + 11x - 6
```

Synthetic value: `2`

Synthetic division:

```text
 2 |  1   -6   11   -6
   |      2   -8    6
   -------------------
      1   -4    3    0
```

Quotient:

```text
x² - 4x + 3
```

Remainder: `0`

Factorization confirmed:

```text
x³ - 6x² + 11x - 6 = (x - 2)(x² - 4x + 3)
```

## Bookmarklet

Create a bookmark and use the following as its URL:

```javascript
javascript:(function(){
var coeffs=prompt("Enter coefficients highest degree to constant\nExample: 1,-6,11,-6","1,-6,11,-6");
if(!coeffs)return;
var c=coeffs.split(",").map(Number);
if(c.some(isNaN)){alert("Invalid coefficients");return;}
var r=parseFloat(prompt("Enter synthetic value r for divisor (x-r)","2"));
if(isNaN(r)){alert("Invalid value");return;}
var work=[c[0]];
for(var i=1;i<c.length;i++){
    work[i]=c[i]+work[i-1]*r;
}
var rem=work[work.length-1];
var q=work.slice(0,-1);
var html='<!DOCTYPE html><html><head><title>Synthetic Division</title><style>'+
'body{font-family:system-ui;padding:20px;max-width:700px;margin:auto}'+
'h1{color:#1a73e8}'+
'pre{background:#f8f9fa;padding:12px;border-radius:8px;overflow:auto}'+
'.box{background:#f8f9fa;padding:12px;border-radius:8px;margin:10px 0}'+
'</style></head><body>';
html+='<h1>Synthetic Division</h1>';
html+='<div class=box><b>Divisor:</b> (x - '+r+')</div>';
html+='<div class=box><b>Original Coefficients:</b><br>'+c.join(', ')+'</div>';
html+='<div class=box><b>Quotient Coefficients:</b><br>'+q.join(', ')+'</div>';
html+='<div class=box><b>Remainder:</b> '+rem+'</div>';
html+='<pre>';
html+=' r = '+r+'\\n\\n';
html+='Input:  '+c.join('   ')+'\\n';
html+='Output: '+work.join('   ');
html+='</pre>';
html+=(Math.abs(rem)<1e-10)
?'<div class=box><b>Result:</b> Exact factor (remainder 0)</div>'
:'<div class=box><b>Result:</b> Not a factor</div>';
html+='</body></html>';
var w=window.open("","syntheticdivision","width=720,height=700,scrollbars=yes");
if(w){
    w.document.write(html);
    w.document.close();
}else{
    alert("Popup blocked");
}
})();
```

## Usage

1. Click the bookmarklet.
2. Enter polynomial coefficients separated by commas.
3. Enter the synthetic value `r`.
4. View the quotient, remainder, and division results.

## Educational Uses

Useful for:

- Algebra II
- College Algebra
- Precalculus
- Rational Root Theorem practice
- Polynomial factorization
- Exam preparation

## Future Enhancements

Possible upgrades include:

- Automatic polynomial formatting
- Rational Root Theorem candidate generator
- Polynomial factorization tree
- Multiple synthetic divisions in sequence
- Exact fraction support
- Graphing links (Desmos / Wolfram Alpha)
- Step-by-step animation of the synthetic division process
