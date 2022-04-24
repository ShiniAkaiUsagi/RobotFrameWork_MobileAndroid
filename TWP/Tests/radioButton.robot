*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Variables ***
${RADIOBTN_PYTHON}        xpath=//android.widget.RadioButton[contains(@text, 'Python')]

*** Test Cases ***

Deve Selecionar a Opção Python
    Go to Radio Buttons Page
    Select Radio Button Option        ${RADIOBTN_PYTHON}

