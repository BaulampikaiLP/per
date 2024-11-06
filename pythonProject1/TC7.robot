*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}      Chrome
${USERNAME}     Admin
${PASSWORD}     admin123
${speed}    get selenium speed
*** Test Cases ***
Sleep_Wait
   
    Log To Console    ${speed}
    Open Browser        ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    3s
    Wait Until Element Is Visible    name=username    timeout=10
    Input Text  name=username   ${USERNAME}
    Wait Until Element Is Visible    name=password    timeout=10
    Input Text  name=password     ${PASSWORD}
    Wait Until Element Is Visible     //button[@type='submit']    timeout=10
    Sleep   5s
    Click Button     //button[@type='submit']
    Close Browser