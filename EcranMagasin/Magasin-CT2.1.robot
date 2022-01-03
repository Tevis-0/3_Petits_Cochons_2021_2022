*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary       WITH NAME   IHL
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\

*** Test Cases ***
ChoixDefi-CT5.1
    selectionTypeCosmetique

*** Keywords ***
selectionTypeCosmetique
    sk.Click        jeu.png
    Sleep           2

    sk.Mouse Move        \\Choix Defi-CT5\\defiNonRealise.png=0.70
    sk.Wait Until Screen Contain    \\Choix Defi-CT5\\pasDeRecord.png=0.99     2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}