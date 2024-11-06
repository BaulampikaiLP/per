*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome    
${url}    https://www.globalsqa.com/demo-site/select-dropdown-menu/

*** Test Cases ***
Dropdown
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select From List By Label    xpath://*[@id="post-2646"]/div[2]/div/div/div/p/select    India
    Sleep    3s
    Select From List By Index    xpath://*[@id="post-2646"]/div[2]/div/div/div/p/select    9
    Sleep    3s
    Select From List By Value    xpath://*[@id=-"post-2646"]/div[2]/div/div/div/p/select    AUS