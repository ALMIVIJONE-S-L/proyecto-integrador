
let nomUsrs = ["miguel","jose ivan","victor","alberto"];
let pwdUsrs = ["1234","1234","1234","1234"]; // Supongamos que son diferentes por cada persona
let ubicacion = "";

// Comprobar si el usuario existe en el array
let contadorUsr = 0;
let contadorUsrCorrecto = 0;
function usrExiste(nombre){
    // Extraido de "https://www.30secondsofcode.org/js/s/remove-accents/" para poder quitar los acentos usando el código UNICODE
    const removeAccents = str => str.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
    nombre = removeAccents(nombre.toLowerCase());

    let divUsuario = document.getElementById("divUsuario");

    for (let i = 0; i < nomUsrs.length; i++){
        let estadoActual = "";
        let estadoOld = "";
        let texto = "";

        if (nomUsrs[i] == nombre){
            estadoActual = "valid";
            texto = "Correcto."
        }
        else{
            estadoActual = "invalid";
            texto = "Nombre incorrecto, por favor, elija otro."

        }

        if(estadoActual != estadoOld && contadorUsr == 0){
            // divu....getElementId..(feedbackBlockUser).class cambiarle la class y cambiarle el texto (con inner)
            // Que se cree el div una única vez y luego ya es modificarlo, creo que será lo mejor.
            divUsuario.innerHTML = (
            divUsuario.innerHTML +   ` 
                                    <div id="feedbackUser" class="`+ estadoActual + `-feedback d-block ms-1">
                                        ` + texto + `
                                    </div>`)
            estadoOld = estadoActual;
            contadorUsr++

            if(estadoActual == "valid"){
                document.getElementById("usuario").value = nombre
                return true;
            }
        }
        else if(estadoActual != estadoOld){
            let divFeedback = document.getElementById("feedbackUser");
            divFeedback.className = estadoActual + "-feedback d-block ms-1";
            divFeedback.innerHTML = texto;

            if(estadoActual == "valid"){
                document.getElementById("usuario").value = nombre
                return true;
            }

        }
        else{
            continue;
        }
    }
}

let contadorPwd = 0;
function pwdExiste(password){    
    let divPassword = document.getElementById("divPassword");
    for (let i = 0; i < pwdUsrs.length; i++){

            let estadoActual = "";
            let estadoOld = "";
            let texto = "";
    
            if (pwdUsrs[i] == password){
                return true;
            }
            else{
                estadoActual = "invalid";
                texto = "Contraseña incorrecta, por favor, introduzca una válida"
            }
    
            if(estadoActual != estadoOld && contadorPwd == 0){
                // divu....getElementId..(feedbackBlockUser).class cambiarle la class y cambiarle el texto (con inner)
                // Que se cree el div una única vez y luego ya es modificarlo, creo que será lo mejor.

                divPassword.innerHTML = (
                divPassword.innerHTML +   ` 
                                        <div id="feedbackPwd" class="`+ estadoActual + `-feedback d-block ms-1">
                                            ` + texto + `
                                        </div>`)
                estadoOld = estadoActual;
                contadorPwd++
            }

            else if(estadoActual != estadoOld){
                let divFeedback = document.getElementById("feedbackPwd");
                divFeedback.className = estadoActual + "-feedback d-block ms-1";
                divFeedback.innerHTML = texto;
            }
            else{
                continue;
            }
    }
}

lugarContador = 0;
function ubiCorrecta(){

    let estadoActual = "";
    let estadoOld = "";
    let texto = "";
    let divUbicaciones = document.getElementById("divUbicaciones")
    let selectUbicaciones = document.getElementById("selectUbicaciones")
    let seleccion = selectUbicaciones.options[selectUbicaciones.selectedIndex].text

    if (seleccion == "No elegido"){
        estadoActual = "invalid";
        texto = "Incorrecto, por favor, elija una ubicación correcta"
    }
    else{
        estadoActual = "valid";
        texto = "Correcto."
    }

    if(estadoActual != estadoOld && lugarContador == 0){
        // divu....getElementId..(feedbackBlockUser).class cambiarle la class y cambiarle el texto (con inner)
        // Que se cree el div una única vez y luego ya es modificarlo, creo que será lo mejor.

        divUbicaciones.innerHTML = (
        divUbicaciones.innerHTML +   ` 
                                <div id="feedbackSec" class="`+ estadoActual + `-feedback d-block ms-1">
                                    ` + texto + `
                                </div>`)
        estadoOld = estadoActual;
        lugarContador++
    }
    else if(estadoActual != estadoOld){
        let feedbackSec = document.getElementById("feedbackSec");
        feedbackSec.className = estadoActual + "-feedback d-block ms-1";
        feedbackSec.innerHTML = texto;
    }

    if(estadoActual == "valid"){
        ubicacion = seleccion;
        document.getElementById("selectUbicaciones").selectedIndex = selectUbicaciones.selectedIndex;
        return true;
    }
}

function procesarLogin(){
    let nombreUsuario = document.getElementById("usuario").value;
    let passwordUsuario = document.getElementById("password").value;


    let usrBool = usrExiste(nombreUsuario)
    let pwdBool = pwdExiste(passwordUsuario)
    let ubiBool = ubiCorrecta()

    console.log(usrBool + " = " + pwdBool + " = " + ubiBool)
    if (usrBool && pwdBool && ubiBool){
        // Para cambiar de directorio
        location.href = "nav-footer-plantilla.html?ubi=" + ubicacion;
    }

}
