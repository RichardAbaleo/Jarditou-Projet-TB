var PU = window.prompt("Prix unitaire :");
var QTECOM = window.prompt("Quantité commandée :");
var TOT = PU * QTECOM;
var REM = 0;
if (TOT > 100) {
  if (TOT > 200) {
    REM = TOT * 0.1;
  } else {
    REM = TOT * 0.05;
  }
}
if (TOT - REM > 500) {
  var FDP = 0;
} else {
  var FDP = (TOT - REM) * 0.02;
  if (FDP < 6) {
    FDP = 6;
  }
}

var PAP = TOT - REM + FDP;
console.log(PAP);
