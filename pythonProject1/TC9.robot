*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
single & multiple browser
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window

    Open Browser    https://www.saucedemo.com/v1/    chrome
    Maximize Browser Window