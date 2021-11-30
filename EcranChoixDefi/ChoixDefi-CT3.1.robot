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
ChoixDefi-CT3.1
    initalisationSurDiurne

*** Keywords ***
initalisationSurDiurne
    Input Text      \\Choix Defi - CT3\\rechercher.png     explorateur de fichiers
    sk.Click        \\Choix Defi - CT3\\explorateur.png
    sk.Click        \\Choix Defi - CT3\\cheminDacces.png
    Press Special Key   BACKSPACE
    Input Text      \\Choix Defi - CT3\\cheminDaccesVide.png    C:\Users\Nico
    Input Text      \\Choix Defi - CT3\\barreRecherche.png      test.mv.db
    Press Special Key   ENTER
    sk.Click        \\Choix Defi - CT3\\fichierDBSuppr.png
    Press Special Key   SUPPR
    sk.Click        \\Choix Defi - CT3\\
    
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    \\Choix Defi - CT3\\ecranJeuInital.png=0.70      2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}