*** Settings ***
Library           SeleniumLibrary
Library           ../resources/Read2.py

*** Variables ***
${URL}    https://www.saucedemo.com/
${excel}   C:/Users/baula/PycharmProjects/pythonProject1/Resources/login_data.xlsx

*** Test Cases ***
Login
    Open Browser    ${URL}    chrome
    ${data}=       Load Excel         ${excel}
    FOR    ${row}    IN    @{data}
        ${username}=    Set Variable    ${row}[0]
        ${password}=    Set Variable    ${row}[1]
        Input Text    id=user-name    ${username}
        Input Text    id=password    ${password}
        Click Button    id=login-button

    END
    Close Browser

