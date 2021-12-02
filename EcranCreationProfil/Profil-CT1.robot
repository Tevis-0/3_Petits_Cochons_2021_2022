<<<<<<< HEAD
*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}
${coordsx}  ${830}
${coordsy}  ${450}

${ligne}    ${2}
${colonne}  ${4}

*** Test Cases ***
Profil-CT1
    ouvrirMenu
    ecrirePseudo
    annuler
Profil-CT2
    ouvrirMenu
    confirmer
    annuler
Profil-CT3
    ouvrirMenu
    ecrirePseudoVideEspaces
    confirmer
    deconnexion
Profil-CT4
    ouvrirMenu
    ecrirePseudoLong
    confirmer
    deconnexion
Profil-CT5
    ouvrirMenu
    choixCouleur
    annuler
Profil-CT6
    ouvrirMenu
    ecrirePseudo
    confirmer
    ecrirePseudo
    confirmer
    arretServeur

*** Keywords ***
ouvrirMenu
    sk.click        creerUnProfil.PNG
ecrirePseudo
    Input Text      cadrePsedo.PNG      test0
ecrirePseudoVideEspaces
    Input Text      cadrePsedo.PNG      ${SPACE}
ecrirePseudoLong
    Input Text      cadrePsedo.PNG      eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
choixCouleur
    ${reg}          Create List     ${830}  ${450}  ${70}     ${65}

    FOR     ${ligne}        IN RANGE    2
        FOR     ${colonne}  IN RANGE    4
            
            sk.highlight Region     ${reg}      2
            sk.click Region  ${reg}
            Sleep   1

            ${buff}=    Evaluate    ${reg}[0]+${90}
            Set List Value  ${reg}      1   ${buff}
        END

         ${buffy}=   Evaluate    ${reg} [1]+${90}
         Set List Value  ${reg}      1   ${buffy}
         Set List Value  ${reg}      0   ${coordsx}
    END    
    

annuler
    sk.click        annuler.PNG
confirmer
    sk.click        enregistrerPseudo
deconnexion
    sk.click        deconnexion.png
arretServeur
    Stop Remote Server
ViderLogs
    Run     .\\clear_logs.bat  
Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}
