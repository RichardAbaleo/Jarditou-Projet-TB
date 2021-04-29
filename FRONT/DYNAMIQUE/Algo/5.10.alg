<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;Dans le désordre : une chance sur &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="X EST_DU_TYPE NOMBRE" code="1#NOMBRE#X"/>
        <item algoitem="Y EST_DU_TYPE NOMBRE" code="1#NOMBRE#Y"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="p EST_DU_TYPE NOMBRE" code="1#NOMBRE#p"/>
        <item algoitem="B EST_DU_TYPE NOMBRE" code="1#NOMBRE#B"/>
        <item algoitem="Q EST_DU_TYPE NOMBRE" code="1#NOMBRE#Q"/>
        <item algoitem="S EST_DU_TYPE NOMBRE" code="1#NOMBRE#S"/>
        <item algoitem="D EST_DU_TYPE NOMBRE" code="1#NOMBRE#D"/>
        <item algoitem="F EST_DU_TYPE NOMBRE" code="1#NOMBRE#F"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Nombre de chevaux partants (n) :&quot;" code="4#Nombre de chevaux partants (n) :#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="AFFICHER &quot;Nombre de chevaux joués (p) :&quot;" code="4#Nombre de chevaux joués (p) :#0"/>
        <item algoitem="LIRE p" code="2#p#pasliste"/>
        <item algoitem="B PREND_LA_VALEUR n-p" code="5#B#n-p#pasliste"/>
        <item algoitem="S PREND_LA_VALEUR 1" code="5#S#1#pasliste"/>
        <item algoitem="TANT_QUE (B != 0) FAIRE" code="15#B != 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="S PREND_LA_VALEUR S*B" code="5#S#S*B#pasliste"/>
            <item algoitem="B PREND_LA_VALEUR B-1" code="5#B#B-1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="B PREND_LA_VALEUR n" code="5#B#n#pasliste"/>
        <item algoitem="Q PREND_LA_VALEUR 1" code="5#Q#1#pasliste"/>
        <item algoitem="TANT_QUE (B !=0) FAIRE" code="15#B !=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="Q PREND_LA_VALEUR Q*B" code="5#Q#Q*B#pasliste"/>
            <item algoitem="B PREND_LA_VALEUR B-1" code="5#B#B-1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="B PREND_LA_VALEUR p" code="5#B#p#pasliste"/>
        <item algoitem="D PREND_LA_VALEUR 1" code="5#D#1#pasliste"/>
        <item algoitem="TANT_QUE (B !=0) FAIRE" code="15#B !=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="D PREND_LA_VALEUR D*B" code="5#D#D*B#pasliste"/>
            <item algoitem="B PREND_LA_VALEUR B-1" code="5#B#B-1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="F PREND_LA_VALEUR D*S" code="5#F#D*S#pasliste"/>
        <item algoitem="X PREND_LA_VALEUR Q/S" code="5#X#Q/S#pasliste"/>
        <item algoitem="Y PREND_LA_VALEUR Q/F" code="5#Y#Q/F#pasliste"/>
        <item algoitem="AFFICHER &quot;Dans l'ordre : une chance sur &quot;" code="4#Dans l'ordre : une chance sur #0"/>
        <item algoitem="AFFICHER X" code="3#X#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Dans le désordre : une chance sur &quot;" code="4#Dans le désordre : une chance sur #0"/>
        <item algoitem="AFFICHER Y" code="3#Y#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
