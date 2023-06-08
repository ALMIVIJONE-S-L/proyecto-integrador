    function procesar() {
        let titulo = document.getElementById('titulo').value;
        let descripcion = document.getElementById('descripcion').value;
        let creador = document.getElementById('creador').value;
        let destinatario = document.getElementById('destinatario').value;
        let fechaLimite = document.getElementById('fecha-limite').value;
        
        
        alert("Se ha modificado la tarea con titulo:"+titulo+" Descripcion: "+descripcion+" El creador es: "+creador+" Para el usuario: "+destinatario+" Y con fecha limite "+fechaLimite );
      }
      
      document.addEventListener("DOMContentLoaded", function() {
        let botonCrear = document.getElementById("Crear");
        botonCrear.addEventListener("click", procesarFormulario);
      });
