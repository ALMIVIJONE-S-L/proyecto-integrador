let entradas = ['13 de Mayo a las 11:00h','7 de Junio a las 14:00h'];
let salidas = ['13 de Mayo a las 15:00h','7 de Junio a las 16:00h'];

function entradasySalidas(elementos, listaId) {
  let lista = document.getElementById(listaId);
  lista.innerHTML = ''; 

  elementos.forEach(function(elemento) {
    let li = document.createElement('li');
    li.className = 'list-group-item';
    li.appendChild(document.createTextNode(elemento));
    lista.appendChild(li);
  });
}

entradasySalidas(entradas, 'entradas-list');

entradasySalidas(salidas, 'salidas-list');

function searchUsers() {
  let input = document.getElementById("searchInput");
  let filter = input.value.toLowerCase();
  let users = document.getElementsByClassName("col-md-4");

  for (let i = 0; i < users.length; i++) {
      let user = users[i];
      let userName = user.getElementsByTagName("h3")[0].textContent.toLowerCase();

      if (userName.includes(filter)) {
          user.style.display = "";
      } else {
          user.style.display = "none";
      }
  }
}

