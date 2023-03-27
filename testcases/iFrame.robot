*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Variables ***
${URL}=     https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}=     chrome


*** Test Cases ***
How to handle frames
    [Documentation]  1. Select the frame and do the action, 2 Unselect the frame and go to the next frame
    set selenium speed  2 seconds
    open browser    ${URL}     ${browser}
    maximize browser window
    select frame     ${frame1}
    click link      ${frame1link}
    unselect frame
    select frame    ${frame2}
    click link  ${frame2link}
    unselect frame
    select frame  ${frame3}
    click link  ${frame3link}
    close browser

