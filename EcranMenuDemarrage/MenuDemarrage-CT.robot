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
menuDemarrage-CT2.1
    verifRetourVisuelJouer

menuDemarrage-CT2.2
    verifRetourVisuelMagasin
    
menuDemarrage-CT2.3
    verifRetourVisuelClassement

menuDemarrage-CT2.4
    verifRetourVisuelParametres

menuDemarrage-CT3.1
    verifAccesChoixModeDeJeu

menuDemarrage-CT3.2
    verifAccesMagasin

menuDemarrage-CT3.3
    verifAccesClassement

menuDemarrage-CT3.4
    verifAccesParametres
*** Keywords ***
verifRetourVisuelJouer
    sk.Click        jeu.png
    Sleep           2

    sk.Mouse Move   \\menuDemarrage-CT2\\btnJouerNonHover.png
    sk.Wait Until Screen Contain    \\menuDemarrage-CT2\\btnJouerHover.png   2

verifRetourVisuelMagasin

    sk.Mouse Move   \\menuDemarrage-CT2\\btnMagasinNonHover.png
    sk.Wait Until Screen Contain    \\menuDemarrage-CT2\\btnMagasinHover.png   2

verifRetourVisuelClassement

    sk.Mouse Move   \\menuDemarrage-CT2\\btnClassementNonHover.png
    sk.Wait Until Screen Contain    \\menuDemarrage-CT2\\btnClassementHover.png   2

verifRetourVisuelParametres

    sk.Mouse Move   \\menuDemarrage-CT2\\btnParametresNonHover.png
    sk.Wait Until Screen Contain    \\menuDemarrage-CT2\\btnParametresHover.png   2

verifAccesChoixModeDeJeu

    sk.Click   \\menuDemarrage-CT2\\btnJouerNonHover.png
    sk.Wait Until Screen Contain    \\menuDemarrage-CT3\\ecranChoixModeDeJeu.png   2
    sk.Click    \\menuDemarrage-CT3\\btnRetour.png

verifAccesMagasin

    sk.Click   \\menuDemarrage-CT2\\btnMagasinNonHover.png
    sk.Wait Until Screen Contain    \\menuDemarrage-CT3\\ecranMagasin.png=1   2
    sk.Click    \\menuDemarrage-CT3\\btnRetour.png

verifAccesClassement
    sk.Click    \\menuDemarrage-CT3\\btnRetour.png
    sk.Click   \\menuDemarrage-CT2\\btnClassementNonHover.png
    Sleep     2
    sk.Wait Until Screen Contain    \\menuDemarrage-CT3\\ecranClassement.png   2
    sk.Click    \\menuDemarrage-CT3\\btnRetour.png

verifAccesParametres

    sk.Click   \\menuDemarrage-CT2\\btnParametresNonHover.png
    Sleep     2
    sk.Wait Until Screen Contain    \\menuDemarrage-CT3\\ecranParametres.png   2
    sk.Click    \\menuDemarrage-CT3\\btnRetourParametres.png
    
ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}