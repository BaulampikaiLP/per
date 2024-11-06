*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com/alerts
${browser}    chrome

*** Test Cases ***
alert
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    #Click Button    id=alertButton
    Sleep    3s
    Click Button    xpath://*[@id="confirmButton"]
    Sleep    3s
    #Handle Alert    accept
    #Handle Alert    dismiss
    #Handle Alert    leave
    #Alert Should Be Present    Do you confirm action?