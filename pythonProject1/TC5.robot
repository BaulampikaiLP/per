*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}       https://demoqa.com/elements

*** Test Cases ***
Checkbox and Radio button
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # Click on the CheckBox link
    Wait Until Element Is Visible    xpath=//span[text()='Check Box']    timeout=10
    Click Element    xpath=//span[text()='Check Box']

    # Select the checkbox for 'Home'
    Wait Until Element Is Visible    //*[@id="tree-node"]/ol/li/span/label/span[3]    timeout=10
    Click Element    xpath=//*[@id="tree-node"]/ol/li/span/label/span[3]

    # Click on the Radio Button link
    Wait Until Element Is Visible    xpath=//span[text()='Radio Button']    timeout=10
    Click Element    xpath=//span[text()='Radio Button']

    # Select the radio button for 'Yes'
    Wait Until Element Is Visible    xpath://*[@id="app"]/div/div/div/div[2]/div[2]/div[2]/label    timeout=10
    Click Element    xpath=//*[@id="app"]/div/div/div/div[2]/div[2]/div[2]/label

    Close Browser
