*** Settings ***
Library    SeleniumLibrary
library    ../ExternalKeywords/UserKeywords.py
*** Variables ***

*** Keywords ***
Start Browser Window
    [Documentation]    This is to open a browser
    [Arguments]    ${UserURL}    ${InputBrowser}
    open browser    ${UserURL}    ${InputBrowser}
    maximize browser window

close browser window
    ${Title}=    get title
    log    ${Title}
    CLOSE BROWSER

Create Folder at runtime
   create_folder