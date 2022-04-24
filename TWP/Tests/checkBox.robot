*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Variables ***

*** Test Cases ***

Deve Selecionar a Opção Python
    Go to Checkboxes Page
    Select Radio Button Option        ${CHECKBOX_ ... }

