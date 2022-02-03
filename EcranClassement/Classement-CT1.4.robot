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
${nbJeu}          ${0}
${nblignes}       ${0}
*** Test Cases ***
classement-CT1.1
    verifAccesParametres
    
    ##verifClassementTempsCroissant

*** Keywords ***
verifAccesParametres
    sk.Click        jeu.png
    Sleep           2

    sk.CLick    \\retour.png
    sk.Click    \\jouer.png
    sk.Click    \\competition.png
    sk.Click    \\starter.png
    sk.Click    \\diurne.png
    sk.click    \\lancer.png
    
    FOR     ${nbLignes}     IN RANGE    8
        Log to Console  ${nbLignes}
        FOR     ${nbJeu}    IN RANGE    5
            Log to Console  ${nbJeu}
            Sleep           ${nbJeu+1}
            
            ${plateau}=     sk.Exists  \\12Parties\\plateau1.png=0.90   1
            IF  ${plateau}
                Log To Console    plateau1 reconnu
                sk.Click         \\12Parties\\paille1.png=0.90
                sk.Wheel Up      3
                sk.Click         \\12Parties\\enplacement1.png=0.90
                sk.Click         \\12Parties\\bois1.png=0.90
                sk.Click         \\12Parties\\enplacement2.png=0.90
                sk.Click         \\12Parties\\brique1.png=0.90
                sk.Wheel Up      2
                sk.Click         \\12Parties\\enplacement3.png=0.90
                Sleep            2
            END
            
            ${plateau}=     sk.Exists  \\12Parties\\plateau2.png=0.90   1
            IF  ${plateau}
                Log To Console     plateau2 reconnu
                sk.Click         \\12Parties\\paille1.png=0.90
                Sleep          2
                sk.Click         \\12Parties\\enplacement1-2.png=0.90
                sk.Click         \\12Parties\\bois1.png=0.90
                sk.Wheel Up      1
                sk.Click         \\12Parties\\enplacement2-2.png=0.90
                sk.Click         \\12Parties\\brique1.png=0.90
                sk.Wheel Up      1
                sk.Click         \\12Parties\\enplacement3-2.png=0.90
                Sleep            2
            END
            
            ${plateau}=     sk.Exists  \\12Parties\\plateau3.png=0.90   1
            IF  ${plateau}
                Log To Console    plateau3 reconnu
                sk.Click         \\12Parties\\paille1.png=0.90
                Sleep          3
                sk.Wheel Up      1
                sk.Click         \\12Parties\\enplacement1-3.png=0.90
                sk.Click         \\12Parties\\bois1.png=0.90
                sk.Click         \\12Parties\\enplacement2-3.png=0.90
                sk.Click         \\12Parties\\brique1.png=0.90
                sk.Wheel Up      2
                sk.Click         \\12Parties\\enplacement3-3.png=0.90
                Sleep            2
            END
            
            ${plateau}=     sk.Exists  \\12Parties\\plateau4.png=0.90   1
            IF  ${plateau}
                Log To Console     plateau4 reconnu
                sk.Click         \\12Parties\\paille1.png=0.90
                Sleep          4
                sk.Click         \\12Parties\\enplacement1-4.png=0.90
                sk.Click         \\12Parties\\bois1.png=0.90
                sk.Click         \\12Parties\\enplacement2-4.png=0.90
                sk.Click         \\12Parties\\brique1.png=0.90
                sk.Wheel Up      2
                sk.Click         \\12Parties\\enplacement3-4.png=0.90
                Sleep            2
            END
            
            ${plateau}=     sk.Exists  \\12Parties\\plateau5.png=0.90   1
            IF  ${plateau}
                Log To Console     plateau5 reconnu
                sk.Click         \\12Parties\\paille1.png=0.90
                Sleep          5
                sk.Wheel Up      1
                sk.Click         \\12Parties\\enplacement1-5.png=0.90
                sk.Click         \\12Parties\\bois1.png=0.90
                sk.Wheel Up      1
                sk.Click         \\12Parties\\enplacement2-5.png=0.90
                sk.Click         \\12Parties\\brique1.png=0.90
                sk.Wheel Up      2
                sk.Click         \\12Parties\\enplacement3-5.png=0.90
                Sleep            2
            END
            
            ${plateau}=     sk.Exists  \\12Parties\\plateau6.png=0.90   1
            IF  ${plateau}
                Log To Console     plateau6 reconnu
                sk.Click         \\12Parties\\paille1.png=0.90
                Sleep          6
                sk.Click         \\12Parties\\enplacement1-6.png=0.90
                sk.Click         \\12Parties\\bois1.png=0.90
                sk.Click         \\12Parties\\enplacement2-6.png=0.90
                sk.Click         \\12Parties\\brique1.png=0.90
                sk.Wheel Up      3
                sk.Click         \\12Parties\\enplacement3-6.png=0.90
                Sleep            2
            END
        END
        sk.Click    \\retour.png
        sk.Click    \\jouer.png
        sk.Click    \\competition.png
        sk.Click    \\starter.png
        sk.Click    \\diurne.png
        sk.click    \\lancer.png 
    END 

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}