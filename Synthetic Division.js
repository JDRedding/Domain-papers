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
