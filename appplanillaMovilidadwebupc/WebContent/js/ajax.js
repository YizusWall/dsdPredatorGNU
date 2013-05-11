var READY_STATE_UNITIALIZED = 0;
var READY_STATE_LOADING = 1;
var READY_STATE_LOADED = 2;
var READY_STATE_INTERACTIVE = 3;
var READY_STATE_COMPLETE = 4;

var objHttp;

function inicializa_xhr() {
	// depending on what the browser supports, use the right way to create the
	// XMLHttpRequest object
	if (window.XMLHttpRequest) {
		// Mozilla, Safari would use this method ...
		return new XMLHttpRequest();

	} else if (window.ActiveXObject) {
		// IE would use this method ...
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function cargaContenido(url, metodo, funcion) {

	objHttp = inicializa_xhr();

	if (objHttp) {
		objHttp.onreadystatechange = funcion;
		objHttp.open(metodo, url, true);
		objHttp.send(null);
	}
}

// Funciones particulares para cada peticion 

function validarCorreo(objTexto){
    
    cargaContenido("../servletValidar?p_correo="+escape(objTexto.value), 
                    "GET", 
                    muestraMensaje);
    
}

function muestraMensaje(){
    
    if(objHttp.readyState == READY_STATE_COMPLETE) {
     
        if(objHttp.status == 200){
            
            document.getElementById("resultado").innerHTML = objHttp.responseText;
            
        }
        
    }
    
}