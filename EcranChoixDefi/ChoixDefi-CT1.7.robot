*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT1
${XP1} 
${XP2}

*** Test Cases ***
ChoixDefi-CT1.7
    recuperationXP1
    jeu
    recuperationXP2   

*** Keywords ***
recuperationXP1
    sk.Click         jeu.png
    Sleep            2
    ${XP1}           Get Text         XP0.png

jeu
    sk.Click         boutonDefi1.png
    sk.Click         piece1.png
    sk.Wheel Up      3
    sk.Click         enplacement1.png
    sk.Click         piece2.png
    sk.Click         enplacement2.png
    sk.Click         piece3.png
    sk.Wheel Up      2
    sk.Click         enplacement3.png

recuperationXP2

    Sleep            3
    ${XP2}           Get Text         XP1.png
    
    IF  "${XP2}" > "${XP1}"
    Log     l'XP s'incrémente bien
    END

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}