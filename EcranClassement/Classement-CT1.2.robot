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
classement-CT1.1
    verifAccesParametres
    

*** Keywords ***
verifAccesParametres
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    \\Classement-CT1\\affichageContexte.png   2
    
ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}