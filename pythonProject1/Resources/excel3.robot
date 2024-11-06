*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/
${EXCEL_PATH}      C:/Users/baula/PycharmProjects/pythonProject1/Resources/login_data.xlsx
${Login_sheet}    Sheet1
*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login-button
    Sleep    3s
Read Cell
    [Arguments]   ${EXCEL_PATH}    ${Login_sheet}    ${row}    ${col}
    Open Excel Document      ${EXCEL_PATH}    ${Login_sheet}
    ${cell_value}    Read Excel Cell    ${row}    ${col}
    Close Current Excel Document
    RETURN   ${cell_value}

Login With Invalid Credentials
    [Documentation]    Test logging in with invalid credentials.
    Open Browser    ${URL}    chrome
    ${username}    Read Cell       ${EXCEL_PATH}    Sheet1    2   1
    ${password}    Read Cell       ${EXCEL_PATH}    Sheet1    2   2
    Login    ${username}    ${password}
    Close Browser

Login With Invalid Username And Valid Password
    [Documentation]    Test logging in with an invalid user.
    Open Browser    ${URL}    chrome
    ${username}    Read Cell      ${EXCEL_PATH}    Sheet1    3   1
    ${password}    Read Cell      ${EXCEL_PATH}    Sheet1    3   2
    Login    ${username}    ${password}
    Close Browser

Login With Valid Username And Invalid Password
    [Documentation]    Test logging in with a wrong password.
    Open Browser    ${URL}    chrome
    ${username}    Read Cell     ${EXCEL_PATH}    Sheet1    4   1
    ${password}    Read Cell     ${EXCEL_PATH}    Sheet1    4   2
    Login    ${username}    ${password}
    Close Browser

Login With Valid Credentials
    [Documentation]    Test logging in with valid credentials.
    Open Browser    ${URL}    chrome
    ${username}    Read Cell      ${EXCEL_PATH}    Sheet1    5    1
    ${password}    Read Cell      ${EXCEL_PATH}    Sheet1    5    2
    Login    ${username}    ${password}
    Close Browser
