*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot


*** Variables ***
${URL}=     https://demo.automationtesting.in/Windows.html
${browser}=     chrome


*** Test Cases ***
New Tab testing
    open browser    ${URL}      ${browser}
    maximize browser window
    set selenium speed  2 seconds
    click button  ${nextwindowbtn}
    switch window  title=Selenium
    click link  ${downloads}


Multiple Browser Test

     open browser    ${URL}      ${browser}
     maximize browser window


     open browser    https://www.google.com/     ${browser}
     maximize browser window

     switch browser  2
     ${title}=      get title
     log to console     ${title}

