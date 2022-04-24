*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Test Cases ***

Deve logar com sucesso
    Open NAV
    Open Page Item                 FORMS         FORMS
    Open Page Item                 LOGIN         Fala QA, vamos testar o login?
    APP Login                      eu@papito.io  qaninja
