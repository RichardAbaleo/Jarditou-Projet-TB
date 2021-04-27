var tab = [
  "Audrey",
  "Aurélien",
  "Flavien",
  "Jérémy",
  "Laurent",
  "Melik",
  "Nouara",
  "Salem",
  "Samuel",
  "Stéphane",
];
var prenom = window.prompt("Entrez un nom");
for (var i = 0; i < tab.length; i++) {
  if (prenom == tab[i]) {
    for (var i = i; i < tab.length; i++) {
      tab[i] = tab[i + 1];
      if (tab[i] == undefined) {
        tab[i] = " ";
        console.log(tab);
        document.write("[" + tab + "]");
      }
    }
  }
}
