*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/v1/
${browser}    chrome
${username}    id=user-name
${password}    id=password 
${login_button}    xpath://*[@id="login-button"]

*** Keywords ***
Open my Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browser
    Close All Browsers

open login page
    Go To    ${url}
input username
    [Arguments]    ${username}
    Input Text    id=user-name    ${username}
input password
    [Arguments]    ${password}
    Input Text    id=password     ${password}

click login button
    Click Element    xpath://*[@id="login-button"]


