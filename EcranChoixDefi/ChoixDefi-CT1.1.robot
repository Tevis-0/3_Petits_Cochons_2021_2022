*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT1

*** Test Cases ***
ChoixDefi-CT1.1
    verificationTitre
    

*** Keywords ***
verificationTitre
    sk.Click        jeu.png
    Sleep           2
    ${titre}        Get Text      titre.png

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}