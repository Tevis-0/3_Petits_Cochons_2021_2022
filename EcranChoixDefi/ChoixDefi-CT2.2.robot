*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT2

*** Test Cases ***
Manyfik
    Trobi1
    

*** Keywords ***
Trobi1
    sk.Click        jeu.png
    Sleep           2

    ${coordsx}  Set Variable  ${360}
    ${coordsy}  Set Variable  ${470}
    FOR     ${difficultés}  IN RANGE    3
        FOR     ${defis}    IN RANGE    6
            @{coordsxy} =   ${coordsx}    ${coordsxy}
            sk.Click Region     ${coordsxy}
            ${coordsx}   Set Variable    ${{coordsx + 120}}
        END
        ${coordsx} =   ${coordsy} + ${110}
    END

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}