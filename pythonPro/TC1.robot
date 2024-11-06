*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://www.saucedemo.com/
${BROWSER}     chrome

*** Test Cases ***
Valid Login Test
    [Documentation]    Test valid login to Swag Labs
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=username    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Page Should Contain    Products
    [Teardown]    Close Browser

Add Item To Cart Test
    [Documentation]    Test adding an item to the cart
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=username    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Click Link    xpath=//div[text()='Sauce Labs Backpack']
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Button    id=shopping_cart_container
    Page Should Contain    Sauce Labs Backpack
    [Teardown]    Close Browser
