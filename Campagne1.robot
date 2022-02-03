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

*** Test Cases ***
Campagne1
    ouvrirMenu
    ecrirePseudo
    confirmer
    jouer
    Progression
    Verif

*** Keywords ***
ouvrirMenu
    sk.Click        \\EcranCreationProfil\\creerUnProfil.PNG

ecrirePseudo
    Input Text      \\EcranCreationProfil\\cadrePsedo.PNG      test1

confirmer
    sk.Click        \\EcranCreationProfil\\enregistrerPseudo.png=0.70

jouer
    sk.Click        \\EcranMenuDemarrage\\imgProjet\\menuDemarrage-CT2\\btnJouerNonHover.png

progression
    sk.click        \\EcranChoixModeDeJeu\\imgProjet\\choixModeDeJeu-CT1\\progression.png

verif
    sk.Wait Until Screen Conain         \\EcranChoixModeDeJeu\\imgProjet\\choixModeDeJeu-CT2\\ecranProgression.png    2


ViderLogs
    Run     .\\clear_logs.bat  
Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}