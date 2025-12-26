*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify Adding or removing elements
    Open Browser    https://the-internet.herokuapp.com/    chrome    options=add_argument("--headless")
    Wait Until Element Is Visible    locator=xpath://a[text()='Add/Remove Elements']
    Click Element    locator=//a[text()='Add/Remove Elements']
    # Wait Until Location Is    expected=add_remove_elements -- error

    Wait Until Location Is    expected=https://the-internet.herokuapp.com/add_remove_elements/

    
    Page Should Contain    Add/Remove Elements
    Wait Until Page Contains Element      xpath://h3[text()='Add/Remove Elements']

#verify add element
    Click Element    locator=xpath://button[text()='Add Element']
    
#verify whether element with text delete button is created
    Page Should Contain Button    locator=//button[text()='Delete']

##add more tests - if you click 3 times then deleting the third one.

*** Keywords ***
