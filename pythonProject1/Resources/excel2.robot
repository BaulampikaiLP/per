*** Settings ***
Library    SeleniumLibrary
Library    RPA.Excel.Files
*** Variables ***
${url}    https://www.saucedemo.com/v1/
${browser}    chrome
${username}    id=user-name
${password}    id=password
${login_button}    xpath://*[@id="login-button"]
${file_loc}    C:/Users/baula/PycharmProjects/pythonProject1/Resources/login_data.xlsx
${Login_sheet}    Sheet1


*** Keywords ***
Open my Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Read Cell
    [Arguments]    ${file_loc}    ${Login_sheet}    ${row}    ${col}
    Open Workbook    ${file_loc}    sheet=${Login_sheet}
    ${cell_value}    Read Cell     ${row}    ${col}
    Close Workbook
    RETURN   ${cell_value}

Login with valid credentials
    ${login_data}    Read Cell    ${file_loc}    ${Login_sheet}    2    2
    #${login_data}    Read Row    ${row}    header=${TRUE}    sheet=${Login_sheet}
    Input Text    ${username}    ${Login_data}[0]
    Input Text    ${password}    ${Login_data}[1]
    Click Button    ${login_button}

Login with invalid username and valid password
    ${login_data}    Read Cell    ${file_loc}    ${Login_sheet}    3    2
    Input Text    ${username}    ${Login_data}[0]
    Input Text    ${password}    ${Login_data}[1]
    Click Button    ${login_button}

Login with valid username and invalid password
    ${login_data}    Read Cell    ${file_loc}    ${Login_sheet}    4    2
    Input Text    ${username}    ${Login_data}[0]
    Input Text    ${password}    ${Login_data}[1]
    Click Button    ${login_button}

Login with invalid credentials
    ${login_data}    Read Cell    ${file_loc}    ${Login_sheet}    5    2
    Input Text    ${username}    ${Login_data}[0]
    Input Text    ${password}    ${Login_data}[1]
    Click Button    ${login_button}



Close my browser
    Close Browser