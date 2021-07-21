*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open Session
    Open Browser                         about:blank                        ${config.browser}
    Maximize Browser Window
    Go To                                ${config.url} 
    Set Selenium Timeout                 ${config.timeout}

Close Session  
    Capture Page Screenshot
    Close Browser

    