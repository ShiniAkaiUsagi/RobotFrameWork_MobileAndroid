*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Test Cases ***

Deve abrir a tela principal
    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version

*** Keywords ***

Open Session
    Set Appium Timeout          8
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=Emulator
    ...                         app=${EXECDIR}/TWP/app/twp.apk