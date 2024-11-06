*** Settings ***
Library    AutoItLibrary
Library    DateTime
Library    Process

*** Variables ***
${WPS_EXCEL_PATH}    C:\\Users\\baula\\AppData\\Local\\Kingsoft\\WPS Office\\12.2.0.18607\\office6\\wpsoffice.exe
${WPS_ARGS}         /prometheus /fromksolaunch /from=desktop_shortcut

*** Test Cases ***
Open WPS Excel And Go To Sheets
    Run WPS Office
    Sleep    5

*** Keywords ***
Run WPS Office
    Run Process        ${WPS_EXCEL_PATH}    ${WPS_ARGS}
    Sleep    5
