*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi

*** Test Cases ***
ChoixDefi-CT1.1
    jeu


    

*** Keywords ***
jeu
    sk.Click         jeu.png
    Sleep            2
    sk.Click         boutonDefi1.png
    sk.Click         piece1.png
    sk.Wheel Up      3
    sk.Click         enplacement1.png
    sk.Click         piece2.png
    sk.Click         enplacement2.png
    sk.Click         piece3.png
    sk.Wheel Up      2
    sk.Click         enplacement3.png

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}