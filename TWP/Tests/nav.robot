*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session

*** Test Cases ***

Deve acessar a tela Dialogs
    Open NAV
    Select Nav Item                  DIALOGS
    Verify Toolbar Title             DIALOGS

Deve acessar a tela Formulários
    Open NAV
    Select Nav Item                  FORMS
    Verify Toolbar Title             FORMS

Deve acessar a tela Vingadores
    Open NAV
    Select Nav Item                  AVENGERS
    Verify Toolbar Title             AVENGERS

Deve acessar a tela Radio Buttons
    Open NAV
    Select Nav Item                  INPUTS
    Verify Toolbar Title             INPUTS
    Select Radio Button page
