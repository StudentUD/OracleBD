// Hay muchas formas de elegir un nodo DOM; con este obtenemos el control de formulario cuadro de entrada
// del correo electrónico, así como el elemento span en el que colocaremos el mensaje de error.

console.log('se cargo validador')
const form  = document.getElementById("login");

const user = document.getElementById("txuser");
const error = document.querySelector('p.error');

user.addEventListener('input', function (event) {
  // Cada vez que el usuario escribe algo, verificamos si
  // los campos del formulario son válidos.

if  (user.validity.valid) {
    // En caso de que haya un mensaje de error visible, si el campo
    // es válido, eliminamos el mensaje de error.
    error.innerHTML = ''; // Restablece el contenido del mensaje
    error.className = "error"; // Restablece el estado visual del mensaje
  } else {
    // Si todavía hay un error, muestra el error exacto
    showError();
  }
});

form.addEventListener('submit', function (event) {
  // si el campo de correo electrónico es válido, dejamos que el formulario se envíe

  if(!user.validity.valid) {
    // Si no es así, mostramos un mensaje de error apropiado
    showError();
    // Luego evitamos que se envíe el formulario cancelando el evento
    event.preventDefault();
  }
});

function showError() {
  if(user.validity.valueMissing) {
    // Si el campo está vacío
    // muestra el mensaje de error siguiente.
    error.textContent = 'Debe introducir una dirección de correo electrónico.';
  } else if(user.validity.typeMismatch) {
    // Si el campo no contiene una dirección de correo electrónico
    // muestra el mensaje de error siguiente.
    error.textContent = 'Debe introducir u usario';
  } else if(user.validity.tooShort) {
    // Si los datos son demasiado cortos
    // muestra el mensaje de error siguiente.
    error.textContent = "El correo electrónico debe tener al menos ${ email.minLength } caracteres; ha intruducido ${ email.value.length }.";
  }

  // Establece el estilo apropiado
  error.className = 'error activo';
}