*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/Preety/PycharmProjects/RobotAutomation/Resources/Resource2.robot
Documentation    This is on firefox.
Library    SeleniumLibrary
Resource    ../Resources/Resource2.robot

*** Test Cases ***
TC_002 Facebook login
    Create Folder at runtime
    [Setup]    Start Browser Window    http://www.facebook.com    Firefox
    [Teardown]    close browser window
    INPUT TEXT    name:email    preetygupta23@gmail.com
    input text    name:pass    sweet@2311
    ${PageTitle}=    get title
    log    ${PageTitle}
    ${Speed}=    get selenium speed
    log    ${Speed}

