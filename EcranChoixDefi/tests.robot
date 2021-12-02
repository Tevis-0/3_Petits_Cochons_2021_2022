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
test
    lancementScriptDansScript

*** Keywords ***
lancementScriptDansScript
    IF  jeu.png
        ${test}=    ${1}
    END
    Log To Console  ${test}
    Sleep   5 

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}