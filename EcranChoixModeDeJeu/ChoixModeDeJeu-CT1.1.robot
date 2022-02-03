*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\


*** Test Cases ***
ChoixmodeDeJeu-CT1.1
    affichageModeEntrainement

*** Keywords ***
affichageModeEntrainement
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    choixModeDeJeu-CT1\\boutonEntrainement.png  1

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}
