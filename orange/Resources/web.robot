*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary

*** Variables ***
${url}    https://demowebshop.tricentis.com/
${excel1}    C://Users//baula//PycharmProjects//orange//Resources//login_Book1.xlsx

*** Keywords ***
Register
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    3s
    Click Link    Register
    Sleep    2
    Click Element    id=gender-female
    ${firstname}    Read Data From Sheet1    ${excel1}    Sheet1    2    1
    ${lastname}    Read Data From Sheet1    ${excel1}    Sheet1     2    2
    ${email}    Read Data From Sheet1    ${excel1}    Sheet1     2    3
    ${pass}    Read Data From Sheet1    ${excel1}    Sheet1     2    4
    ${confirm_pass}    Read Data From Sheet1    ${excel1}    2    5
    Login Data    ${firstname}    ${lastname}    ${email}    ${pass}    ${confirm_pass}

Login
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    3s
    Click Link    Log in
    Sleep    5s
    ${email}    Read Data From Sheet1    ${excel1}    Sheet1     2    3
    ${pass}    Read Data From Sheet1    ${excel1}    Sheet1     2    4
    Login Details    ${email}    ${pass}
    Sleep    3s
    Click Element    id=small-searchterms
    ${search}    Read Data From Sheet1    ${excel1}    Sheet2    2    1
    Sheet2 Data    ${search}
    Click Button    xpath=//input[@type='submit' and @value='Search']
    Sleep    2s
    Click Element    xpath=//h2/a[contains(text(),'Fiction')]
    Sleep    5s
    Click Button    xpath=//*[@id="add-to-cart-button-45"]
    Sleep    5s
    Click Link    Log out
    Close Browser

Read Data From Sheet1
    [Arguments]    ${excel1}    ${sheet_name}    ${row}    ${col}
    Open Excel Document    ${excel1}    ${sheet_name}
    ${cell_value}    Read Excel Cell    ${row}    ${col}
    Close Current Excel Document
    RETURN    ${cell_value}


Login Data
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${pass}    ${confirm_pass}
    Input Text    id=FirstName    ${firstname}
    Input Text    id=LastName    ${lastname}
    Input Text    id=Email    ${email}
    Input Text    id=Password    ${pass}
    Input Text    id=ConfirmPassword    ${confirm_pass}
    Click Button    id=register-button

Login Details
    [Arguments]    ${email}    ${pass}
    Input Text    id=Email    ${email}
    Input Text    id=Password    ${pass}
    Click Button    xpath=//input[@value='Log in']

Sheet2 Data
    [Arguments]    ${search}
    Input Text    id=small-searchterms    ${search}
