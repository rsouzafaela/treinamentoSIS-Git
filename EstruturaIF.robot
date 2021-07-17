*** Settings ***
Documentation     Usando o IF
Library           XML

*** Variables ***

*** Test Cases ***
Maioridade
    Verificar a maioridade    18

Lista
    @{lista}    Create List    30    60    58    10    32
    Verificando a Lista    @{lista}

Lista2
    @{listanum}    Create List    21    22    23    24    25
    Ímpar ou par    @{listanum}

Validar o numero da lista
    @{listanum2}    Create List    1    2    3    4    5    6    7    8    9    10
    Validar um numero    @{listanum2}

*** Keywords ***
Verificar a maioridade
    [Arguments]    ${idade}
    IF    '${idade}' >= '18'
        Log To Console    Maior de idade
    ELSE
        Log To Console    Menor de idade
    END

Verificando a Lista
    ${soma}    Evaluate    20+12
    ${soma1}    Evaluate    19+13
    [Arguments]    @{lista}
    FOR    ${count}    IN    @{lista}
        IF    '${count}' >= '32'
            IF    '${count}' == '${soma}'
                Log To Console    ${count}/Este número é 32
                IF    '${count}' == '${soma1}'
                    Log To Console    ${count}/Este número é 32
                END
            ELSE
                Log To Console    ${count}/Este número não é 32
            END
            # Log To Console    ${count}/Sucesso
        END
    END
#
# '${count}' == '${soma}'
    # Log To Console    Este número realmente é 5

Ímpar ou par
    [Arguments]    @{listanum}
    FOR    ${countnum}    IN    @{listanum}
        ${resto}    Evaluate    ${countnum}%2
        IF    '${resto}' == '0'
            Log To Console    :
            Log To Console    ${countnum} é par
        ELSE
            Log To Console    :
            Log To Console    ${countnum} é ímpar
        END
    END

Validar um numero
    [Arguments]    @{listanum2}
    FOR    ${count2}    IN    @{listanum2}
        IF    "${count2}" == "5"
            Log To Console    Estou no número ${count2}
        ELSE IF    "${count2}" == "8"
            Log To Console    Estou no número ${count2}
        END
    END
