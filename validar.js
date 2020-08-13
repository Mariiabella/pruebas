function validar() {
    var nombres, apaterno, amaterno, genero, estados, municipios, comunidades, calleNumero, cpostal, areaC, tDelito, comunidadD, tArma, drogas, otros, unidad, expresion;
    nombres = document.getElementById("nombres").value;
    apaterno = document.getElementById("apaterno").value;
    amaterno = document.getElementById("amaterno").value;
    genero = document.getElementById("genero").value;
    estados = document.getElementById("estados").value;
    municipios = document.getElementById("municipios").value;
    comunidades = document.getElementById("comunidades").value;
    calleNumero = document.getElementById("calleNumero").value;
    cpostal = document.getElementById("cpostal").value;
    areaC = document.getElementById("areaC").value;
    tDelito = document.getElementById("tDelito").value;
    comunidadD = document.getElementById("comunidadD").value;
    tArma = document.getElementById("tArma").value;
    drogas = document.getElementById("drogas").value;
    otros = document.getElementById("otros").value;
    unidad = document.getElementById("unidad").value;
    expresion= /^[A-Za-zñÑ-áéíóúÁÉÍÓÚ\s\t-]/;

    if (nombres === "") {
        alert("El dato 'Nombre(s)' está vacío");
        return false;
    }else if (nombres.length>20){
        alert("El dato 'Nombre(s)' es muy largo");
        return false;
    }
    else if(!expresion.test(nombres)){
        alert("El dato 'Nombre(s)' no lleva números");
        return false;
    }
    if (apaterno === " ") {
        alert("El dato 'Apellido paterno' está vacío");
        return false;
    }else if (apaterno.length>20){
        alert("El dato'Apellido paterno' es muy largo");
        return false;
    }
    else if(!expresion.test(apaterno)){
        alert("El dato 'Apellido paterno' no lleva números");
        return false;
    }
    
    if (amaterno === "") {
        alert("El dato 'Apellido materno' está vacío");
        return false;
    }else if (amaterno.length>20){
        alert("El dato 'Apellido materno' es muy largo");
        return false;
    }
    else if(!expresion.test(amaterno)){
        alert("El dato 'Apellido materno' no lleva números");
        return false;
    }
    
    if (genero === "") {
        alert("El dato 'Genero' está vacío");
        return false;
    }
        
    if (estados === "") {
        alert("El dato 'Estado' está vacío");
        return false;
    }else if (estados.length>50){
        alert("El dato 'Estado' es muy largo");
        return false;
    }
    else if(!expresion.test(estados)){
        alert("El dato 'Estado' no lleva números");
        return false;
    }
    
    if (municipios === "") {
        alert("El dato 'Municipio' está vacío");
        return false;
    }else if (municipios.length>50){
        alert("El dato 'Municipio' es muy largo");
        return false;
    }
    else if(!expresion.test(municipios)){
        alert("El dato 'Municipio' no lleva números");
        return false;
    }
    
    if (comunidades === "") {
        alert("El dato 'Comunidad' está vacío");
        return false;
    }else if (comunidades.length>15){
        alert("El dato 'Comunidad' es muy largo");
        return false;
    }
    else if(!expresion.test(comunidades)){
        alert("El dato 'Comunidad' no lleva números");
        return false;
    }
    
    if (calleNumero === "") {
        alert("El dato 'Calle y número' está vacío");
        return false;
    }else if (calleNumero.length>30){
        alert("El dato 'Calle y número' es muy largo");
        return false;
    }
    
    if (cpostal === "") {
        alert("El dato 'Codigo postal' está vacío");
        return false;
    }else if (cpostal.length>5){
        alert("El dato 'Codigo postal' es muy largo");
        return false;
    }
    else if (isNaN(cpostal)){
        alert("El dato 'Codigo postal' ingresado no es un número");
        return false;
    }
    
    if (areaC === "") {
        alert("El dato 'Area de canalización' está vacío");
        return false;
    }  
    
    if (tDelito === "") {
        alert("El dato 'Tipo de delito' está vacío");
        return false;
    }
    else if (tDelito.length>100){
        alert("El dato 'Tipo de delito' es muy largo");
        return false;
    }
    else if(!expresion.test(tDelito)){
        alert("El dato 'Tipo de delito' no lleva números");
        return false;
    }
    
    if (comunidadD === "") {
        alert("El dato 'Comunidad del delito' está vacío");
        return false;
    }else if (comunidadD.length>35){
        alert("El dato 'Comunidad del delito' es muy largo");
        return false;
    }
    else if(!expresion.test(comunidadD)){
        alert("El dato 'Comunidad del delito' no lleva números");
        return false;
    
    }
    
    if (tArma.length>15){
        alert("El dato 'Tipo de arma' es muy largo");
        return false;
    }
    
    if (drogas === "") {
        alert("El dato 'Drogas' está vacío");
        return false;
    }
        else if(!expresion.test(otros)){
        alert("El dato 'Otras drogas' no lleva números");
        return false;
    }
    
    if (unidad === "") {
        alert("El dato 'Número de unidad' está vacío");
        return false;
    }else if (unidad.length>15){
        alert("El dato 'Número de unidad' es muy largo");
        return false;
    }
    }
    if (guardar===1){
       alert("la información a sido actualizada correctamente!"); 
    }