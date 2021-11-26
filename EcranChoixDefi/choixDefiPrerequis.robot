*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet

*** Test Cases ***
prerequisDuChoixDuDefi
    creationProfil
    

*** Keywords ***
creationProfil
    sk.Click     jeu.png
    sk.Click     creerUnProfil.png
    Input Text   cadrePsedo.png      Psedo0
    sk.Click     choixCouleur.png
    sk.Click     eregistrePsedo.png
    sk.Click     boutonJouer.png
    sk.Click     Progression.png

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}