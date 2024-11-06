*** Settings ***
Library    AutoItLibrary
Library    DateTime
Library    Process

*** Variables ***
${Excel_Path}    C:\\Program Files\\Microsoft Office\\root\\Office16\\EXCEL.EXE

*** Test Cases ***
Default_ETW
    Excel Sheet
    Open Excel
    Add Details

*** Keywords ***
Excel Sheet
    Log    Running Excel: ${Excel_Path}
    Run    ${Excel_Path}

Open Excel
    WinWaitActive    Excel  
    Sleep    2
    Send    ^n  # Opens new spreadsheet
    Sleep    1s
    
    Mouseclick    left    323    214
    Sleep    1
    Mouseclick    left    122    298
    Sleep    1

Add details
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