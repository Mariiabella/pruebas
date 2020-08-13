function validarPt() {
    var txtModelo, txtMarca, txtSerie, txtPlaca, txtMotor, txtColor, txtVehic, txtUnidad, expresion;
    txtModelo = document.getElementById("txtModelo").value;
    txtMarca = document.getElementById("txtMarca").value;
    txtSerie = document.getElementById("txtSerie").value;
    txtPlaca = document.getElementById("txtPlaca").value;
    txtMotor = document.getElementById("txtMotor").value;
    txtColor = document.getElementById("txtColor").value;
    txtVehic = document.getElementById("txtVehic").value;
    txtUnidad = document.getElementById("txtUnidad").value;
    expresion=/^[A-Z]+$/i;

    if (txtModelo === "") {
        alert("El dato de 'Modelo' está vacío");
        return false;
    }else if (txtModelo.length>15){
        alert("El dato de 'Modelo' es muy largo");
        return false;
    }
    
    if (txtMarca === "") {
        alert("El dato de 'Marca' está vacío");
        return false;
    }else if (txtMarca.length>15){
        alert("El dato de 'Marca' es muy largo");
        return false;
    }
        
    if (txtSerie === "") {
        alert("El dato de 'Número de serie' está vacío");
        return false;
    }else if (txtSerie.length>20){
        alert("El dato de 'Número de serie' es muy largo");
        return false;
    }
        
    if (txtPlaca === "") {
        alert("El dato de 'Placa' está vacío");
        return false;
    }else if (txtPlaca.length>11){
        alert("El dato de 'Placa' es muy largo");
        return false;
    }
        
    if (txtMotor === "") {
        alert("El dato de 'Número de motor' está vacío");
        return false;
    }else if (txtMotor.length>20){
        alert("El dato de 'Número de motor' es muy largo");
        return false;
    }
       
    if (txtColor === "") {
        alert("El dato de 'Color' está vacío");
        return false;
    }else if (txtColor.length>15){
        alert("El dato de 'Color' es muy largo");
        return false;
    }
        
    if (txtVehic === "") {
        alert("El dato de 'Tipo de vehículo' está vacío");
        return false;
    }else if (txtVehic.length>45){
        alert("El dato de 'Tipo de vehiculo' es muy largo");
        return false;
    }
        
   if (txtUnidad === "") {
        alert("El dato de 'Número de unidad' está vacío");
        return false;
    }else if (txtUnidad.length>15){
        alert("El dato de 'número de unidad'  es muy largo");
        return false;
    }
   }