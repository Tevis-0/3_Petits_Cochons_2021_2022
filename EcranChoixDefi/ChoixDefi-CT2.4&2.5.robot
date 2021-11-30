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
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\

*** Test Cases ***
ChoixDefi-CT2.4&CT2.5
    verifCliqueDiurne

*** Keywords ***
verifCliqueDiurne
    sk.Click        jeu.png
    Sleep           2

    sk.Click    \\Choix Defi - CT2\\btnNocturneDiurne.png=0.5
    sk.Wait Until Screen Contain    \\Choix Defi - CT2\\ecranJeuNocturne.png=0.5    2

    sk.Click    \\Choix Defi - CT2\\btnDiurneNocturne.png=0.5
    sk.Wait Until Screen Contain    \\Choix Defi - CT2\\ecranJeu.png=0.5    2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}