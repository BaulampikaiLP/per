*** Settings ***
Library    AutoItLibrary
Library    DateTime
Library    Process

*** Variables ***
${WORD_PATH}    C:\\Program Files\\Microsoft Office\\root\\Office16\\WINWORD.EXE

*** Test Cases ***
Word To Excel
    Run word
    
*** Keywords ***
Run word
    Run    ${WORD_PATH}

Open Word
    WinWaitActive    WINWORD
    Sleep    2
    MouseClick    left    1461    66
    Sleep    1
    MouseClick    left    274    216
    Sleep    1