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
ChoixDefi-CT2.3
    verificationCliqueRetour

*** Keywords ***
verificationCliqueRetour
    sk.Click        jeu.png
    Sleep           2
    
    sk.Click    .\\ChoixDefi-CT1\\boutonRetour.png
    sk.Wait Until Screen Contain    .\\ChoixDefi-CT2\\choixMode.png=0.70     3
    sk.Click    .\\Progression.png

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}