*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${App url}    http://localhost:8090/
${browser}    chrome

*** Keywords ***
Launching the demo app     
    Open Browser    ${App url}    ${browser}           
    Maximize Browser Window
    Delete All Cookies 
    
Closing demo app browser
    close browser