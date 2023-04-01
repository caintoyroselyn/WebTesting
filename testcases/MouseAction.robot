*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Variables ***
${URL}=     https://swisnl.github.io/jQuery-contextMenu/demo.html
${browser}=     chrome


*** Test Cases ***
Mouse Action - Right Click
    open browser    ${URL}  ${browser}
    maximize browser window
    open context menu   ${opencontexmenu}
    sleep  3 seconds

Mouse Action - Double Click
    go to    https://testautomationpractice.blogspot.com
    double click element    ${doubleclick}
    sleep  3 seconds


Mouse Action - Drag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

    sleep  3 seconds
    select frame  //iframe[@id="google_esf"]
    sleep  3 seconds
    unselect frame
    sleep  3 seconds

    drag and drop    ${dragelement}   ${dropelement}
    sleep  3 seconds


