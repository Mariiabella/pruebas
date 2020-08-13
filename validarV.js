function validarV() {
    var tvehiculo, modelo, marca, serie, placa, motor, color, patrulla, local, numeroRes, nomDueno, paternoDueno, maternoDueno, observaciones, expresion;
    tvehiculo = document.getElementById("tvehiculo").value;
    modelo = document.getElementById("modelo").value;
    marca = document.getElementById("marca").value;
    serie = document.getElementById("serie").value;
    placa = document.getElementById("placa").value;
    motor = document.getElementById("motor").value;
    color = document.getElementById("color").value;
    patrulla = document.getElementById("patrulla").value;
    local = document.getElementById("local").value;
    numeroRes = document.getElementById("numeroRes").value;
    nomDueno = document.getElementById("nomDueno").value;
    paternoDueno = document.getElementById("paternoDueno").value;
     maternoDueno = document.getElementById("maternoDueno").value;
    observaciones = document.getElementById("observaciones").value;
    expresion = /^[A-Z]+$/i;

    if (tvehiculo === "") {
        alert("El dato 'Tipo de vehiculo' está vacío");
        return false;
    } else if (tvehiculo.length > 45) {
        alert("El dato 'Tipo de vehiculo' es muy largo");
        return false;
    }

    if (modelo === "") {
        alert("El dato 'Modelo' está vacío");
        return false;
    } else if (modelo.length > 15) {
        alert("El dato 'Modelo' es muy larga");
        return false;
    }

    if (marca === "") {
        alert("El dato 'Marca' está vacío");
        return false;
    } else if (serie.length > 15) {
        alert("El dato 'Marca' es muy largo");
        return false;
    }

    if (serie.length > 20) {
        alert("El dato 'Número de serie' es muy largo");
        return false;
    }

    if (motor.length > 20) {
        alert("El dato 'Número de motor' es muy largo");
        return false;
    }

    if (color === "") {
        alert("El dato 'Color' está vacío");
        return false;
    } else if (color.length > 15) {
        alert("El dato 'Color' es muy largo");
        return false;
    }

    if (patrulla === "") {
        alert("El dato 'Número de unidad' está vacío");
        return false;
    } else if (patrulla.length > 15) {
        alert("El dato 'Número de unidad' es muy largo");
        return false;
    }

    if (local === "") {
        alert("El dato 'Local de encierro' está vacío");
        return false;
    } else if (local.length > 15) {
        alert("El dato 'Local de encierro' es muy largo");
        return false;
    }
    else if(!expresion.test(local)){
        alert("El dato 'Local de encierro' no lleva números");
        return false;
    }
     if (numeroRes === "") {
        alert("El dato 'Numero de resguardo' está vacío");
        return false;
    } else if (numeroRes.length > 10) {
        alert("El dato 'Número deresguardo'  es muy largo");
        return false;
    }
     if (nomDueno.length > 20) {
        alert("El dato 'Nombre del dueño' es muy largo");
        return false;
    }
    else if(!expresion.test(nomDueno)){
        alert("El dato 'Nombre del dueño' no lleva números");
        return false;
    }
     if (paternoDueno.length > 20) {
        alert("El dato 'Apellido paterno' es muy largo");
        return false;
    }
    else if(!expresion.test(paternoDueno)){
        alert("El dato Apellido paterno'  no lleva números");
        return false;
    }
    
     if (maternoDueno.length > 20) {
        alert("El dato 'Apellido materno' es muy largo");
        return false;
    }
    else if(!expresion.test(maternoDueno)){
        alert("El dato 'Apellido materno' no lleva números");
        return false;
    }
    
     
}


