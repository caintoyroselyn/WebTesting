*** Settings ***
Library  SeleniumLibrary
Library  JSONLibrary
Resource  ../resources/TestData.json




*** Keywords ***
Get Test Data from JSON
    [Arguments]    ${location}
    ${json_obj}=    load json from file    resources/TestData.json
    ${variablename}=    get value from json  ${json_obj}   ${location}
