function strtotime(_1,_2){
var i,_3,s,_4="",_5="";
_4=_1;
_4=_4.replace(/\s{2,}|^\s|\s$/g," ");
_4=_4.replace(/[\t\r\n]/g,"");
if(_4=="now"){
return (new Date()).getTime()/1000;
}else{
if(!isNaN(_5=Date.parse(_4))){
return (_5/1000);
}else{
if(_2){
_2=new Date(_2*1000);
}else{
_2=new Date();
}
}
}
_4=_4.toLowerCase();
var _6={day:{"sun":0,"mon":1,"tue":2,"wed":3,"thu":4,"fri":5,"sat":6},mon:{"jan":0,"feb":1,"mar":2,"apr":3,"may":4,"jun":5,"jul":6,"aug":7,"sep":8,"oct":9,"nov":10,"dec":11}};
var _7=function(m){
var _8=(m[2]&&m[2]=="ago");
var _9=(_9=m[0]=="last"?-1:1)*(_8?-1:1);
switch(m[0]){
case "last":
case "next":
switch(m[1].substring(0,3)){
case "yea":
_2.setFullYear(_2.getFullYear()+_9);
break;
case "mon":
_2.setMonth(_2.getMonth()+_9);
break;
case "wee":
_2.setDate(_2.getDate()+(_9*7));
break;
case "day":
_2.setDate(_2.getDate()+_9);
break;
case "hou":
_2.setHours(_2.getHours()+_9);
break;
case "min":
_2.setMinutes(_2.getMinutes()+_9);
break;
case "sec":
_2.setSeconds(_2.getSeconds()+_9);
break;
default:
var _a;
if(typeof (_a=_6.day[m[1].substring(0,3)])!="undefined"){
var _b=_a-_2.getDay();
if(_b==0){
_b=7*_9;
}else{
if(_b>0){
if(m[0]=="last"){
_b-=7;
}
}else{
if(m[0]=="next"){
_b+=7;
}
}
}
_2.setDate(_2.getDate()+_b);
}
}
break;
default:
if(/\d+/.test(m[0])){
_9*=parseInt(m[0],10);
switch(m[1].substring(0,3)){
case "yea":
_2.setFullYear(_2.getFullYear()+_9);
break;
case "mon":
_2.setMonth(_2.getMonth()+_9);
break;
case "wee":
_2.setDate(_2.getDate()+(_9*7));
break;
case "day":
_2.setDate(_2.getDate()+_9);
break;
case "hou":
_2.setHours(_2.getHours()+_9);
break;
case "min":
_2.setMinutes(_2.getMinutes()+_9);
break;
case "sec":
_2.setSeconds(_2.getSeconds()+_9);
break;
}
}else{
return false;
}
break;
}
return true;
};
_3=_4.match(/^(\d{2,4}-\d{2}-\d{2})(?:\s(\d{1,2}:\d{2}(:\d{2})?)?(?:\.(\d+))?)?$/);
if(_3!=null){
if(!_3[2]){
_3[2]="00:00:00";
}else{
if(!_3[3]){
_3[2]+=":00";
}
}
s=_3[1].split(/-/g);
for(i in _6.mon){
if(_6.mon[i]==s[1]-1){
s[1]=i;
}
}
s[0]=parseInt(s[0],10);
s[0]=(s[0]>=0&&s[0]<=69)?"20"+(s[0]<10?"0"+s[0]:s[0]+""):(s[0]>=70&&s[0]<=99)?"19"+s[0]:s[0]+"";
return parseInt(this.strtotime(s[2]+" "+s[1]+" "+s[0]+" "+_3[2])+(_3[4]?_3[4]/1000:""),10);
}
var _c="([+-]?\\d+\\s"+"(years?|months?|weeks?|days?|hours?|min|minutes?|sec|seconds?"+"|sun\\.?|sunday|mon\\.?|monday|tue\\.?|tuesday|wed\\.?|wednesday"+"|thu\\.?|thursday|fri\\.?|friday|sat\\.?|saturday)"+"|(last|next)\\s"+"(years?|months?|weeks?|days?|hours?|min|minutes?|sec|seconds?"+"|sun\\.?|sunday|mon\\.?|monday|tue\\.?|tuesday|wed\\.?|wednesday"+"|thu\\.?|thursday|fri\\.?|friday|sat\\.?|saturday))"+"(\\sago)?";
_3=_4.match(new RegExp(_c,"gi"));
if(_3==null){
return false;
}
for(i=0;i<_3.length;i++){
if(!_7(_3[i].split(" "))){
return false;
}
}
return (_2.getTime()/1000);
};

