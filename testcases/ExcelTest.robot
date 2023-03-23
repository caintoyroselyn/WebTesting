*** Settings ***
Library  ExcelLibrary
Library  SeleniumLibrary
Resource  ../resources/data.xlsx

*** Test Cases ***
Check created excel doc
   ${username}       Read Excel  ${CURDIR}${/}../resources/data.xlsx        Sheet1    2   1
   log to console   ${username}




*** Keywords ***
Read Excel
    [Arguments]  ${filepath}        ${sheetname}    ${rownum}   ${colnum}
    open excel document     ${filepath}          1
    get sheet  ${sheetname}
    ${data}     read excel cell     ${rownum}       ${colnum}
    [Return]        ${data}
    close current excel document

