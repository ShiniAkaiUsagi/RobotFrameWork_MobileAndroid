*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Test Cases ***

Deve abrir a tela principal
    Wait Until Page Contains    Training Wheels Protocol        5
    Wait Until Page Contains    Mobile Version

*** Keywords ***

Open Session
    Set Appium Timeout          5
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=Emulator
    ...                         app=${EXECDIR}/app/twp.apk