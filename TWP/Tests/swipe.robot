*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Variables ***
${AVENGERS_BTN_REMOVE}               id=io.qaninja.android.twp:id/btnRemove

*** Test Cases ***

Deve Remover o Primeiro Vingador
    Go To Avengers LIST Page
    Swipe By Percent                 90    18    50    18        # percent XYstart / XYend
    Wait Until Element Is Visible    ${AVENGERS_BTN_REMOVE}
    Click Element                    ${AVENGERS_BTN_REMOVE}
    Wait Until Page Contains         text=Item removido! (posição = 0)

    # Swipe    178    375    931    375
    # Swipe    968    370    255    370