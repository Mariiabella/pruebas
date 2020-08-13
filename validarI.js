function validarI(){
   var folio, fechaI, lugar ,articulo, nombre,fechaNac,Gen, edad,estado,municipio,comunidad,calle, cp,tGarantia,fGarantia,entidadF, cantidad, observaciones, expresion;
    fechaI = document.getElementById("fechaI").value;
    lugar = document.getElementById("lugar").value;
    articulo = document.getElementById("articulo").value;
    folio = document.getElementById("folio").value;
    observaciones = document.getElementById("observaciones").value;
    nombre = document.getElementById("nombre").value;
    fechaNac = document.getElementById("fechaNac").value;
    Gen = document.getElementById("Gen").value;
    edad = document.getElementById("edad").value;
    estado = document.getElementById("estado").value;
    municipio = document.getElementById("municipio").value;
    comunidad = document.getElementById("comunidad").value;
    calle = document.getElementById("calle").value;
    cp = document.getElementById("cp").value;
    tGarantia = document.getElementById("tGarantia").value;
    fGarantia = document.getElementById("fGarantia").value;
    entidadF = document.getElementById("entidadF").value;
    cantidad = document.getElementById("cantidad").value;        
    expresion=/^[A-Za-zñÑ-áéíóúÁÉÍÓÚ\s\t-]/;

    if (fechaI === "") {
        alert("El dato 'Fecha de infracción' está vacío");
        return false;
    }  
    if (lugar === "") {
        alert("El dato 'Lugar infracción' está vacío");
        return false;
        }
    
    if (articulo === "") {
        alert("El dato 'Artículo que ampara' está vacío");
        return false;
        
    }else if (articulo.length>15){
        alert("El dato 'Artículo que ampara' es muy largo");
        return false;
    }
        
    if (folio === "") {
        alert("El dato 'Folio infracción' está vacío");
        return false;
        
    }else if (folio.length>10){
        alert("El dato 'Folio infracción' es muy largo");
        return false;
    }
    else if (isNaN(folio)){
        alert("El dato 'Folio infracción' ingresado no es un número");
        return false;
    }
    
     if (nombre === "") {
        alert("El dato 'Nombre infractor' está vacío");
        return false;
    }else if (nombre.length>100){
        alert("El dato 'Nombre infractor' es muy largo");
        return false;
    }
    else if(!expresion.test(nombre)){
        alert("El dato 'Nombre infractor' no lleva números");
        return false;
    }
    
    if (fechaNac === "") {
        alert("El dato 'Fecha de nacimiento' está vacío");
        return false;
    }
    
     if (Gen === "") {
        alert("El dato 'Género' está vacío");
        return false;
    }
    
    if (edad === "") {
        alert("El dato 'Edad' está vacío");
        return false;
    }else if (edad.length>2){
        alert("El dato 'Edad' es muy largo");
        return false;
    }
    else if (isNaN(edad)){
        alert("El dato 'Edad' ingresado no es un número");
        return false;
    }
    if (estado === "") {
        alert("El dato 'Estado' está vacío");
        return false;
    }else if (estado.length>50){
        alert("El dato 'Estado' es muy largo");
        return false;
    }
    else if(!expresion.test(estado)){
        alert("El dato 'Estado' no lleva números");
        return false;
    }
    
    if (municipio === "") {
        alert("El dato 'Municipio' está vacío");
        return false;
    }else if (municipio.length>30){
        alert("El dato 'Municipio' es muy largo");
        return false;
    }
    else if(!expresion.test(municipio)){
        alert("El dato 'Municipio' no lleva números");
        return false;
    }
    
    if (comunidad === "") {
        alert("El dato 'Comunidad' está vacío");
        return false;
    }else if (comunidad.length>15){
        alert("El dato 'Comunidad' es muy largo");
        return false;
    }
    else if(!expresion.test(comunidad)){
        alert("El dato 'Comunidad' no lleva números");
        return false;
    }
    
    if (calle === "") {
        alert("El dato 'Calle y número' está vacío");
        return false;
    }else if (calle.length>30){
        alert("El dato 'Calle y número' es muy largo");
        return false;
    }
    if (cp === "") {
        alert("El dato 'Código postal' está vacío");
        return false;
    }else if (cp.length>5){
        alert("El dato 'Código postal' es muy largo");
        return false;
    }
    else if (isNaN(cp)){
        alert("El dato 'Código postal' ingresado no es un número");
        return false;
    }
    
     if (tGarantia === "") {
        alert("El dato 'Tipo de garantía' está vacío");
        return false;
    }else if (tGarantia.length>10){
        alert("El dato 'Tipo de garantía' es muy largo");
        return false;
    }
    
      if (fGarantia === "") {
        alert("El dato 'Folio de garantía' está vacío");
        return false;
    }else if (fGarantia.length>10){
        alert("El dato 'Folio de garantía' es muy largo");
        return false;
    }
       
     if (entidadF === "") {
        alert("El dato 'Estado' está vacío");
        return false;
    }else if (entidadF.length>20){
        alert("El dato 'Estado' es muy largo");
        return false;
    }
    else if(!expresion.test(entidadF)){
        alert("El dato 'Estado' no lleva números");
        return false;
    }
    
    if (cantidad === "") {
        alert("El dato 'Cantidad' está vacío");
        return false;
    }else if (cantidad.length>5){
        alert("El dato 'Cantidad' es muy largo");
        return false;
    }
    else if (isNaN(cantidad)){
        alert("El dato 'Cantidad' no es un número");
        return false;
    }        
}