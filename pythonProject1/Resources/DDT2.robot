*** Settings ***
Library    OperatingSystem
Library    Process
Resource    ../Resources/excel3.robot

*** Test Cases ***
LoginPage_TC_1
    [Documentation]    verify the user is not allowed to login with invalid credentials
    Login With Invalid Credentials

LoginPage_TC_2
    [Documentation]    verify the user is not allowed to login with invalid username
    Login With Invalid Username And Valid Password

LoginPage_TC_3
    [Documentation]    verify the user is not allowed to login with Invalid Password
    Login With Valid Username And Invalid Password

LoginPage_TC_4
    [Documentation]    verify the user is able to login with valid credentials
    Login With Valid Credentials
