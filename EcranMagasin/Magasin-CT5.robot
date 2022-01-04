*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\

*** Test Cases ***
ChoixDefi-CT1.6
    verificationRetour
    

*** Keywords ***
verificationRetour
    sk.Click                    jeu.png
    Sleep                       2

    sk.Click    \\Magasin-CT5\\btnRetour.png
    sk.Wait Until Screen Contain   \\Magasin-CT5\\ecranAcceuil.png

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}