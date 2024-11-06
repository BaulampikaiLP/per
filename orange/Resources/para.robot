*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary

*** Variables ***
${url}    https://parabank.parasoft.com/parabank/index.htm?ConnType=JDBC
${excel1}    C:/Users/baula/PycharmProjects/orange/Resources/para.xlsx
${Login_sheet}    Sheet1

*** Keywords ***
Register
     Open Browser    ${URL}    chrome
     Maximize Browser Window
     Sleep    3s
     Click Element    //*[@id="loginPanel"]/p[2]/a
     Sleep    2s
     ${firstname}    Read Data      ${excel1}    Sheet1    2    1
     ${lastname}    Read Data      ${excel1}    Sheet1    2    2
     ${address}    Read Data      ${excel1}    Sheet1    2    3
     ${city}    Read Data      ${excel1}    Sheet1    2    4
     ${state}    Read Data      ${excel1}    Sheet1    2    5
     ${zip_code}    Read Data      ${excel1}    Sheet1    2    6
     ${phone}    Read Data      ${excel1}    Sheet1    2    7
     ${ssn}    Read Data      ${excel1}    Sheet1    2    8
     ${username}    Read Data      ${excel1}    Sheet1    2    9
     ${password}    Read Data      ${excel1}    Sheet1    2    10
     ${confirm}     Read Data      ${excel1}    Sheet1    2    11
     Data    ${firstname}    ${lastname}    ${address}    ${city}    ${state}    ${zip_code}    ${phone}    ${ssn}    ${username}    ${password}    ${confirm}

Read Data
    [Arguments]    ${excel1}     ${Login_sheet}    ${row}    ${col}
    Open Excel Document      ${excel1}     ${Login_sheet}
    ${cell_value}    Read Excel Cell    ${row}    ${col}
    Close Current Excel Document
    RETURN   ${cell_value}
    
Data
    [Arguments]    ${firstname}    ${lastname}    ${address}    ${city}    ${state}    ${zip_code}    ${phone}    ${ssn}    ${username}    ${password}    ${confirm}
    Input Text    id=customer.firstName    ${firstname}
    Input Text    id=customer.lastName    ${lastname}
    Input Text    id=customer.address.street     ${address}
    Input Text    id=customer.address.city    ${city}
    Input Text    id=customer.address.state    ${state}
    Input Text    id=customer.address.zipCode    ${zip_code}
    Input Text    id=customer.phoneNumber    ${phone}
    Input Text    id=customer.ssn    ${ssn}
    Input Text    id=customer.username    ${username}
    Input Text    id=customer.password    ${password}
    Input Text    id=repeatedPassword    ${confirm}
    Click Button    //*[@id="customerForm"]/table/tbody/tr[13]/td[2]/input

Empty
     Open Browser    ${URL}    chrome
     Maximize Browser Window
     Sleep    3s
     Click Element    //*[@id="loginPanel"]/p[2]/a
     Click Button    //*[@id="customerForm"]/table/tbody/tr[13]/td[2]/input

    