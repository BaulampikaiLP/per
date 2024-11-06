*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://www.saucedemo.com
${BROWSER}        Chrome
${USERNAME}       standard_user    # Replace with valid username
${PASSWORD}       secret_sauce     # Replace with valid password

*** Tasks ***
Login to Swag Labs
    Open Available Browser    ${URL}    browser=${BROWSER}
    Maximize Browser Window
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button
    Close Browser
