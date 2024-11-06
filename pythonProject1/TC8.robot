*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${URL}            https://www.saucedemo.com
${BROWSER}        Chrome
${USERNAME}       standard_user
${PASSWORD}       secret_sauce
${implicate}    get selenium implicit wait
*** Test Cases ***

Login1
    Open Browser        ${URL}    ${BROWSER}
    Maximize Browser Window
    Log To Console    ${implicate}
    Set Selenium Implicit Wait    10s
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button
    Close Browser
