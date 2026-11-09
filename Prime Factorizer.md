# Prime Factorizer & Radical Simplifier

A lightweight browser bookmarklet that factors positive integers into primes and simplifies square roots using prime factorization — entirely client-side, with no external dependencies.

- Designed for educational use with moderately sized integers (roughly up to 10¹²–10¹⁴ depending on browser performance)
- Only supports square roots (index 2)
- Integer radicands only (no variables or fractions)
- Trial division is not suitable for factoring large semiprimes

## Features

- **Prime factorization** of positive integers
  - Expanded form (e.g. `2 × 2 × 2 × 3 × 3 × 5`)
  - Exponent form (e.g. `2³ × 3² × 5`)
- **Radical simplification** for square roots
  - Accepts `√72`, `sqrt(72)`, or `sqrt (72)`
  - Outputs simplified radical form (e.g. `6√2`)
  - Also displays the underlying prime factors
- Zero network requests
- Works on any webpage
- Compact (~1 KB)

## Installation

1. Create a new bookmark in your browser.
2. Name it something like **Factor & Simplify**.
3. Paste the following into the URL field:

```javascript
javascript:(()=>{let s=prompt("Enter an integer or radical.\nExamples:\n360\nsqrt(72)\n√72");if(!s)return;s=s.trim();function pf(n){let r=[],d=2;while(n>1&&d*d<=n){while(n%d===0){r.push(d);n/=d}d++}if(n>1)r.push(n);return r}if(/^(\u221A|sqrt\s*\()?(\d+)\)?$/i.test(s)){let n=parseInt(s.match(/\d+/)[0]);let f=pf(n),c={};f.forEach(x=>c[x]=(c[x]||0)+1);let outside=1,inside=1;for(let k in c){let e=c[k];outside*=k**Math.floor(e/2);if(e%2)inside*=k}alert(`√${n}\n\nSimplified: ${inside===1?outside:outside+"√"+inside}\n\nPrime factors: ${f.join(" × ")}`)}else{let n=Math.abs(parseInt(s));if(!Number.isFinite(n)||n<1)return alert("Enter a positive integer.");let f=pf(n);alert(`${n}\n\nPrime factors:\n${f.join(" × ")}\n\nFactorization:\n${Object.entries(f.reduce((a,x)=>(a[x]=(a[x]||0)+1,a),{})).map(([p,e])=>e>1?`${p}^${e}`:p).join(" × ")}`)}})();
```

4. Save the bookmark.

## Usage

Click the bookmarklet on any page. A prompt will appear.

### Examples

| Input       | Output                                      |
|-------------|---------------------------------------------|
| `360`       | Prime factors: `2 × 2 × 2 × 3 × 3 × 5`<br>Factorization: `2^3 × 3^2 × 5` |
| `√72`       | Simplified: `6√2`<br>Prime factors: `2 × 2 × 2 × 3 × 3` |
| `sqrt(48)`  | Simplified: `4√3`                           |
| `100`       | `2^2 × 5^2`                                 |

## How It Works

### Prime Factorization

The bookmarklet uses optimized trial division:

```javascript
function pf(n) {
  let r = [], d = 2;
  while (n > 1 && d * d <= n) {
    while (n % d === 0) {
      r.push(d);
      n /= d;
    }
    d++;
  }
  if (n > 1) r.push(n);
  return r;
}
```

- Handles the factor 2 first
- Then checks odd divisors up to √n
- Returns an array of prime factors (with multiplicity)

### Radical Simplification

For square roots, the algorithm:

1. Obtains the prime factorization of the radicand
2. Groups identical primes into pairs
3. Extracts one factor from each complete pair outside the radical
4. Leaves unpaired factors inside the radical

Example for `√72`:

```
72 = 2³ × 3²
     = (2² × 3²) × 2
√72 = 2 × 3 × √2 = 6√2
```
