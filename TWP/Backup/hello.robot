*** Settings ***
Library            hello.py


*** Variables ***



*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}       Hello Robot     Pedro Victor
    Should Be Equal    ${Resultado}    Olá, Pedro Victor!
    Log To Console     ${resultado}

*** Keywords ***