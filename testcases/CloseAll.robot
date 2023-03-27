*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
How to open brower
    [DOCUMENTATION]  Add your chrome driver in your environment varibles
    OPEN BROWSER   https://demowebshop.tricentis.com       chrome
    maximize browser window

    OPEN BROWSER   https://demowebshop.tricentis.com       chrome
    maximize browser window

    close all browsers