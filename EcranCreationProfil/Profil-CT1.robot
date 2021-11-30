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

*** Test Cases ***
Profil-CT1
    ecrirePseudo
Profil-CT2
    ecrirePseudoVide
    confirmer
    arretServeur

*** Keywords ***
ecrirePseudo
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG      test0
ecrirePseudoVide
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG 
ecrirePseudoVideEspaces
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG      ${SPACE}
ecrirePseudoLong
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG      eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
choixCouleur
    Log To Console  ${coordsx}
    Log To Console  ${coordsy}
    ${coordsxy}=    Evaluate    ${coordsx}+${coordsy}
    Log To Console  ${coordsxy}

    FOR     ${
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
=======
*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}
${coordsx}  ${890}
${coordsy}  ${465}

*** Test Cases ***
Profil-CT1
    ecrirePseudo
Profil-CT2
    ecrirePseudoVide
    confirmer
    arretServeur

*** Keywords ***
ecrirePseudo
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG      test0
ecrirePseudoVide
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG 
ecrirePseudoVideEspaces
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG      ${SPACE}
ecrirePseudoLong
    sk.click        creerUnProfil.PNG
    Input Text      cadrePsedo.PNG      eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
choixCouleur
    Log To Console  ${coordsx}
    Log To Console  ${coordsy}
    ${coordsxy}=    Evaluate    ${coordsx}+${coordsy}
annuler
    sk.click        annuler.PNG
confirmer
    sk.click        enregistrerPseudo
arretServeur
    Stop Remote Server  
Add Needed Image Path
>>>>>>> 2ca6a9e83bfa110be18ae442abcd3df3aef46955
    