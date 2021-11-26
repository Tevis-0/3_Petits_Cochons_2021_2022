*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\ChoixDefi-CT2

*** Test Cases ***
ttoto
    testBoutonsbloqués

*** Keywords ***

testBoutonsbloqués
    sk.Click        jeu.png
    Sleep           2

    ${coordsx} =    360
    ${coordsy} =    470
    FOR ${difficultés} IN RANGE 3
        FOR ${defis} IN RANGE 6
            ${coordsxy} =   ${coordsx}    ${coordsxy}
            sk.Click Region     ${coordsxy}
            ${coordsx} =    ${coordsx} + 120
        END
        ${coordsx} =   ${coordsy} + 110
    END


    @{coordsxy} =   ${coordsx}    ${coordsxy}
            sk.Click Region     ${coordsxy}