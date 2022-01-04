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
Magasin-CT2.7
    presentationCosmetiquesCochons 
    presentationCosmetiquesLoups
    presentationCosmetiquesTerrins
*** Keywords ***
presentationCosmetiquesCochons
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom1.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom2.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom3.png=0.31     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom4.png=0.27     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom5.png=0.51     2

presentationCosmetiquesLoups

    sk.Click       \\banqueImage\\loup1.png

    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom1.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom2.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom3.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom4.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom5.png=0.9     2

presentationCosmetiquesTerrins

    sk.Click        \\Magasin-CT2\\themes.png

    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom1.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom2.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom3.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom4.png=0.9     2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}