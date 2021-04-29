<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER situation"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#permis" algoitem="permis EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#assurance" algoitem="assurance EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#accident" algoitem="accident EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#Choix1" algoitem="Choix1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Choix2" algoitem="Choix2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Choix3" algoitem="Choix3 EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#situation" algoitem="situation EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Âge : #0" algoitem="AFFICHER &quot;Âge : &quot;"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="4#Année(s) du permis :#1" algoitem="AFFICHER &quot;Année(s) du permis :&quot;"/>
        <item code="2#permis#pasliste" algoitem="LIRE permis"/>
        <item code="4#Année(s) assurance :#1" algoitem="AFFICHER &quot;Année(s) assurance :&quot;"/>
        <item code="2#assurance#pasliste" algoitem="LIRE assurance"/>
        <item code="4#Nombre d'accident :#1" algoitem="AFFICHER &quot;Nombre d'accident :&quot;"/>
        <item code="2#accident#pasliste" algoitem="LIRE accident"/>
        <item code="5#Choix1# age >= 25#pasliste" algoitem="Choix1 PREND_LA_VALEUR  age >= 25"/>
        <item code="5#Choix2#permis >= 2#pasliste" algoitem="Choix2 PREND_LA_VALEUR permis >= 2"/>
        <item code="5#Choix3#assurance > 1#pasliste" algoitem="Choix3 PREND_LA_VALEUR assurance > 1"/>
        <item code="5#a#0#pasliste" algoitem="a PREND_LA_VALEUR 0"/>
        <item code="6#Choix1 == false" algoitem="SI (Choix1 == false) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#a#a+1#pasliste" algoitem="a PREND_LA_VALEUR a+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#Choix2 == false" algoitem="SI (Choix2 == false) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#a#a+1#pasliste" algoitem="a PREND_LA_VALEUR a+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="5#a#a + accident#pasliste" algoitem="a PREND_LA_VALEUR a + accident"/>
        <item code="6#a &lt; 3 ET Choix3 == true" algoitem="SI (a &lt; 3 ET Choix3 == true) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#a#a-1#pasliste" algoitem="a PREND_LA_VALEUR a-1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#a == (-1)" algoitem="SI (a == (-1)) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#situation#&quot;bleu&quot;#pasliste" algoitem="situation PREND_LA_VALEUR &quot;bleu&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#a == 0" algoitem="SI (a == 0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#situation#&quot;vert&quot;#pasliste" algoitem="situation PREND_LA_VALEUR &quot;vert&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#a == 1" algoitem="SI (a == 1) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="5#a#&quot;orange&quot;#pasliste" algoitem="a PREND_LA_VALEUR &quot;orange&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="6#a == 2" algoitem="SI (a == 2) ALORS">
                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                    <item code="5#situation#&quot;Rouge&quot;#pasliste" algoitem="situation PREND_LA_VALEUR &quot;Rouge&quot;"/>
                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                    <item code="9#sinon" algoitem="SINON">
                                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                        <item code="5#situation#&quot;Refusé&quot;#pasliste" algoitem="situation PREND_LA_VALEUR &quot;Refusé&quot;"/>
                                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                                    </item>
                                </item>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="3#situation#1#pasliste" algoitem="AFFICHER situation"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
