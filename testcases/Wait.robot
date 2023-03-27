*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Test Cases ***
How to open brower
    [DOCUMENTATION]  Add your chrome driver in your environment varibles
    OPEN BROWSER   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm       chrome

How to use wait statement/sleep/set selenium speed/ selenium timeout
    wait until page contains   Selenium - Automation Practice Form
    #it will wait until page contins the specific element. Default time is 5sec
    #if you want to wait for specific time like 10 sec you need to use set set selenium timeout

    set selenium speed  3 seconds   #[Documentation]  Execute sleep every statement

    set selenium implicit wait  3 seconds   #it will not finish the 3 seconds, once it finds the element execution will continue

    execute javascript  window.scrollTo(0,300)
    sleep  5    #sleep it will wait for 5 sec and is appliccable only in 1 statement
    select from list by index  ${continents}    1
    ${list}=    get list items     ${continents}
    should contain   ${list}    Europe
    select from list by index  ${selcommandlist}   1
    ${sellist}=    get list items     ${selcommandlist}
    should contain   ${sellist}    Browser Commands
    unselect from list by index  ${selcommandlist}   1



