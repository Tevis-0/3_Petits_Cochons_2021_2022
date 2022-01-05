*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary       WITH NAME   IHL
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\

*** Test Cases ***
menuDemarrage-CT2.2
    verifRetourVisuelMagasin
    

*** Keywords ***
verifRetourVisuelMagasin
    sk.Click        jeu.png
    Sleep           2

    sk.Mouse Move   \\menuDemarrage-CT2\\btnMagasinNonHover.png
    sk.Wait Until Screen Contain    \\menuDemarrage-CT2\\btnMagasinHover.png   2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}