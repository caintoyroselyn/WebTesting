*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Test Cases ***
How to open brower
    [DOCUMENTATION]  Add your chrome driver in your environment varibles
    OPEN BROWSER   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm       chrome
    maximize browser window
Verify radio button
    select radio button  sex    Male
    select radio button  exp    5
    radio button should be set to  exp    5

Verify check box
    execute javascript  window.scrollTo(0,300)
    sleep  5
    select checkbox       ${csspmanual}



