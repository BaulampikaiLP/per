*** Settings ***
Library    AutoItLibrary
Library    DateTime

*** Variables ***
${EXCEL_PATH}       C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\Excel.exe
${WORD_PATH}        C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\Winword.exe

*** Test Cases ***
Open Excel And Go To Sheets
    Run Microsoft Excel
    Sleep    3
    Enter Data In Excel
    Copy Data From Excel
    Run Microsoft Word
    Paste Data In Word
    Save File In D Drive
*** Keywords ***
Run Microsoft Excel
    Run    ${EXCEL_PATH}

Enter Data In Excel
    WinWaitActive    Excel
    Sleep    2
    Send    ^n
    Sleep    1s

    Send    S.No
    Sleep    2s
    Send    {TAB}
    Send    Name
    Sleep    2
    Send    {TAB}
    Send    Position
    Send    {ENTER}

    Send    1{TAB}Sundar{TAB}TL{ENTER}
    Sleep    1
    Send    2{TAB}Harshini{TAB}SQA{ENTER}
    Sleep    1
    Send    3{TAB}Reshma {TAB}SQA{ENTER}
    Sleep    1
    Send    4{TAB}Senthil{TAB}QA{ENTER}
    Sleep    1
    Send    5{TAB}Baulampikai{TAB}QA{ENTER}
    Sleep    1s
    Send    6{TAB}Praveen{TAB}QA{ENTER}
    Sleep    1

Copy Data From Excel
    MouseClickDrag    left    50    200    300    400
    Sleep    1s
    Send    ^c
    Sleep    1s

Run Microsoft Word
    Run    ${WORD_PATH}
    WinWaitActive    Word
    Sleep    2
    Send    ^n
    Sleep    2s

Paste Data In Word
    Send    ^v
    Sleep    2s

Save File In D Drive
    ${current_time} =    Get Current Date    result_format=%Y%m%d_%H%M%S
    ${filename} =    Set Variable    D:\\Team_Members_${current_time}.docx
    Send    ^s
    Sleep    1s
    Send    ${filename}
    Sleep    1s
    Send    {ENTER}
    Sleep    1s

