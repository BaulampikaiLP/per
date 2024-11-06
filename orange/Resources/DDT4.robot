*** Settings ***
Library           OperatingSystem
Library           Process
Library           SeleniumLibrary
Library           ../Resources/demo1.py

*** Variables ***
${url}            https://demowebshop.tricentis.com/
${excel_path}     C://Users//baula//PycharmProjects//orange//Resources//login_Book1.xlsx

*** Test Cases ***
TC_01 Registration and Login Automation
    demo1.perform_registration_and_login    ${url}    ${excel_path}
