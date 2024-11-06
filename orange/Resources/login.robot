*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Excel}    C:/Users/baula/PycharmProjects/orange/Resources/login_book.xlsx
${Login_sheet}    Sheet1

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Sleep    3s
    Input Text    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    ${username}
    Input Text    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    ${password}
    Click Button    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    3s

Add details
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    ${username}    Read Data      ${Excel}    Sheet1    2    1
    ${password}    Read Data      ${Excel}    Sheet1    2    2
    Login    ${username}    ${password}
    Sleep    2s
    Click Element    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a
    Sleep    2s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button
    Sleep    2s
    #Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]    10
    #Click Button     //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i
    #Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i
    #Select From List By Label    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i    Admin
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i
    Wait Until Element Is Visible    //*[contains(text(), 'Admin')]    10s
    Click Element    //*[contains(text(), 'Admin')]

    #Select From List By Label    //label[contains(text(), 'Admin')]    Admin
    #Sleep    2s
    ${employee_name}    Read Data    ${Excel}    Sheet1    2    3
    Sleep    2s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div/div[2]/i
    Wait Until Element Is Visible    //*[contains(text(), 'Enabled')]    10s
    Click Element    //*[contains(text(), 'Enabled')]
    Sleep    2s
    ${N_username}    Read Data    ${Excel}    Sheet1    2    4
    ${N_password}    Read Data    ${Excel}    Sheet1    2    5
    ${confirm_password}    Read Data    ${Excel}    Sheet1    2    6
    Add user    ${employee_name}    ${N_username}    ${N_password}    ${confirm_password}
    Sleep    2s
    ${N_username}    Read Data    ${Excel}    Sheet1    2    4
    Sleep    3s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i
    Wait Until Element Is Visible    //*[contains(text(), 'Admin')]    10s
    Click Element    //*[contains(text(), 'Admin')]
    Sleep    3s
    ${employee_name}    Read Data    ${Excel}    Sheet1    2    3
    Sleep    3s
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div/div[2]/i
    Wait Until Element Is Visible    //*[contains(text(), 'Enabled')]    10s
    Click Element    //*[contains(text(), 'Enabled')]    Sleep    3s
    Click Button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
    Sleep    3s
    Close Browser
    
Read Data
    [Arguments]    ${Excel}    ${Login_sheet}    ${row}    ${col}
    Open Excel Document      ${Excel}    ${Login_sheet}
    ${cell_value}    Read Excel Cell    ${row}    ${col}
    Close Current Excel Document
    RETURN   ${cell_value}

Add user
    [Arguments]    ${employee_name}    ${N_username}    ${N_password}    ${confirm_password} 
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    ${employee_name}
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input    ${N_username}
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input    ${N_password}
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input     ${confirm_password}
    Click Button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]
    
Login With Valid Credentials
    [Documentation]    Test logging in with valid credentials.
    Open Browser    ${URL}    chrome
    ${username}    Read Data      ${Excel}    Sheet1    2    1
    ${password}    Read Data      ${Excel}    Sheet1    2    2
    Login    ${username}    ${password}
    Close Browser

Login With Invalid Username And Valid Password
    [Documentation]    Test logging in with an invalid user.
    Open Browser    ${URL}    chrome
    ${username}    Read Data      ${Excel}    Sheet1    3   1
    ${password}    Read Data      ${Excel}    Sheet1    3   2
    Login    ${username}    ${password}
    Close Browser

Login With Valid Username And Invalid Password
    [Documentation]    Test logging in with a wrong password.
    Open Browser    ${URL}    chrome
    ${username}    Read Data     ${Excel}    Sheet1    4   1
    ${password}    Read Data     ${Excel}    Sheet1    4   2
    Login    ${username}    ${password}
    Close Browser

Login With Invalid Credentials
    [Documentation]    Test logging in with invalid credentials.
    Open Browser    ${URL}    chrome
    ${username}    Read Data       ${Excel}    Sheet1    5   1
    ${password}    Read Data       ${Excel}    Sheet1    5   2
    Login    ${username}    ${password}
    Close Browser
