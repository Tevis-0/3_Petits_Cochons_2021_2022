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
    jeu1
    jeu2
    jeu3
    jeu4
    jeu5
    jeu6
    jeu7
    jeu8
    jeu9
    jeu10
    jeu11
    jeu12
    verifClassementTempsCroissant

*** Keywords ***
verifAccesParametres
    sk.Click        jeu.png
    Sleep           2

    sk.CLick    \\retour.png
    sk.Click    \\jouer.png
    sk.Click    \\progression.png
    
jeu1
    sk.Click         \\12Parties\\boutonDefi1.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          1
    sk.Wheel Up      3
    sk.Click         \\12Parties\\enplacement1.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Click         \\12Parties\\enplacement2.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      2
    sk.Click         \\12Parties\\enplacement3.png=0.90

jeu2
    sk.Click         \\12Parties\\boutonDefi2.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          2
    sk.Click         \\12Parties\\enplacement1-2.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement2-2.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement3-2.png=0.90

jeu3
    sk.Click         \\12Parties\\boutonDefi3.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          3
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement1-3.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Click         \\12Parties\\enplacement2-3.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      2
    sk.Click         \\12Parties\\enplacement3-3.png=0.90

jeu4
    sk.Click         \\12Parties\\boutonDefi4.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          4
    sk.Click         \\12Parties\\enplacement1-4.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Click         \\12Parties\\enplacement2-4.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      2
    sk.Click         \\12Parties\\enplacement3-4.png=0.90

jeu5
    sk.Click         \\12Parties\\boutonDefi5.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          5
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement1-5.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement2-5.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      2
    sk.Click         \\12Parties\\enplacement3-5.png=0.90

jeu6
    sk.Click         \\12Parties\\boutonDefi6.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          6
    sk.Click         \\12Parties\\enplacement1-6.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Click         \\12Parties\\enplacement2-6.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      3
    sk.Click         \\12Parties\\enplacement3-6.png=0.90

jeu7
    sk.Click         \\12Parties\\boutonDefi7.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          7
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement1-7.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement2-7.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement3-7.png=0.90

jeu8
    sk.Click         \\12Parties\\boutonDefi8.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          8
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement1-8.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Click         \\12Parties\\enplacement2-8.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement3-8.png=0.90

jeu9
    sk.Click         \\12Parties\\boutonDefi9.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          9
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement1-9.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement2-9.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement3-8.png=0.90

jeu10
    sk.Click         \\12Parties\\boutonDefi10.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          10
    sk.Click         \\12Parties\\enplacement1-10.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Click         \\12Parties\\enplacement2-10.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement3-10.png=0.90

jeu11
    sk.Click         \\12Parties\\boutonDefi11.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          11
    sk.Wheel Up      3
    sk.Click         \\12Parties\\enplacement1-11.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement2-11.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement3-11.png=0.90

jeu12
    sk.Click         \\12Parties\\boutonDefi12.png=0.90
    sk.Click         \\12Parties\\paille1.png=0.90
    sk.Wait          11
    sk.Wheel Up      3
    sk.Click         \\12Parties\\enplacement1-12.png=0.90
    sk.Click         \\12Parties\\bois1.png=0.90
    sk.Click         \\12Parties\\enplacement2-12.png=0.90
    sk.Click         \\12Parties\\brique1.png=0.90
    sk.Wheel Up      1
    sk.Click         \\12Parties\\enplacement3-12.png=0.90

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}