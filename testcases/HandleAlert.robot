*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot

*** Variables ***
${URL}=     https://testautomationpractice.blogspot.com/
${browser}=     chrome

*** Test Cases ***
How to handle alerts
    open browser    ${URL}      ${browser}
    maximize browser window

    click button  ${alertbtn}
    sleep  5 seconds
    handle alert  accept    # will click the OK button in the alert box
    sleep  5 seconds
    click button  ${alertbtn}
    handle alert  dismiss   # will click the Cancel button in the alert box
    sleep  5 seconds
    click button  ${alertbtn}
    alert should be present     Press a button!     #verify alert
    close browser