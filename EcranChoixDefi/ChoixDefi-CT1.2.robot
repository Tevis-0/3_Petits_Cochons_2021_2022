*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT1

*** Test Cases ***
ChoixDefi-CT1.2
    verificationPsedo
    

*** Keywords ***
verificationPsedo
    sk.Click        jeu.png
    Sleep           2
    Get Text        Psedo.png

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}