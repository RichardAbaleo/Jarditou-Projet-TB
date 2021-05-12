var tab = new Array();
var age = 0;
var jeune = 0;
var moyen = 0;
var vieux = 0;
var n = 0;
while (age < 100) {
  age = window.prompt("age n°" + (n + 1) + " :");
  tab[n] = age;
  n = n + 1;
  if (age < 20) {
    jeune = jeune + 1;
  } else {
    if (age < 40) {
      moyen = moyen + 1;
    } else {
      vieux = vieux + 1;
    }
  }
}
console.table(tab);
document.write("Il y a " + jeune + " personnes en dessous de 20 ans" + "<br/>");
document.write("Il y a " + moyen + " personnes entre 20 et 40 ans" + "<br/>");
document.write("Il y a " + vieux + " personnes au dessus de 40 ans");
