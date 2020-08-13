function validarE() {
    var estatus,cantidad,cantidadNo, recibo,nombreC,Apaterno,Amaterno,area,cargo, expresion;
    estatus = document.getElementById("estatus").value;
    cantidad = document.getElementById("cantidad").value;
    cantidadNo=document.getElementById("cantidadNo").value;
    recibo = document.getElementById("recibo").value;
    nombreC = document.getElementById("nombreC").value;
    Apaterno = document.getElementById("Apaterno").value;
    Amaterno = document.getElementById("Amaterno").value;
    area = document.getElementById("area").value;
    cargo = document.getElementById("cargo").value;
    
    expresion=/^[A-Za-zñÑ-áéíóúÁÉÍÓÚ\s\t-]/;

    if (estatus === "") {
        alert("El dato 'Estatus de pago' está vacío");
        return false;
    }  
    
     if(isNaN(cantidad)){
        alert("El dato 'Cantidad' debellevar números");
        return false;
    }
    
    if(isNaN(cantidadNo)){
        alert("El dato 'Cantidad no pagada' debe llevar números");
        return false;
    }
    
    if(isNaN(recibo)){
        alert("El dato 'Número de recibo' debe llevar números");
        return false;
    }
    
    if (nombreC.length>20){
        alert("El dato 'Nombre del condonante' es muy largo");
        return false;
    }
    else if(!expresion.test(nombreC)){
        alert("El dato 'Nombre del condonante' no lleva números");
        return false;
    }
    
     if (Apaterno.length>20){
        alert("El dato 'Apellido paterno' es muy largo");
        return false;
    }
    else if(!expresion.test(Apaterno)){
        alert("El dato 'Apellido paterno' no lleva números");
        return false;
    }
    
     if (Amaterno.length>20){
        alert("El dato 'Apellido materno' es muy largo");
        return false;
    }
    else if(!expresion.test(Amaterno)){
        alert("El dato 'Apellido materno' no lleva números");
        return false;
    }
    
     if (area.length>20){
        alert("El dato 'Area' es muy largo");
        return false;
    }
    else if(!expresion.test(area)){
        alert("El dato 'Area' no lleva números");
        return false;
    }
    
     if (cargo.length>20){
        alert("El dato 'Cargo' es muy largo");
        return false;
    }
    else if(!expresion.test(cargo)){
        alert("El dato 'Cargo' no lleva números");
        return false;
    }    
            }



