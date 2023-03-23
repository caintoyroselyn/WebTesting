*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Test Cases ***
How to open brower
    [DOCUMENTATION]  Add your chrome driver in your environment varibles
    OPEN BROWSER   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm       chrome

How to verify checklist/list
    execute javascript  window.scrollTo(0,300)
    sleep  5
    select from list by index  ${continents}    1
    ${list}=    get list items     ${continents}
    should contain   ${list}    Europe
    select from list by index  ${selcommandlist}   1
    ${sellist}=    get list items     ${selcommandlist}
    should contain   ${sellist}    Browser Commands
    unselect from list by index  ${selcommandlist}   1

How to use sleep
    [Documentation]     it will wait for 5 sec and is appliccable only in 1 statement
    sleep 5