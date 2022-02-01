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
ChoixmodeDeJeu-CT1.1
    accesParametres

*** Keywords ***
accesParametres
    sk.Click        jeu.png
    Sleep           2

    sk.Click   choixModeDeJeu-CT1/parametres.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT2/ecranParametres.png  1
    sk.Click    retourPetit.png

ViderLogs
    Run     ./clear_logs_linux.sh

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}