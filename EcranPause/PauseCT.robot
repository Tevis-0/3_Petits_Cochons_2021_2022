<<<<<<< HEAD
*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary
Library           OperatingSystem
Library           BuildIn
Library           Collections
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server
!
*** Variables ***
${IMAGE_DIR}      ${CURDIR}


*** Test Cases ***

    arretServeur

*** Keywords ***

annuler
    sk.click        annuler.PNG
confirmer
    sk.click        enregistrerPseudo.png=0.70
arretServeur
    Stop Remote Server
ViderLogs
    Run     .\\clear_logs.bat  
Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}
