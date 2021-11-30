*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary
Library           BuildIn
Library           Collections

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT2

${difficultes}  ${3}
${niveaux}      ${6}
${somme}        ${0}
*** Test Cases ***
bouclePourTest
    super

*** Keywords ***
super
    ${reg}  Create List  ${0}    ${0}   ${100}    ${100}
    Highlight Region  ${reg}  5
    Click Region  ${reg} 


Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}