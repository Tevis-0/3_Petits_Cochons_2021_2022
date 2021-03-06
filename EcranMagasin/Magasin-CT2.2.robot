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
Magasin-CT2.2
    nomsCosmetiques

*** Keywords ***
nomsCosmetiques
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    \\Magasin-CT2\\classique.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\boueux.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\hiver.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\halooween.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\or.png=0.99     2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}