*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Variables ***
${URL}=     https://demo.automationtesting.in/Windows.html
${browser}=     chrome


*** Test Cases ***
Browser Related Keyword Testing
    open browser    ${URL}      ${browser}
    maximize browser window
    set selenium speed  2 seconds
    click button  ${nextwindowbtn}
    switch window  title=Selenium
    click link  ${downloads}
    go to   ${URL}
    go back



