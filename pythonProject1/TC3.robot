*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}      Chrome
${USERNAME}     Admin
${PASSWORD}     admin123

*** Test Cases ***
Login
    Open Browser        ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    name=username    timeout=10
    Input Text  name=username   ${USERNAME}
    Wait Until Element Is Visible    name=password    timeout=10
    Input Text  name=password     ${PASSWORD}
    Wait Until Element Is Visible     //button[@type='submit']    timeout=10
    Sleep   5s
    Click Button     //button[@type='submit']
    Close Browser
