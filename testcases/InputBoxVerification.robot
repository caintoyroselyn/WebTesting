*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Test Cases ***
How to open brower
    [DOCUMENTATION]  Add your chrome driver in your environment varibles
    OPEN BROWSER   https://www.nopcommerce.com/en       chrome



How to click login button
     maximize browser window
     click element  ${loginbtn}

How to input data and verify input element
    [documentation]  Verify if element is visible/enabled

    wait until page contains element   ${login}
    click link   ${login}
    wait until page contains element    ${username}
    element should be visible    ${username}
    element should be enabled    ${username}
    input text      ${username}     admin
    input password  ${password}     admin
    element should be visible    ${password}
    element should be enabled    ${password}

How to Clear input data
    [documentation]  verify if input box can be cleared
    clear element text      ${username}
    sleep  5
    clear element text  ${password}
    sleep  5

Validation for Text Box/Input Box - Verify Title of the page
    [Documentation]  Visibility, Enabled, Provide Value, Clearing Value, Verify Title of the page
    title should be   Login - nopCommerce


