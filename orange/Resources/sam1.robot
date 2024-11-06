*** Settings ***
Library    AutoItLibrary
Library    DateTime
Library    Process

*** Variables ***
${EXCEL_PATH}       "C:\\Program Files\\Microsoft Office\\root\\Office16\\EXCEL.EXE"

*** Test Cases ***
Open Excel And Go To Sheets
    Run Microsoft Excel
    Sleep    3

*** Keywords ***
Run Microsoft Excel
    Run Process       ${EXCEL_PATH}
