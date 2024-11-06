*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${URL}            https://www.saucedemo.com
${BROWSER}        Chrome
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***

Login
    Open Browser        ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button
    Close Browser
