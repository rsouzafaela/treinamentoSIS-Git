*** Settings ***
Documentation    Configurações de inicialização e finalização dos testes

*** Keywords ***
Open Session
    Open Browser               about:blank                        ${config.browser.name}    
    Maximize Browser Window
    Go To                      ${config.browser.url}
    Set Selenium Timeout       ${config.browser.implicit_wait}

Close Session
    Capture Page Screenshot
    Close Browser
