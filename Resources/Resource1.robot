*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Start Browser
    [Documentation]    This is to open a browser
    [Arguments]    ${UserURL}    ${InputBrowser}
    open browser    ${UserURL}    ${InputBrowser}
    maximize browser window
    ${Title}=    get title
    [Return]    ${Title}