*** Settings ***
Documentation    Utilizando estrutura de repetição FOR

*** Test Cases ***
Contador
    Contar de 0 a 10

Contar com argumento
    Contador número máximo    16

Lista
    @{nomes}    Create List    Rafaela    Rafael    Yoshi
    Lista com argumento   @{nomes}
        
*** Keywords ***
Contar de 0 a 10
    FOR    ${numeros}    IN RANGE    0    11
        Log To Console    ${numeros}
    END    

Contador número máximo
    [Arguments]    ${NumMax}
    FOR    ${count}    IN RANGE       0    ${NumMax}
        Log To Console    ${count} 
    END

Lista com argumento
    [Arguments]    @{nomes}
    FOR    ${countlist}    IN    @{nomes}
        Log To Console    ${countlist}
    END


    

