<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER reste"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Nbr10e" algoitem="Nbr10e EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Nbr5e" algoitem="Nbr5e EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#reste" algoitem="reste EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#Nbr10e#0#pasliste" algoitem="Nbr10e PREND_LA_VALEUR 0"/>
        <item code="5#Nbr5e#0#pasliste" algoitem="Nbr5e PREND_LA_VALEUR 0"/>
        <item code="5#a#1#pasliste" algoitem="a PREND_LA_VALEUR 1"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="15#a != 0" algoitem="TANT_QUE (a != 0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Entrez le montant (0 pour arrêter) : #0" algoitem="AFFICHER &quot;Entrez le montant (0 pour arrêter) : &quot;"/>
            <item code="2#a#pasliste" algoitem="LIRE a"/>
            <item code="5#somme#somme + a#pasliste" algoitem="somme PREND_LA_VALEUR somme + a"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Vous devez : #0" algoitem="AFFICHER &quot;Vous devez : &quot;"/>
        <item code="3#somme#0#pasliste" algoitem="AFFICHER somme"/>
        <item code="4# euros#1" algoitem="AFFICHER &quot; euros&quot;"/>
        <item code="4#Montant versé :#0" algoitem="AFFICHER &quot;Montant versé :&quot;"/>
        <item code="2#b#pasliste" algoitem="LIRE b"/>
        <item code="5#reste#b - somme#pasliste" algoitem="reste PREND_LA_VALEUR b - somme"/>
        <item code="15# reste >= 10" algoitem="TANT_QUE ( reste >= 10) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#Nbr10e#Nbr10e + 1#pasliste" algoitem="Nbr10e PREND_LA_VALEUR Nbr10e + 1"/>
            <item code="5#reste#reste - 10#pasliste" algoitem="reste PREND_LA_VALEUR reste - 10"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="6#reste >= 5" algoitem="SI (reste >= 5) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#Nbr5e#1#pasliste" algoitem="Nbr5e PREND_LA_VALEUR 1"/>
            <item code="5#reste#reste - 5#pasliste" algoitem="reste PREND_LA_VALEUR reste - 5"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="4#Coupure(s) rendue(s) :#1" algoitem="AFFICHER &quot;Coupure(s) rendue(s) :&quot;"/>
        <item code="4#Billet(s) de 10 euros : #0" algoitem="AFFICHER &quot;Billet(s) de 10 euros : &quot;"/>
        <item code="3#Nbr10e#1#pasliste" algoitem="AFFICHER Nbr10e"/>
        <item code="4#Billet(s) de 5 euros : #0" algoitem="AFFICHER &quot;Billet(s) de 5 euros : &quot;"/>
        <item code="3#Nbr5e#1#pasliste" algoitem="AFFICHER Nbr5e"/>
        <item code="4#Pièce(s) de 1 euro : #0" algoitem="AFFICHER &quot;Pièce(s) de 1 euro : &quot;"/>
        <item code="3#reste#0#pasliste" algoitem="AFFICHER reste"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
