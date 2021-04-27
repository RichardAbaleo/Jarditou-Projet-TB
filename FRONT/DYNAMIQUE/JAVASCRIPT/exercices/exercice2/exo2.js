/* On définit l'algo */

var n = 0;
n = window.prompt("Entrez un numéro");
function TableMultiplication(n) {
  for (i = 1; i < 11; i++) {
    /* sur le html */
    document.write(i + " x " + n + " = " + n * i + "</br>");
    /* ou sur la console */
    console.log(i + " x " + n + " = " + n * i);
  }
}

/* Et il est executé ici */
TableMultiplication(n);
