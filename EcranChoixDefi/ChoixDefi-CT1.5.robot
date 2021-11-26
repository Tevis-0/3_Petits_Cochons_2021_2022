*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT1

*** Test Cases ***
ChoixDefi-CT1.5
    verificationDefi
    

*** Keywords ***
verificationDefi
    sk.Click                    jeu.png
    Sleep                       2
    sk.Mouse Move               boutonDefi1.png
    Screen Should Contain       boutonDefi1Hover.png

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}