*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/excel1.robot
Suite Setup    Open My Browser
Suite Teardown    Close Browser
Test Template    Invalid Login

*** Test Cases ***      username             password  
Right user empty pwd    standard_user    ${EMPTY}
Right user wrong pwd    standard_user    xyz
Wrong user right pwd    admin123        secret_sauce
Wrong user empty pwd    admin123        ${EMPTY}
Wrong user wrong pwd    admin123        xyz
    
*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    click login button