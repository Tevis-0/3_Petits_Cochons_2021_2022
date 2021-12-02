*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary
Library           OperatingSystem
Suite Setup       viderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\

${XP1} 
${XP2}

${coordsx}  ${571}
${coordsy}  ${527}
${difficultes}  ${3}
${defis}        ${6}


*** Test Cases ***

prerequisDuChoixDuDefi
    creationProfil

ChoixDefi-CT1.1
    verificationTitre

ChoixDefi-CT1.2
    verificationPsedo

ChoixDefi-CT1.3
    verificationXP

ChoixDefi-CT1.4
    verificationAffichageNiveaux
    
ChoixDefi-CT1.5
    verificationDefi

ChoixDefi-CT1.6
    verificationRetour

ChoixDefi-CT1.7
    recuperationXP1
    jeu
    recuperationXP2 

ChoixDefi-CT1.8
    verificationXPRestante

ChoixDefi-CT2.1
    verificationDefisRealisables1
    jeuBreak
    verificationDefisRealisables2
    jeuBreak
    verificationDefisRealisables3
    jeuBreak
    verificationDefisRealisables4
    jeuBreak
    verificationDefisRealisables5
    jeuBreak
    verificationDefisRealisables6
    jeuBreak
    

ChoixDefi-CT2.2
    verificationBoutonsBloque

ChoixDefi-CT2.3
    verificationCliqueRetour
    arretServeur

*** Keywords ***

viderLogs
    run     .\\clear_logs.bat

creationProfil
    sk.Click     jeu.png
    sk.Click     creerUnProfil.png
    Input Text   cadrePsedo.png      Psedo0
    sk.Click     choixCouleur.png
    sk.Click     eregistrePsedo.png
    sk.Click     boutonJouer.png
    sk.Click     Progression.png

verificationTitre
    Sleep           2
    ${titre}        Get Text      \\ChoixDefi-CT1\\titre.png

verificationPsedo
    Sleep           2
    Get Text        \\ChoixDefi-CT1\\Psedo.png

verificationXP
    Get Text        \\ChoixDefi-CT1\\XP0.png

verificationAffichageNiveaux
    Get Text        \\ChoixDefi-CT1\\niveaux.png

verificationDefi
    sk.Mouse Move               \\ChoixDefi-CT1\\boutonDefi1.png
    Screen Should Contain       \\ChoixDefi-CT1\\boutonDefi1Hover.png

verificationRetour
    sk.Mouse Move               \\ChoixDefi-CT1\\boutonRetour.png
    Screen Should Contain       \\ChoixDefi-CT1\\boutonRetourHover.png

recuperationXP1
    ${XP1}           Get Text         \\ChoixDefi-CT1\\XP0.png

jeu
    sk.Click         \\ChoixDefi-CT1\\boutonDefi1.png
    sk.Click         \\ChoixDefi-CT1\\piece1.png
    sk.Wheel Up      3
    sk.Click         \\ChoixDefi-CT1\\enplacement1.png
    sk.Click         \\ChoixDefi-CT1\\piece2.png
    sk.Click         \\ChoixDefi-CT1\\enplacement2.png
    sk.Click         \\ChoixDefi-CT1\\piece3.png
    sk.Wheel Up      2
    sk.Click         \\ChoixDefi-CT1\\enplacement3.png

recuperationXP2

    Sleep            3
    ${XP2}           Get Text         \\ChoixDefi-CT1\\XP1.png
    
    IF  "${XP2}" > "${XP1}"
    Log     l'XP s'incrémente correctement
    END

verificationXPRestante
    Screen Should Contain       \\ChoixDefi-CT1\\visuXPRestante.png

verificationDefisRealisables1
    sk.Click        \\ChoixDefi-CT2\\StarterDefi1.png

jeuBreak
    sk.Click        \\ChoixDefi-CT2\\pause.png
    sk.Click        \\ChoixDefi-CT2\\quitter.png
    sk.Click        \\ChoixDefi-CT2\\ouiQuitter.png
    Sleep           1.5
    sk.Click        \\ChoixDefi-CT2\\menu.png

verificationDefisRealisables2
    Sleep           1
    sk.Click        \\ChoixDefi-CT2\\StarterDefi2.png

verificationDefisRealisables3
    Sleep           1
    sk.Click        \\ChoixDefi-CT2\\StarterDefi3.png

verificationDefisRealisables4
    Sleep           1
    sk.Click        \\ChoixDefi-CT2\\StarterDefi4.png

verificationDefisRealisables5
    Sleep           1
    sk.Click        \\ChoixDefi-CT2\\StarterDefi5.png

verificationDefisRealisables6
    Sleep           1
    sk.Click        \\ChoixDefi-CT2\\StarterDefi6.png

verificationBoutonsBloque

    ${reg}          Create List     ${571}  ${527}  ${83}   ${88}


    FOR     ${difficultes}  IN RANGE    3
        FOR     ${defis}    IN RANGE    6

            sk.Click Region  ${reg}
            sk.Wait Until Screen Contain    ecranJeu.png    2

            ${buff}=  Evaluate    ${reg}[0]+${120}
            Set List Value   ${reg}     0   ${buff}     

        END

        ${buffy}=     Evaluate    ${reg}[1]+${115}
        Set List Value   ${reg}     1   ${buffy}
        Set List Value   ${reg}     0   ${coordsx}

    END

verificationCliqueRetour

    sk.Click    .\\ChoixDefi-CT1\\boutonRetour.png
    sk.Wait Until Screen Contain    .\\ChoixDefi-CT2\\choixMode.png=0.70     3
    sk.Click    .\\Progression.png

arretServeur
    Stop Remote Server

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}