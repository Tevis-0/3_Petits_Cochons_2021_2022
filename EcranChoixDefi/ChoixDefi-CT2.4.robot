*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\Choix Defi - CT2\\

*** Test Cases ***
ChoixDefi-CT2.4
    verifCliqueDiurne

*** Keywords ***

verifCliqueDiurne
    sk.Click        jeu.png
    Sleep           2

    sk.Click    btnCliqueDiurne.png
    sk.Wait Until Screen Contain    ecranJeu.png=0.5    2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}