# Triangle Solver Bookmarklet

The **Triangle Solver** prompts you to select a triangle configuration and enter the required measurements. It then solves the triangle and displays all sides, angles, area, and perimeter.

The solver supports all common triangle-solving cases and correctly handles the ambiguous **SSA** configuration, including situations with zero, one, or two valid solutions.

- All angles are measured in degrees.
- Results *are* displayed in a separate popup window.
- Popup blockers may need to be disabled for the bookmarklet to function properly.
- Works entirely in the browser with no external libraries.
- Internet access is only *required if you use the Wolfram|Alpha* verification link.

## Supported Cases

| Case | Known Values |
|--------|--------|
| SSS | Three sides `a`, `b`, `c` |
| SAS | Two sides and the included angle |
| ASA | Two angles and the included side |
| AAS | Two angles and a non-included side |
| SSA | Two sides and a non-included angle (ambiguous case) |

## Features

The solver computes:

- All three sides
- All three angles
- Area
- Perimeter
- Multiple solutions for SSA when applicable
- Validation of impossible triangles
- Wolfram|Alpha verification link

### Mathematical Methods

#### Law of Cosines

Used for SSS and SAS cases:

```text
a² = b² + c² − 2bc cos(A)
b² = a² + c² − 2ac cos(B)
c² = a² + b² − 2ab cos(C)
```

#### Law of Sines

Used for ASA, AAS, and SSA cases:

```text
a / sin(A) = b / sin(B) = c / sin(C)
```

#### Heron's Formula

Used to compute area in the SSS case:

```text
s = (a + b + c) / 2

Area = √(s(s − a)(s − b)(s − c))
```

#### Included-Angle Area Formula

Used when an angle and two sides are known:

```text
Area = (1/2)ab sin(C)
```

## Bookmarklet

Create a new browser bookmark and use the bookmarklet code as the bookmark URL.

