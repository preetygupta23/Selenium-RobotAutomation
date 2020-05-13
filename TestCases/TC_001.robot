*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource1.robot
Documentation    This is on testing world site.

*** Variables ***

*** Test Cases ***
TC_001 Browser Strat and Close
    [Tags]    Smoke    Sanity
    [Documentation]    This is to open and fill details
    #[Timeout]    5 secs
    Start Browser    http://www.thetestingworld.com/testings    Chrome
    #set selenium speed    2seconds
TC_001 User Form
    [Tags]    Sanity
    Enter User name    Preety Gupta    preetygupta23@gmail.com
    select radio button    add_type    office
    #select from list by index    name:sex    2
    #select from list by value    name:sex    1
    select from list by label    name:sex    Female
    Click on Checkbox
    Click On Link

    #input text    id:email    preetygupta23@gmail.com
    #input text    id:pass    sweet@2311
    #click button    xpath://input[@type="submit"]

*** Keywords ***
Enter User name
    [Arguments]    ${Username}    ${email}
    input text    name:fld_username    ${Username}
    input text    xpath://input[@name="fld_email"]    ${email}


Click On Link
    scroll element into view  xpath://a[text()='Read Detail']
    click link    xpath://a[text()='Read Detail']

Click on Checkbox
    select checkbox    name:terms







