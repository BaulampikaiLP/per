*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/v1/
${browser}    chrome

*** Keywords ***
login
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
close browser
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

click logout button
    Click Element    xpath://*[@id="logout_sidebar_link"]

