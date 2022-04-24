*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Variables ***
${CLIQUE_SIMPLES}            id=io.qaninja.android.twp:id/short_click
${CLIQUE_LONGO}              id=io.qaninja.android.twp:id/long_click


*** Test Cases ***

Deve Realizar um Clique Simples
    [Tags]    short_click
    Go To Short Click Page
    Click Element                    ${CLIQUE_SIMPLES}
    Wait Until Page Contains         Isso é um clique simples

Deve Realizar um Clique Longo
    [Tags]    long_press
    Go To Long Click Page
    Long Press                       ${CLIQUE_LONGO}    1000    # Duration in milliseconds
    Wait Until Page Contains         CLIQUE LONGO OK  