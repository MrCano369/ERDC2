frm1.txtJap.addEventListener('change', () => lblJap.innerHTML = toFurigana(frm1.txtJap.value) );
frm1.fulImg.addEventListener('change', () => img1.src = URL.createObjectURL(frm1.fulImg.files[0]) );
btn2.addEventListener('click', () => location.href = "practicar.html" );

window.addEventListener('load', () => {
	fetch('countAll.php')
    .then( r => r.text() )
    .then( data => {
    	prg.value = data;
    	lblCant.innerHTML = data;
    })
    .catch( e => console.log(e) );
});

frm1.addEventListener('submit', e => {
	btnAdd.disabled = true;
	btnAdd.style.backgroundColor = "#eee";

	e.preventDefault();
	var obj = new FormData(frm1)
	fetch('insert.php', {method: 'POST', body: obj})
	.then( r => r.text() )
	.then( data => {
		console.log(data);
		if(Number(data)){
			prg.value++;
			lblCant.innerHTML++;
			reestablecer();
		}else{
			alert("error");
		}
		btnAdd.disabled = false;
		btnAdd.style.backgroundColor = "#2ECC71";
	})
	.catch( e => console.log(e) );
});
/*
https://happylilac.net/kcard-category.html
https://gist.github.com/andyyou/3052671
var color = getComputedStyle(btn).backgroundColor;
(彼,かれ)は(月曜日,げつようび)にニューヨークに(行,い)きました.
(明日,あした)は(晴,は)れだろうか.
(来,く)る(日,ひ)も(来,く)る(日,ひ)も(雪,ゆき)が(降,ふ)っている.
(雨,あめ)が(降,ふ)っている.
(飛行機,ひこうき)は(雲,くも)の(中,なか)に(見,み)えなくなった.
return end(explode(".", $str));
https://denisseestrada.com/como-redimensionar-una-imagen-con-php/
https://www.php.net/manual/es/features.file-upload.post-method.php
Lunes
(月曜日,げつようび)

Soleado
(晴,は)れ

Nieve
(雪,ゆき)

Lluvia
(雨,あめ)

Nube
(雲,くも)
*/