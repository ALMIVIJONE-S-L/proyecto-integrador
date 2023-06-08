const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const ubi = urlParams.get('ubi')
console.log(ubi);

let textoUbicacion = document.getElementById("ubicacion")
textoUbicacion.innerHTML = ubi;


/*
Faltaría que cada vez que se pulse a un link no se desconfigure lo del nombre de la ubicación

Vamos que en todas las páginas salga en que ubicación está.
*/