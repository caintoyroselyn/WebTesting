*** Settings ***
Library  SeleniumLibrary
Library  JSONLibrary
Resource  ../resources/HomePageResource.robot
Resource  ../resources/HomePageElements.robot



*** Test Cases ***
Verify Home Page
    open browser   ${URL}  ${driver}
    maximize browser window
    click button    ${typeofinsurance}
    click element  ${businessbutton}








