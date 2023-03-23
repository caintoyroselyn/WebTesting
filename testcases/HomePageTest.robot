*** Settings ***
Library  SeleniumLibrary
Library  JSONLibrary
Resource  ../resources/HomePageElements.robot



*** Test Cases ***
Verify Home Page
    open browser   ${URL}  ${driver}
    maximize browser window
    click button    ${typeofinsurancebtn}
    click element  ${businessbutton}









