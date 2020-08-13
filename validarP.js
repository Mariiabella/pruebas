function validarP() {
    var Nombre, aPaterno, aMaterno, Com, CalleNum, CPostal, Curp, FechaN, Gen, cuip, cup, fpArma, fArma, Estudios, titulo, celular, casa, estatus, Grado, Grupo, Evaluado, Evaluacion, entrada, salida, suspension, evalF, observacion, expresion;
    Nombre = document.getElementById("Nom").value;
    aPaterno = document.getElementById("aPaterno").value;
    aMaterno = document.getElementById("aMaterno").value;
    Com = document.getElementById("Com").value;
    CalleNum = document.getElementById("CalleNum").value;
    CPostal = document.getElementById("CPostal").value;
    Curp = document.getElementById("Curp").value;
    FechaN = document.getElementById("FechaN").value;
    Gen = document.getElementById("Gen").value;
    cuip = document.getElementById("cuip").value;
    cup = document.getElementById("cup").value;
    fpArma = document.getElementById("fpArma").value;
    fArma = document.getElementById("fArma").value;
    Estudios = document.getElementById("Estudios").value;
    titulo = document.getElementById("titulo").value;
    celular = document.getElementById("celular").value;
    casa = document.getElementById("casa").value;
    estatus = document.getElementById("estatus").value;
    Grado = document.getElementById("Grado").value;
    Grupo = document.getElementById("Grupo").value;
    Evaluado = document.getElementById("Evaluado").value;
    Evaluacion = document.getElementById("Evaluacion").value;
    entrada = document.getElementById("entrada").value;
    salida = document.getElementById("salida").value;
    suspension = document.getElementById("suspension").value;
    evalF = document.getElementById("evalF").value;
    observacion = document.getElementById("observacion").value;
    expresion = /^[A-Za-zñÑ-áéíóúÁÉÍÓÚ\s\t-]/;

if (Nombre === "") {
        alert("El dato de 'Nombre(s)' está vacío");
        return false;
    } else if (Nombre.length > 20) {
        alert("El dato de 'Nombre(s)' es muy largo");
        return false;
    } else if (!expresion.test(Nombre)) {
        alert("El dato de 'Nombre(s)' no debe llevar números");
        return false;
    }
    
        if (aPaterno === "") {
        alert("El dato de 'Apellido paterno' está vacío");
        return false;
    } else if (aPaterno.length > 20) {
        alert("El dato de 'Apellido paterno' es muy largo");
        return false;
    } else if (!expresion.test(aPaterno)) {
        alert("El dato de 'Apellido paterno' no lleva números");
        return false;
    }

    if (aMaterno === " ") {
        alert("El dato de 'Apellido materno' está vacío");
        return false;
    } else if (aMaterno.length > 20) {
        alert("El dato de 'Apellido materno' es muy largo");
        return false;
    } else if (!expresion.test(aMaterno)) {
        alert("El dato de 'Apellido materno' no debe llevar números");
        return false;
    }

    if (Com === " ") {
        alert("El dato de 'Comunidad' está vacío");
        return false;
    } else if (Com.length > 15) {
        alert("El dato de 'Comunidad' es muy largo");
        return false;
    } else if (!expresion.test(Com)) {
        alert("El dato de 'Comunidad' no debe llevar números");
        return false;
    }

    if (CalleNum === " ") {
        alert("El dato de 'Calle y número' está vacío");
        return false;
    } else if (CalleNum.length > 30) {
        alert("El dato de 'Calle y número' es muy largo");
        return false;
    } 

    if (CPostal === " ") {
        alert("El dato de 'Codigo postal' está vacío");
        return false;
    } else if (CPostal.length > 5) {
        alert("El dato de 'Codigo postal' lleva 5 dígitos");
        return false;
    } else if (isNaN(CPostal)) {
        alert("El dato de 'Codigo postal' ingresado no es un número");
        return false;
    }

    if (FechaN === " ") {
        alert("El dato de 'Fecha de nacimiento' está vacío");
        return false;
    }

    if (Gen === "") {
        alert("El dato de 'Genero' está vacío");
        return false;
    }

    if (cuip === " ") {
        alert("El dato de 'Cuip' está vacío");
        return false;
    } else if (cuip.length > 15) {
        alert("El dato de 'Cuip' es muy largo");
        return false;
    } 

    if (cup === " ") {
        alert("El dato de 'Cup' del delito está vacío");
        return false;
    } else if (cup.length > 15) {
        alert("El dato de 'Cup' es muy largo");
        return false;
    } 

    if (fpArma === "") {
        alert("El dato de 'Folio de portación arma' está vacío");
        return false;
    } else if (fpArma.length > 10) {
        alert("El dato de 'Folio de portación arma' es muy largo");
        return false;
    }

    if (fArma === " ") {
        alert("El dato de 'Folio de arma' está vacío");
        return false;
    } else if (fArma.length > 10) {
        alert("El dato de 'Folio de arma' es muy largo");
        return false;
    }
    
    if(Estudios===" "){
        alert("El dato de 'Nivel de estudios' esta vacio");
    return false;
}
else if (Estudios.length > 30) {
        alert("El dato de 'Nivel de estudios' es muy largo");
        return false;
    }
    else if (!expresion.test(Estudios)) {
        alert("El dato de 'Nivel de estudios' no lleva números");
        return false;
    }

     if(titulo===" "){
        alert("El dato de 'Título' esta vacio");
    return false;
}
else if (titulo.length > 30) {
        alert("El dato de 'Título' es muy largo");
        return false;
    }
    else if (!expresion.test(titulo)) {
        alert("El dato de 'Título' no lleva números");
        return false;
    }
    
     if (celular.length > 10) {
        alert("El dato de 'Teléfono celular' debe ser de 10 digitos");
        return false;
    } else if (isNaN(celular)) {
        alert("El dato de 'Teléfono celular' no es un número");
        return false;
    }
    
     if (casa.length > 10) {
        alert("El dato de 'Teléfono casa' debe ser de 10 digitos");
        return false;
    } else if (isNaN(casa)) {
        alert("El dato 'Teléfono casa' no es un número");
        return false;
    }

    if (estatus === " ") {
        alert("El dato de 'Estatus' está vacío");
        return false;
    }

    }
    if (guardar===1){
       alert("la información a sido actualizada correctamente!"); 
    }
    