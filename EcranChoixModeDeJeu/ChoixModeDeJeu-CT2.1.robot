*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}/imgProjet/


*** Test Cases ***
ChoixmodeDeJeu-CT2.1
    accesChoixDefi

*** Keywords ***
accesChoixDefi
    sk.Click        jeu.png
    Sleep           2

    sk.Click   choixModeDeJeu-CT1/boutonEntrainement.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT2/niveau_contexteEntrainement.png  1
    sk.Click    retour.png

ViderLogs
    Run     ./clear_logs_linux.sh

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}