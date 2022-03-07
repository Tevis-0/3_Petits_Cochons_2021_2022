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
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\


*** Test Cases ***
AffichageMenu
    ouvrirMenu
FloutageArrierePlan
    ouvrirMenu

AffichageBouton

SurvolBoutons

QuitterPartie

    arretServeur

*** Keywords ***
ouvrirMenu
    sk.click        pause.png
    sk.Wait Until Screen Contain    menu.png
annuler
    sk.click        annuler.PNG
verifFlou
    sk.Wait Until Screen Contain    flou.png
arretServeur
    Stop Remote Server
ViderLogs
    Run     .\\clear_logs.bat  
Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}
