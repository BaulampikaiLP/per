*** Settings ***
Library    AutoItLibrary
Library    DateTime

*** Variables ***
${WPS_EXCEL_PATH}    C://Users//baula//AppData//Roaming//Microsoft//Windows//Start Menu//Programs//wpsoffice.exe
${WPS_ARGS}         /prometheus /fromksolaunch /from=startmenu

*** Test Cases ***
Open WPS Excel And Go To Sheets
    [Documentation]    Opens WPS Office and navigates to the Sheets section.
    Run WPS Office
    Sleep    5  # Wait for WPS Office to fully load
    Click On Sheets
    Details
    Copy Data From WPS
    Click On Word
    Save File In D Drive

*** Keywords ***
Run WPS Office
    [Documentation]    Runs WPS Office executable with arguments
    Run    ${WPS_EXCEL_PATH} ${WPS_ARGS}

Click On Sheets
    [Documentation]    Clicks on the Sheets option in WPS Office
    WinWaitActive    WPS Office  # Wait for WPS Office to be active
    Sleep    2  # Small wait to ensure WPS is fully loaded
    Send    ^n  # Opens new spreadsheet
    Sleep    1s

    # Clicks on the first cell (A1)
    MouseClick    left    79    290
    Sleep    2s     # Wait for the Sheets to load
    MouseClick    left    300    230
    Sleep    2s

    MouseClick    left    89    222  # Clicks on the first cell (A1)
    Sleep    1s  # Wait to ensure focus is on A1

Details
    # Enter S.No, Name, Position in the first row
    Send    S.No
    Sleep    0.5
    Send    {RIGHT}  # Move to the next column (B1)
    Sleep    0.5
    Send    Name
    Sleep    0.5
    Send    {RIGHT}  # Move to the next column (C1)
    Sleep    0.5
    Send    Position
    Sleep    0.5
    Send    {ENTER}  # Move to the next row (A2)
    Sleep    1s

    # Enter S.No 1 in A2
    MouseClick    left    133    262
    Sleep    0.5
    Send    1
    Sleep    0.5
    Send    {RIGHT}  # Move to B2
    Sleep    0.5
    Send    Sundar  # Enter name in B2
    Sleep    0.5
    Send    {RIGHT}  # Move to C2
    Sleep    0.5
    Send    TL  # Enter position in C2
    Sleep    1s  # Add delay to ensure input is registered

    # Enter S.No 2 in A3
    MouseClick    left    70    263
    Send    2  # Enter serial number in A2
    Sleep    0.5
    Send    {RIGHT}  # Move to B2
    Sleep    0.5
    Send    Harshini  # Enter name in B2
    Sleep    0.5
    Send    {RIGHT}  # Move to C2
    Sleep    0.5
    Send    SQA  # Enter position in C2
    Sleep    1s  # Add delay to ensure input is registered

    # Enter S.No 3 in A4
    MouseClick    left    65    282
    Send    3  # Enter serial number in A2
    Sleep    0.5
    Send    {RIGHT}  # Move to B2
    Sleep    0.5
    Send    Reshma Banu  # Enter name in B2
    Sleep    0.5
    Send    {RIGHT}  # Move to C2
    Sleep    0.5
    Send    SQA  # Enter position in C2
    Sleep    1s  # Add delay to ensure input is registered

    # Enter S.No 4 in A5
    MouseClick    left    67    303
    Send    4  # Enter serial number in A2
    Sleep    0.5
    Send    {RIGHT}  # Move to B2
    Sleep    0.5
    Send    Senthil  # Enter name in B2
    Sleep    0.5
    Send    {RIGHT}  # Move to C2
    Sleep    0.5
    Send    QA  # Enter position in C2
    Sleep    1s  # Add delay to ensure input is registered

    # Enter S.No 5 in A6
    MouseClick    left    75    326
    Send    5  # Enter serial number in A2
    Sleep    0.5
    Send    {RIGHT}  # Move to B2
    Sleep    0.5
    Send    Praveen  # Enter name in B2
    Sleep    0.5
    Send    {RIGHT}  # Move to C2
    Sleep    0.5
    Send    QA  # Enter position in C2
    Sleep    1s  # Add delay to ensure input is registered

    # Enter S.No 6 in A7
    MouseClick    left    82    340
    Send    6  # Enter serial number in A2
    Sleep    0.5
    Send    {RIGHT}  # Move to B2
    Sleep    0.5
    Send    Baulampikai  # Enter name in B2
    Sleep    0.5
    Send    {RIGHT}  # Move to C2
    Sleep    0.5
    Send    QA  # Enter position in C2
    Sleep    1s  # Add delay to ensure input is registered

Copy Data From WPS
    # Select data from A1 to C7
    MouseClickDrag    left    34    218    219    346  # Drag from A1 to C7
    Sleep    1s
    Send    ^c  # Ctrl + C to copy the selected data
    Sleep    1s  # Wait for the copy operation

Click On Word
    MouseClick    left    80    16    # Click home
    Sleep    1s
    MouseClick    left    30    321    # Click doc
    Sleep    3s
    MouseClick    left    175    138    # Click blank word
    Sleep    2s
    MouseClick    left    495    275
    Sleep    2s
    Send    ^v
    Sleep    2s
    Send    ^s
    Sleep    1s

Save File In D Drive
    [Documentation]    Saves the currently open file in WPS Writer to D: with the name "Team Members" followed by date and time.
    ${current_time} =    Get Current Date    result_format=%Y%m%d_%H%M%S
    ${filename} =    Set Variable    D:\\Team_Members(10)_${current_time}.docx
    Send    ^s  # Send Ctrl + S to initiate save
    Sleep    1s  # Wait for the save dialog to open
    Send    ${filename}  # Type the path and filename
    Sleep    1s  # Wait a moment for the text to register
    Send    {ENTER}  # Press Enter to save the file
    Sleep    1s  # Wait for the save process to complete