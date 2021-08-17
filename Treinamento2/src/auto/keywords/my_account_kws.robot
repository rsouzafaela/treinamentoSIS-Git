*** Settings ***
Documentation   Keyowrds relacionadas a tela de sucesso


*** Keywords ***
Então o sistema é direcionado para a tela de cadastro
    Title Should Be              ${MYACCOUNT.TITLE}           
    Element Text Should Be       ${MYACCOUNT.INFO_ACCOUNT}    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Should Be Visible    ${MYACCOUNT.MYACCOUNT}