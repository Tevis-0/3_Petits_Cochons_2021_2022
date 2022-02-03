*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\


*** Test Cases ***
ChoixmodeDeJeu-CT1.1
    affichageModeEntrainement

ChoixmodeDeJeu-CT1.2
    affichageModeProgression

ChoixmodeDeJeu-CT1.3
    affichageModeCompetition

ChoixmodeDeJeu-CT1.4
    affichageParametres

ChoixmodeDeJeu-CT3.1
    hoverEntrainement

ChoixmodeDeJeu-CT3.2
    hoverEntrainement

ChoixmodeDeJeu-CT3.3
    hoverCompetition

ChoixmodeDeJeu-CT3.4
    hoverParametres

ChoixmodeDeJeu-CT2.1
    accesChoixDefi

ChoixmodeDeJeu-CT2.2
    accesProgression

ChoixmodeDeJeu-CT2.3
    accesCompetition

ChoixmodeDeJeu-CT2.4
    accesParametres

*** Keywords ***
affichageModeEntrainement
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    choixModeDeJeu-CT1\\boutonEntrainement.png  1

affichageModeProgression

    sk.Wait Until Screen Contain   choixModeDeJeu-CT1\\progression.png   1


affichageModeCompetition

    sk.Wait Until Screen Contain   choixModeDeJeu-CT1\\competition.png   1

affichageParametres

    sk.Wait Until Screen Contain   choixModeDeJeu-CT1\\parametres.png   1

hoverEntrainement

    sk. Mouse Move   choixModeDeJeu-CT1\\boutonEntrainement.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT3\\entrainementHover.png  1

hoverEntrainement

    sk. Mouse Move   choixModeDeJeu-CT1\\progression.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT3\\progressionHover.png  1

hoverCompetition

    sk. Mouse Move   choixModeDeJeu-CT1\\competition.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT3\\competitionHover.png  1

hoverParametres

    sk. Mouse Move   choixModeDeJeu-CT1\\parametres.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT3\\parametresHover.png  1

accesChoixDefi

    sk.Click   choixModeDeJeu-CT1\\boutonEntrainement.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT2\\niveau_contexteEntrainement.png  1
    sk.Click    retour.png

accesProgression

    sk.Click   choixModeDeJeu-CT1\\progression.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT2\\ecranProgression.png  1
    sk.Click    retour.png

accesCompetition

    sk.Click   choixModeDeJeu-CT1\\competition.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT2\\niveau_contexteEntrainement.png  1
    sk.Click    retour.png

accesParametres

    sk.Click   choixModeDeJeu-CT1\\parametres.png
    sk.Wait Until Screen Contain    choixModeDeJeu-CT2\\ecranParametres.png  1
    sk.Click    retourPetit.png

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}