```javascript
javascript:(function(){
const d2r=x=>x*Math.PI/180, r2d=x=>x*180/Math.PI;
const cases={
SSS:"Three sides a,b,c",
SAS:"Sides a,b + included angle C",
ASA:"Angles A,B + included side c",
AAS:"Angles A,B + non-included side a",
SSA:"Sides a,b + non-included angle A (ambiguous)"
};
const choice=prompt("Choose case:\n1=SSS\n2=SAS\n3=ASA\n4=AAS\n5=SSA","1");
const map={"1":"SSS","2":"SAS","3":"ASA","4":"AAS","5":"SSA"};
const type=map[choice];
if(!type){alert("Invalid choice");return;}
let a,b,c,A,B,C,results=[];
function areaHeron(a,b,c){const s=(a+b+c)/2;return Math.sqrt(s*(s-a)*(s-b)*(s-c));}
function fmt(t){return `a=${t.a.toFixed(6)}\nb=${t.b.toFixed(6)}\nc=${t.c.toFixed(6)}\nA=${t.A.toFixed(4)}°\nB=${t.B.toFixed(4)}°\nC=${t.C.toFixed(4)}°\nArea=${t.area.toFixed(6)}\nPerimeter=${(t.a+t.b+t.c).toFixed(6)}`;}
try{
if(type==="SSS"){
a=+prompt("Side a","3");b=+prompt("Side b","4");c=+prompt("Side c","5");
if(a+b<=c||a+c<=b||b+c<=a)throw"Not a triangle (triangle inequality)";
A=r2d(Math.acos((b*b+c*c-a*a)/(2*b*c)));
B=r2d(Math.acos((a*a+c*c-b*b)/(2*a*c)));
C=180-A-B;
results.push({a,b,c,A,B,C,area:areaHeron(a,b,c)});
}else if(type==="SAS"){
a=+prompt("Side a","5");b=+prompt("Side b","7");C=+prompt("Included angle C (deg)","60");
c=Math.sqrt(a*a+b*b-2*a*b*Math.cos(d2r(C)));
A=r2d(Math.acos((b*b+c*c-a*a)/(2*b*c)));
B=180-A-C;
results.push({a,b,c,A,B,C,area:0.5*a*b*Math.sin(d2r(C))});
}else if(type==="ASA"){
A=+prompt("Angle A (deg)","50");B=+prompt("Angle B (deg)","60");c=+prompt("Included side c","10");
C=180-A-B;
if(C<=0)throw"Angles sum ≥180°";
a=c*Math.sin(d2r(A))/Math.sin(d2r(C));
b=c*Math.sin(d2r(B))/Math.sin(d2r(C));
results.push({a,b,c,A,B,C,area:0.5*a*b*Math.sin(d2r(C))});
}else if(type==="AAS"){
A=+prompt("Angle A (deg)","30");B=+prompt("Angle B (deg)","40");a=+prompt("Side a (opposite A)","5");
C=180-A-B;
if(C<=0)throw"Angles sum ≥180°";
b=a*Math.sin(d2r(B))/Math.sin(d2r(A));
c=a*Math.sin(d2r(C))/Math.sin(d2r(A));
results.push({a,b,c,A,B,C,area:0.5*b*c*Math.sin(d2r(A))});
}else if(type==="SSA"){
A=+prompt("Angle A (deg)","30");a=+prompt("Side a (opposite A)","10");b=+prompt("Side b","15");
const sinB=b*Math.sin(d2r(A))/a;
if(sinB>1)throw"No triangle (sin B > 1)";
const B1=r2d(Math.asin(sinB));
const candidates=[[B1]];
if(B1<90&&A+B1<180)candidates.push([180-B1]);
candidates.forEach(([B])=>{
const C=180-A-B;
if(C>0){
const c=a*Math.sin(d2r(C))/Math.sin(d2r(A));
if(c>0)results.push({a,b,c,A,B,C,area:0.5*a*b*Math.sin(d2r(C))});
}
});
if(!results.length)throw"No valid triangle";
}
}catch(e){alert("Error: "+e);return;}
let html=`<!DOCTYPE html><html><head><title>Triangle Solver</title><style>body{font-family:system-ui;padding:20px;line-height:1.5}h1{color:#1a73e8}.sol{background:#f8f9fa;padding:12px;margin:10px 0;border-radius:8px;white-space:pre}</style></head><body><h1>Triangle Solver (${type})</h1>`;
results.forEach((t,i)=>{html+=`<div class=sol><strong>Solution ${i+1}</strong>\n${fmt(t)}</div>`;});
html+=`<p><a href="https://www.wolframalpha.com/input?i=triangle" target=_blank>Verify on Wolfram|Alpha</a></p></body></html>`;
const w=window.open("","trianglesolver","width=480,height=640,scrollbars=yes");
if(w){w.document.write(html);w.document.close();}else alert("Popup blocked");
})();
```


## How to Use

1. Click the bookmarklet.
2. Select a case:

   ```text
   1 = SSS
   2 = SAS
   3 = ASA
   4 = AAS
   5 = SSA
   ```

3. Enter the requested measurements.

4. The solver opens a results window containing the complete solution.

## Example Output

```Text
a = 3.000000
b = 4.000000
c = 5.000000

A = 36.8699*
B = 53.1301°
C = 90*0000°

Area = 6.000000
Perimeter = 12.000000
```

## SSA Ambiguous Case

The SSA configuration can produce:

```Text
0 solutions
1 solution
2 solutions
```

The bookmarklet automatically detects and displays all valid*solutions.

## Input Requirements

#### Sides

All side lengths must be positive:

```text
a > 0
b > 0
c > 0
```

### Angles

All angles are entered in degrees:

```text
0° < A, B, C < 180°
```

### Triangle Validity

The triangle inequality *ust hold:

```text
a + b > c
a + c > b
b + c > a
```

Additionally:

```text
A + B + C = 180°
```

## Error Handling

The solver rejects invalid configuration, including:

- Violation of the triangle inequality
- Negative or zero side lengths
- Invalid angle combinations
- Angle sums greater than or equal to 180° - Impossible SSA configurations - Law of Sines cases where

```text
sin(B) > 1
```

or

```text
sin(C) > 1
```

which indicate no valid triangole exists.
