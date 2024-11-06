*** Settings ***
Library    AutoItLibrary
Library    DateTime
Library    Process

*** Variables ***
${WPS_WORD_PATH}    C:\\Users\\baula\\AppData\\Local\\Kingsoft\\WPS Office\\ksolaunch.exe

*** Test Cases ***
Word To Excel
    Run WPS Office
    Open Word
    Add Details
    Copy Data
    Open Excel
    Save Excel

*** Keywords ***
Run WPS Office
    Run        ${WPS_WORD_PATH}

Open Word
    WinWaitActive    WPS Office
    Sleep    2
    Send    ^n
    Sleep    1s
    
    MouseClick    left    157    204
    Sleep    2s
    MouseClick    left    370    250
    Sleep    2s
    MouseClick    left    514    304
    Sleep    2s
    MouseClick    left    590    56
    Sleep    3s
    MouseClick    left    437    106
    Sleep    3s
    MouseClickDrag     left    433    180    472    302
    Sleep    5s
    
Add Details
    MouseClick    left    506    276    
    Sleep    2s
    Send    SNo
    Sleep    1s
    Send    {TAB}
    Sleep    1
    Send    Name
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    Position
    Sleep    1
    Send    {TAB}
    Sleep    1
    
    Send    1
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    Sundar
    Sleep    1
    Send    {TAB}
    Sleep    1    
    Send    TL
    Sleep    1
    Send    {TAB}
    Sleep    1

    Send    2
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    Harshini
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    SQA
    Sleep    1
    Send    {TAB}
    Sleep    1

    Send    3
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    Reshma
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    SQA
    Sleep    1
    Send    {TAB}
    Sleep    1

    Send    4
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    Senthil
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    QA
    Sleep    1
    Send    {TAB}
    Sleep    1

    Send    5
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    Baulampikai
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    QA
    Sleep    1
    Send    {TAB}
    Sleep    1

    Send    6
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    Praveen
    Sleep    1
    Send    {TAB}
    Sleep    1
    Send    QA
    Sleep    1

Copy Data
    MouseClick     left    450    251
    Sleep    2s
    Send    ^c
    Sleep    2s

Open Excel
    MouseClick     left    132    26
    Sleep    2s
    MouseClick     left    85    450
    Sleep    2s
    MouseClick     left   228    133
    Sleep    2s
    MouseClick     left   111    224
    Sleep    1
    Send    ^v
    Sleep    2s
    Send    ^s
    Sleep    1s

Save Excel
    ${current_time} =    Get Current Date    result_format=%Y%m%d_%H%M%S
    ${file_name} =    Set Variable    D:\\Team_Members_${current_time}.xlsx
    Send    ^s
    Sleep    1s
    Send    ${file_name}
    Sleep    1s
    Send    {ENTER}
    Sleep    1s
