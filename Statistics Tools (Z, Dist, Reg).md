# Statistics Tools Bookmarklet

A lightweight, self-contained bookmarklet that opens a popup window with calculators for:

- **Z-Scores**
- **Normal Distributions** (PDF + CDF)
- **Simple Linear Regression**

No external libraries. Works in modern browsers (Chrome, Edge, Firefox, etc.).

## Features

| Tab | What it calculates |
|-----|--------------------|
| **Z-Scores** | $z = \dfrac{x - \mu}{\sigma}$ and approximate $P(X \le x)$ |
| **Distributions** | Z-score, Normal PDF, CDF, and upper tail |
| **Regression** | Slope, intercept, Pearson $r$, and $r^2$ |

## Installation

1. Create a new bookmark in your browser.
2. Name it something like **Stats Tools**.
3. Copy the entire bookmarklet code below and paste it into the URL / Location field.
4. Save the bookmark.
5. Click the bookmark on any page to open the popup.

> If the popup is blocked, allow popups for the current site and try again.

## Bookmarklet Code

```javascript
javascript:(function(){var w=window.open('','StatTools','width=400,height=580,resizable=yes,scrollbars=yes');if(!w){alert('Popup blocked. Allow popups and try again.');return;}w.document.open();w.document.write(`<!DOCTYPE html><html><head><meta charset="utf-8"><title>Statistics Tools</title><style>body{margin:0;font-family:system-ui,sans-serif;font-size:13.5px;background:#f8fafc;color:#1e293b}h3{margin:0;padding:12px;background:#2563eb;color:#fff;font-size:15px}.tabs{display:flex;background:#fff;border-bottom:1px solid #e2e8f0}.tab{flex:1;padding:10px;text-align:center;cursor:pointer;user-select:none}.tab.active{background:#fff;border-bottom:2px solid #2563eb;font-weight:600}.panel{padding:16px;display:none;background:#fff}.panel.active{display:block}label{display:block;margin:6px 0 2px;font-size:12.5px;color:#475569}input,textarea{width:100%;padding:7px;border:1px solid #cbd5e1;border-radius:4px;box-sizing:border-box;font-size:13px}button{margin-top:10px;background:#2563eb;color:#fff;border:none;padding:8px 14px;border-radius:4px;cursor:pointer}.result{margin-top:12px;padding:10px;background:#f1f5f9;border-radius:4px;white-space:pre-wrap;font-family:ui-monospace,monospace;font-size:12.5px}</style></head><body><h3>Statistics Tools</h3><div class="tabs"><div class="tab active" data-tab="z">Z-Scores</div><div class="tab" data-tab="dist">Distributions</div><div class="tab" data-tab="reg">Regression</div></div><div class="panel active" id="panel-z"><label>Value (x)</label><input id="zx" type="number" step="any" value="75"><label>Mean (μ)</label><input id="zmu" type="number" step="any" value="70"><label>SD (σ)</label><input id="zsd" type="number" step="any" value="5"><button id="btnZ">Calculate</button><div id="zres" class="result"></div></div><div class="panel" id="panel-dist"><label>Value (x)</label><input id="dx" type="number" step="any" value="75"><label>Mean (μ)</label><input id="dmu" type="number" step="any" value="70"><label>SD (σ)</label><input id="dsd" type="number" step="any" value="5"><button id="btnD">Calculate</button><div id="dres" class="result"></div></div><div class="panel" id="panel-reg"><label>Data (x y pairs, one per line)</label><textarea id="rdata" rows="7" placeholder="1 2&#10;2 4&#10;3 5&#10;4 4&#10;5 5"></textarea><button id="btnR">Linear Regression</button><div id="rres" class="result"></div></div></body></html>`);w.document.close();w.focus();const doc=w.document;function erf(x){const sign=x>=0?1:-1;x=Math.abs(x);const a1=0.254829592,a2=-0.284496736,a3=1.421413741,a4=-1.453152027,a5=1.061405429,p=0.3275911;const t=1/(1+p*x);const y=1-(((((a5*t+a4)*t)+a3)*t+a2)*t+a1)*t*Math.exp(-x*x);return sign*y;}function nCDF(x,mu=0,sd=1){return 0.5*(1+erf((x-mu)/(sd*Math.SQRT2)));}function zS(x,mu,sd){return (x-mu)/sd;}doc.querySelectorAll('.tab').forEach(tab=>{tab.onclick=()=>{doc.querySelectorAll('.tab').forEach(t=>t.classList.remove('active'));doc.querySelectorAll('.panel').forEach(p=>p.classList.remove('active'));tab.classList.add('active');doc.getElementById('panel-'+tab.dataset.tab).classList.add('active');};});doc.getElementById('btnZ').onclick=()=>{const x=+doc.getElementById('zx').value,mu=+doc.getElementById('zmu').value,sd=+doc.getElementById('zsd').value;const res=doc.getElementById('zres');if(!sd){res.textContent='SD must be > 0';return;}const z=zS(x,mu,sd),p=nCDF(x,mu,sd);res.textContent=`Z = ${z.toFixed(4)}\nP(X ≤ ${x}) ≈ ${p.toFixed(4)}\n(${((1-p)*100).toFixed(2)}% above)`;};doc.getElementById('btnD').onclick=()=>{const x=+doc.getElementById('dx').value,mu=+doc.getElementById('dmu').value,sd=+doc.getElementById('dsd').value;const res=doc.getElementById('dres');if(!sd){res.textContent='SD must be > 0';return;}const z=zS(x,mu,sd),cdf=nCDF(x,mu,sd),pdf=(1/(sd*Math.sqrt(2*Math.PI)))*Math.exp(-0.5*z*z);res.textContent=`Z = ${z.toFixed(4)}\nPDF ≈ ${pdf.toFixed(6)}\nCDF P(X ≤ x) ≈ ${cdf.toFixed(4)}\nP(X > x) ≈ ${(1-cdf).toFixed(4)}`;};doc.getElementById('btnR').onclick=()=>{const raw=doc.getElementById('rdata').value.trim();const res=doc.getElementById('rres');if(!raw){res.textContent='Enter some data';return;}const pts=[];raw.split(/\n/).forEach(line=>{const ps=line.trim().split(/[\s,]+/).map(Number).filter(n=>!isNaN(n));if(ps.length>=2)pts.push([ps[0],ps[1]]);});if(pts.length<2){res.textContent='Need at least 2 valid points';return;}let n=pts.length,sx=0,sy=0,sxy=0,sx2=0,sy2=0;pts.forEach(([x,y])=>{sx+=x;sy+=y;sxy+=x*y;sx2+=x*x;sy2+=y*y;});const denom=n*sx2-sx*sx;if(!denom){res.textContent='Cannot compute (all x values identical)';return;}const slope=(n*sxy-sx*sy)/denom,inter=(sy-slope*sx)/n,r=(n*sxy-sx*sy)/Math.sqrt(denom*(n*sy2-sy*sy));res.textContent=`n = ${n}\ny = ${slope.toFixed(4)}x + ${inter.toFixed(4)}\nr = ${r.toFixed(4)}\nr² = ${(r*r).toFixed(4)}`;};})();
```

## Usage Notes

### Z-Scores & Distributions
Enter a value $x$, mean $\mu$, and standard deviation $\sigma$.  
The normal CDF uses a high-accuracy error-function approximation.

### Regression
Paste data as **x y** pairs (space- or comma-separated), one pair per line:

```
1 2
2 4
3 5
4 4
5 5
```

The tool computes the least-squares line:

$$
y = bx + a
$$

along with the correlation coefficient $r$ and coefficient of determination $r^2$.

## Interesting inputs

### Z-Scores & Distributions
Try these classic cases:

| Description | x | μ | σ | Why it’s interesting |
|-------------|----|----|----|----------------------|
| Exactly 1 SD above mean | 100 | 100 | 15 | Z = 1.0000 (IQ-style) |
| Exactly 2 SD below mean | 70 | 100 | 15 | Z = −2.0000 |
| Extremely high | 145 | 100 | 15 | Z ≈ 3.00 (≈ 99.87th percentile) |
| Near zero | 0 | 0 | 1 | Standard normal |
| Small SD | 52 | 50 | 1 | Big Z even with modest difference |
| Negative mean | −10 | −5 | 3 | Works fine with negative values |

### Regression
Paste any of these into the Regression tab:

**Perfect positive linear**
```
1 2
2 4
3 6
4 8
5 10
```
→ slope = 2, r = 1.0000

**Perfect negative**
```
1 10
2 8
3 6
4 4
5 2
```
→ slope = −2, r = −1.0000

**Classic textbook example**
```
1 2
2 3
3 5
4 4
5 6
```
→ mild positive relationship

**No relationship (horizontal)**
```
1 5
2 5
3 5
4 5
5 5
```
→ slope ≈ 0, r = 0

**All x identical (error case)**
```
3 1
3 4
3 2
3 7
```
→ correctly refuses to compute

**Real-ish data (hours studied vs score)**
```
1 55
2 61
3 68
4 74
5 81
6 85
7 90
```
→ strong positive slope
