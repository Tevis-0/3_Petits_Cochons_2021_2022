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
${coordsx}  ${571}
${coordsy}  ${527}

${difficultes}  ${3}
${defis}        ${6}

*** Test Cases ***
ChoixDefi-CT2.2
    verificationBoutonsBloque    

*** Keywords ***
verificationBoutonsBloque
    sk.Click        jeu.png
    Sleep           2

    ${reg}          Create List     ${571}  ${527}  ${83}   ${88}


    FOR     ${difficultes}  IN RANGE    3
        FOR     ${defis}    IN RANGE    6

            sk.Click Region  ${reg}
            sk.Wait Until Screen Contain    ecranJeu.png    2

            ${buff}=  Evaluate    ${reg}[0]+${120}
            Set List Value   ${reg}     0   ${buff}     

        END

        ${buffy}=     Evaluate    ${reg}[1]+${115}
        Set List Value   ${reg}     1   ${buffy}
        Set List Value   ${reg}     0   ${coordsx}

    END

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}