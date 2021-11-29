*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT2
${coordsx}  ${360}
${coordsy}  ${470}
*** Test Cases ***
Manyfik
    Trobi1
    

*** Keywords ***
Trobi1
    sk.Click        jeu.png
    Sleep           2

    Log To Console  ${coordsx}
    Log To Console  ${coordsy}
    ${coordsxy}=    Evaluate    ${coordsx}+${coordsy}
    Log To Console  ${coordsxy}

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