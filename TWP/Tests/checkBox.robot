*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Variables ***

${CHECKBOX_ROBOTFRAMEWORK}            xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
${CHECKBOX_PYTHON}                    xpath=//android.widget.CheckBox[contains(@text, 'Python')]


*** Test Cases ***

Deve Selecionar a Opção Python
    @{Lista}                      Set Variable
    ...                           ${CHECKBOX_ROBOTFRAMEWORK}
    ...                           ${CHECKBOX_PYTHON}
    Go to Checkboxes Page
    Select Checkbox Option        @{LISTA}

