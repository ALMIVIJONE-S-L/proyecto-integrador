
function inicio(){
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const ubi = urlParams.get('ubi');
    console.log(ubi);

    let textoUbicacion = document.getElementById("ubicacion");
    textoUbicacion.innerHTML = ubi;

    let enlacesNav = document.getElementsByTagName("a"); // Lo devuelve en forma de array
    let variableInUrl = "?ubi=" + ubi

    for (let i of enlacesNav){
        if (i.href.includes(variableInUrl) != true){
            i.href = i.href + variableInUrl;
        }


        // La función includes() me permite saber si la cadena que le paso existe en la cadena, en este caso, donde están las clases
        if (i.className.includes("dropdown-toggle")){
            i.href = "#"; // Se necesita para que funcione el desplegable del nav correctamente.
        }
    }
}





window.addEventListener("load",inicio(),false);

/*
Faltaría que cada vez que se pulse a un link no se desconfigure lo del nombre de la ubicación

Vamos que en todas las páginas salga en que ubicación está.
*/