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
${coordsx}  ${890}
${coordsy}  ${465}

${ligne}    ${2}
${colonne} ${4}

*** Test Cases ***
Profil-CT1
    ecrirePseudo
Profil-CT2
    ecrirePseudoVide
    confirmer
    arretServeur

*** Keywords ***
ouvrirMenu
    sk.click        creerUnProfil.PNG
ecrirePseudo
    Input Text      cadrePsedo.PNG      test0
ecrirePseudoVide
    Input Text      cadrePsedo.PNG 
ecrirePseudoVideEspaces
    Input Text      cadrePsedo.PNG      ${SPACE}
ecrirePseudoLong
    Input Text      cadrePsedo.PNG      eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
choixCouleur
    ${reg}          Create List     ${890}  ${465}  ${95}   ${80}

    FOR     ${ligne}    IN RANGE    2
        FOR     ${colonne}  IN RANGE    4
            
            sk.click    Region  ${reg}
            Sleep   1

            ${buff}=    Evaluate    ${reg}[0]+${95}
            Set List Value  ${reg}      1   ${buff}
        END

         ${buffy}=   Evaluate    ${reg} [1]+${80}
         Set List Value  ${reg}      1   ${buffy}
         Set List Value  ${reg}      0   ${coordsx}
    END    
    
annuler
    sk.click        annuler.PNG
confirmer
    sk.click        enregistrerPseudo
arretServeur
    Stop Remote Server

ViderLogs
    Run     .\\clear_logs.bat  
Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}
