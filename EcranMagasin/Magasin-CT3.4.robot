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
Magasin-CT3.4
    achatCochonSansJetons
    

*** Keywords ***
achatCochonSansJetons
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton0.png   2
    sk.Click    \\Magasin-CT3\\pasCochonAchete.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\messageErreur.png    2
    sk.Click    \\Magasin-CT3\\btnOk.png

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}