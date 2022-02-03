*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary
Library           OperatingSystem
Library           BuildIn
Library           Collections
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}
${coordsx}  ${790}
${coordsy}  ${420}

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
    deconnexion
    ouvrirMenu
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
    ${reg}          Create List     ${790}  ${420}  ${70}   ${65}

    FOR     ${ligne}        IN RANGE    2
        FOR     ${colonne}  IN RANGE    4
            
            sk.highlight Region     ${reg}      2
            sk.click Region  ${reg}
            Sleep   1

            ${buff}=    Evaluate    ${reg}[0]+${95}
            Set List Value  ${reg}      0   ${buff}
        END

         ${buffy}=   Evaluate    ${reg} [1]+${90}
         Set List Value  ${reg}      1   ${buffy}
         Set List Value  ${reg}      0   ${coordsx}
    END    

annuler
    sk.click        annuler.PNG
confirmer
    sk.click        enregistrerPseudo.png=0.70
deconnexion
    sk.click        deconnexion.png
arretServeur
    Stop Remote Server
ViderLogs
    Run     .\\clear_logs.bat  
Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}
