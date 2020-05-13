*** Settings ***
Resource    ../Resources/Resource2.robot

*** Variables ***



*** Test Cases ***
Test Case in BDD format
    Given Start Browser Window    http://www.thetestingworld.com/testings    Chrome
    When Create Folder at runtime
    then close browser window