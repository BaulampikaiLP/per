*** Settings ***
Library    AutoItLibrary
Library    DateTime
Library    Process

*** Variables ***
${WPS_EXCEL_PATH}    C:\\Users\\baula\\AppData\\Local\\Kingsoft\\WPS Office\\ksolaunch.exe

*** Test Cases ***
Open WPS Excel And Go To Sheets
    [Documentation]    Opens WPS Office and navigates to the Sheets section.
    Run WPS Office
    Excel Sheets
    Add Details
    Copy Data
    Open Word
    Save File

*** Keywords ***
Run WPS Office
    [Documentation]    Runs WPS Office executable with arguments
    Run        ${WPS_EXCEL_PATH}

Excel Sheets
    [Documentation]    Clicks on the Sheets option in WPS Office
    WinWaitActive    WPS Office  # Wait for WPS Office to be active
    Sleep    2
   # MouseClick    left    95    479
    Send    ^n  # Opens new spreadsheet
    Sleep    1s

    MouseClick    left    132    313
    Sleep    1
    MouseClick    left    382    236
    Sleep    1
    
    MouseClick    left    118    242
    Sleep    1
    
Add Details
    Send    S.No
    Sleep    1
    Send    {RIGHT}
    Sleep    0.5
    Send    Name
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    Position
    Sleep    0.5
    Send    {ENTER}
    Sleep    1s
    
    MouseClick     left    108    262
    Send    1
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    Sundar
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    TL
    Sleep    1s
    
    MouseClick    left    127    281
    Send    2
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    Harshini
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    SQA  
    Sleep    1s
    
    MouseClick    left    128    299
    Send    3  
    Sleep    0.5
    Send    {RIGHT}  
    Sleep    0.5
    Send    Reshma Banu  
    Sleep    0.5
    Send    {RIGHT}  
    Sleep    0.5
    Send    SQA  
    Sleep    1s 
    
    MouseClick    left    122    316
    Send    4 
    Sleep    0.5
    Send    {RIGHT}  
    Sleep    0.5
    Send    Senthil  
    Sleep    0.5
    Send    {RIGHT}  
    Sleep    0.5
    Send    QA 
    Sleep    1s 
    
    MouseClick    left    131    342
    Send    5
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    Baulampikai
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    QA
    Sleep    1s 
    
    MouseClick    left    130    357
    Send    6
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    Praveen
    Sleep    0.5
    Send    {RIGHT}
    Sleep    0.5
    Send    QA
    Sleep    1s
    
Copy Data
    MouseClickDrag     left    126    242    274    360
    Sleep    2s
    Send    ^c
    Sleep    1s

Open Word
    MouseClick    left    117    42
    Sleep    2s
    MouseClick    left    94    347
    Sleep    2s
    MouseClick    left    230    149
    Sleep    2s
    MouseClick    left    494    322
    Sleep    2s
    Send    ^v
    Sleep    5s
    Send    ^s
    Sleep    1s

Save File
    ${current_time} =    Get Current Date    result_format=%Y%m%d_%H%M%S
    ${file_name} =    Set Variable    D:\\Team_Members_${current_time}.docx
    Send    ^s
    Sleep    1s
    Send    ${file_name}
    Sleep    1s
    Send    {ENTER}
    Sleep    1s


