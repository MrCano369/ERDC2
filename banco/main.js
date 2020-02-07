depositar.addEventListener("submit", (e) => {
	e.preventDefault();
    
    var c = cantidadDeposito.value;
    var d = descripcionDeposito.value;
    var f = fecha();

    fetch('agregar.php', {
        method: 'POST',
        headers: {'Content-Type':'application/x-www-form-urlencoded'},
        body: 'c='+c+'&d='+d+'&f='+f
    })
    .then( r => r.text() )
    .then( data => insertar(c, d, f))
    .catch( e => console.error( e ) );

});

window.addEventListener("load", () => {

    fetch('consultarTodo.php')
    .then( r => r.json() )
    .then( data => {
        data.forEach((e) => {
            insertar(e.cantidad, e.descripcion, e.fecha);
        });
    })
    .catch( e => console.error( e ) );

});

function fecha(){
    var m = ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'];
    var f = new Date();
    
    var min = f.getMinutes();
    if (min < 10) {
        min = '0'+min;
    }

    var hora = f.getHours();
    if (hora > 12) {
        hora = hora - 12+':'+min+'pm';
    }else{
        hora = hora+':'+min+'am';
    }

    return hora+'\n'+f.getDate()+'/'+m[f.getMonth()]+'/'+f.getFullYear(); 
}

function insertar(c, d, f){
    var row = lista.insertRow(0);
    row.insertCell(0).innerText = c;
    row.insertCell(1).innerText = d;
    row.insertCell(2).innerText = f;
}






/*
    var conexion = new XMLHttpRequest();
    conexion.onreadystatechange = function() {
        if (this.readyState == 4) {
           insertar(c, d, f);
        }
        else{
           console.log("cargando...");
        }
    };
    conexion.open("GET", 'agregar.php?c='+c+'&d='+d+'&f='+f, true);
    conexion.send();
    */