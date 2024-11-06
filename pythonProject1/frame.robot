*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.globalsqa.com/demo-site/frames-and-windows/#iFrame
${browser}    chrome

*** Test Cases ***
Test Frame Interaction
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s  # Wait for the page to load

    # Select the iframe by its name or index
    Select Frame    xpath=//*[@id='globalSqa']  # Adjust this if the iframe name differs

    # Now try to interact with the element inside the iframe
    Click Element    xpath=//div[@id='portfolio_items']/div[1]/a/div/div/div[1]/img

    # Optional: Unselect the frame to return to the main page
    Unselect Frame

    Sleep    3s  # Sleep to observe the behavior
    Close Browser
