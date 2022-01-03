*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary       WITH NAME   IHL
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
    Input Text      \\Choix Defi - CT3\\rechercher.png=0.80     explorateur de fichiers
    sk.Click        \\Choix Defi - CT3\\explorateur.png=0.80
    sk.Click        \\Choix Defi - CT3\\cheminDacces.png=0.60
    Press Special Key   BACKSPACE
    
    Input Text      \\Choix Defi - CT3\\cheminDaccesVide.png=0.80    C:\\Users\\Nico
    Press Special Key   ENTER
    Sleep   1
    sk.Click    \\Choix Defi - CT3\\barreRecherche.png=0.80
    Sleep   1
    Input Text   ${EMPTY}    test.mv.db 
    Sleep   1
    Press Special Key   ENTER

    sk.Click        \\Choix Defi - CT3\\fichierDBSuppr.png=0.80
    Press Special Key   DELETE
    
    
    Input Text      \\Choix Defi - CT3\\cheminDaccesVide.png=0.60    C:\\Users\\Nico\\Desktop\\projet\\LES TROIS PETITS COCHONS
    Press Special Key   ENTER
    sk.Mouse Move     \\Choix Defi - CT3\\jouerPointBAT.png=0.70
    IHL.Double Click    left    0.1

    Sleep   6
    sk.Click     creerUnProfil.png
    Input Text   cadrePsedo.png      Psedo0
    sk.Click     choixCouleur.png
    sk.Click     eregistrePsedo.png
    sk.Click     boutonJouer.png
    sk.Click     Progression.png
  
    sk.Wait Until Screen Contain    \\Choix Defi - CT3\\ecranJeuInital.png=0.70      2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}