*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/excel1.robot
Library    DataDriver    ../Resources/login_data.xlsx    sheet_name=Sheet1

Test Template    Invalid Login


*** Test Cases ***
LoginTestUsingExcel using ${username} and ${password}

*** Keywords ***
Invalid Login
    Open My Browser
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    click login button
    Close Browser