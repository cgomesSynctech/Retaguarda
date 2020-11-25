function Point(x,y) {  this.x = x; this.y = y; }
mouseLocation = new Point(-500,-500);
function getMouseLoc(e) {
  if(!document.all) { //NS
    mouseLocation.x = e.pageX;
    mouseLocation.y = e.pageY;
  }
  else { //IE
    mouseLocation.x = event.x + document.body.scrollLeft;
    mouseLocation.y = event.y + document.body.scrollTop;
  }
  return true;
}
//NS init:
if(document.layers){ document.captureEvents(Event.MOUSEMOVE); document.onMouseMove = getMouseLoc; }

var bFigAparecendo = false;

var ns4 = (document.layers) ? true : false;
var ie4 = (document.all) ? true : false;
var ns6 = (document.getElementById&&!document.all) ? true:false;

var lastY = 0;

for (i=0;i<total;i++){eval("var pos"+i+";");}
for (i=0;i<total;i++){eval("var posV"+i+";");}

function init(){
		for (i=0;i<total;i++){
				if (ns4) {eval("obj"+i+"=document.div"+i)}
				if (ie4) {eval("obj"+i+"=div"+i+".style")}
				if (ns6) {eval("ns6"+i+"=document.getElementById('div"+i+"')");
				              eval("obj"+i+"=ns6"+i+".style")}
				eval("pos"+i+"=parseInt(obj"+i+".top);");
				eval("posV"+i+"=pos"+i+"-120")
			  }
		}

function Some() {
  for (i=0;i<total;i++) {
    eval("obj"+i+".visibility ='hidden'" );
  }

  bFigAparecendo = false;
}

function Aparece(obj) {
  eval(obj+".visibility ='visible'" ); 
  if (document.layers) getMouseLoc;     //NS
  else if (document.all) getMouseLoc(); //IE 
  eval(obj+".left =" + mouseLocation.x);    
//  eval(obj+".left =" + mouseLocation.x + " + " + obj+".width ");  
//  eval(obj+".left ="  + "-50");  
  eval(obj+".top =" + mouseLocation.y + "+ 8");
//  alert(eval(obj + ".width"));
  bFigAparecendo = true;  
}

function ClicaLink(obj) {
  if (bFigAparecendo) {
//    alert(bFigAparecendo);
    Some();
  } else {
    Aparece(obj);
//    alert(bFigAparecendo);	
  }
  
}

function mostra (obj) {
  lugar=parseInt(eval(obj+".left "));
  if (parado==true){
	parado=false;
	if (lugar == -152) {cond="lugar<=-10";dif=10;indice_inicial = eval(obj+".zIndex");fator = 500 - (5*indice_inicial);if (fator < 81) {fator=81};eval(obj+".zIndex =indice_inicial + fator");}
    if (lugar == -2) {cond="lugar>=-142";dif=-10;eval(obj+".zIndex =" + indice_inicial);}
  }
  if (eval(cond)) {
	clearTimeout(moving);
	eval(obj+".left =lugar+dif");
	obj = "'"+obj+"'";
	moving = eval('setTimeout("mostra('+obj+')", 20);');}
	else {
		clearTimeout(moving);
		moving=setTimeout('null',1);
		parado=true;
    }
}


function cabecalho(Titulo){
  document.write('<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#B7DBFF">');
  document.write('  <tr>');
  document.write('    <td height="32"><font size="3" face="Arial">');
  document.write('     <strong>&nbsp;&nbsp;&nbsp;<a name="0">'+ Titulo + '</a></strong></font>&nbsp;');
  document.write('    </td>');
  document.write('  </tr>');
  document.write('</table>');
  document.write('<table width="100%" border="0" cellspacing="0" cellpadding="0">');
  document.write('  <tr>');
  document.write('    <td><img src="Imagens/Geral/azul.jpg" width="100%" height="2"></td>');
  document.write('  </tr>');
  document.write('</table>');
}