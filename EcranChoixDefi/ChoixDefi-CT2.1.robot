*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT2

*** Test Cases ***
ChoixDefi-CT2.1
    verificationDefisRealisables1
    jeu
    verificationDefisRealisables2
    jeu
    verificationDefisRealisables3
    jeu
    verificationDefisRealisables4
    jeu
    verificationDefisRealisables5
    jeu
    verificationDefisRealisables6
    jeu

*** Keywords ***
verificationDefisRealisables1
    sk.Click        jeu.png
    Sleep           2
    sk.Click        StarterDefi1.png

jeu
    sk.Click        pause.png
    sk.Click        quitter.png
    sk.Click        ouiQuitter.png
    Sleep           1.5
    sk.Click        menu.png

verificationDefisRealisables2
    Sleep           1
    sk.Click        StarterDefi2.png

verificationDefisRealisables3
    Sleep           1
    sk.Click        StarterDefi3.png

verificationDefisRealisables4
    Sleep           1
    sk.Click        StarterDefi4.png

verificationDefisRealisables5
    Sleep           1
    sk.Click        StarterDefi5.png

verificationDefisRealisables6
    Sleep           1
    sk.Click        StarterDefi6.png

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}