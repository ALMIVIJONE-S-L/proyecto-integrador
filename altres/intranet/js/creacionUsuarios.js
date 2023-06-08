function procesarFormulario() {
    const nombreUsuario = document.getElementById("usuario").value;
    alert(nombreUsuario + "' creado con éxito");
  }
  
  document.addEventListener("DOMContentLoaded", function() {
    const botonCrear = document.getElementById("Crear");
    botonCrear.addEventListener("click", procesarFormulario);
  });
  function procesarFormulario() {
    const nombreUsuario = document.getElementById("usuario").value;
    const telefono = document.getElementById("phone").value;
  
    if (/^\d+$/.test(telefono)) {
      alert("Usuario '" + nombreUsuario + "' creado con éxito");
    } else {
      alert("Por favor, ingrese un número de teléfono válido");
    }
  }
  
  document.addEventListener("DOMContentLoaded", function() {
    const botonCrear = document.getElementById("Crear");
    botonCrear.addEventListener("click", procesarFormulario);
  });
  
  function procesarFormulario() {
    var passwordInput = document.getElementById("password");
    var showPasswordCheckbox = document.getElementById("showPassword");

    if (showPasswordCheckbox.checked) {
        passwordInput.type = "text";
    } else {
        passwordInput.type = "password";
    }
}
