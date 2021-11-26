*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary
Library           ImageHorizonLibrary

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\img
${Text}    

*** Test Cases ***
Windows Notpad Hellow World
    Open Windows Start Menu
    Open Notepad
    Input In Notepad
    Clear
    Quit Without Save

*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}

Open Windows Start Menu
    SikuliLibrary.Click    windows_start_menu.png

Open Notepad
    Input Text    search_input.png    notepad
    SikuliLibrary.Click    notepad.png
    SikuliLibrary.Double Click    notepad_title.png

Input In Notepad
    Input Text    notepad_workspace.png    Hello World
    ${Text} =    get text    hello-word-texte.png
    Log    ${Text}   
    BuiltIn.Should Be Equal As Strings  ${Text}     1 Hello World
    
Clear
    Press Combination   KEY.CTRL    KEY.A
    Press Special Key 	DELETE

Quit Without Save
    SikuliLibrary.Click    close.png
    
