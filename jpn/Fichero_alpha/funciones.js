function reestablecer(){
	frm1.reset();
    lblJap.innerHTML = "término en Japonés";
    img1.parentNode.innerHTML = "<img id='img1' width='100' height='100'>";
}

function cambiarPrg(p, v) {
	let prg = document.getElementById('prg'+p);
	prg.value += v;
	prg.previousSibling.innerText = prg.value+"/"+prg.max;
}

function toFurigana(str){
	var furi = "";
	var kan = "";
	var a = false;
	for (let i = 0; i < str.length; i++) {
		if (str.charAt(i) == '(') {
			a = true;
			continue;
		}else if (str.charAt(i) == ')') {
			if (kan.length) {
				let arr = kan.split(',', 2);
				furi += '<f><h>'+arr[1]+'</h><k>'+arr[0]+'</k></f>';
				kan = '';
			}
			a = false;
			continue;
		}else if (a) {
			kan += str.charAt(i);
		}else{
			furi += str.charAt(i);
		}
	}
	return furi;
}