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
menuDemarrage-CT3.3
    verifAccesClassement
    

*** Keywords ***
verifAccesClassement
    sk.Click        jeu.png
    Sleep           2

    sk.Click   \\menuDemarrage-CT2\\btnClassementNonHover.png
    Sleep     2
    sk.Wait Until Screen Contain    \\menuDemarrage-CT3\\ecranClassement.png   2
    sk.Click    \\menuDemarrage-CT3\\btnRetour.png

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}