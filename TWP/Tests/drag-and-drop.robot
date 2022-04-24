*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Variables ***
${AVENGERS_LOCATOR}            io.qaninja.android.twp:id/drag_handle     # não precisa ID, keyword customizada


*** Test Cases ***

Deve mover o Hulk o topo da lista
    Go To Avengers LIST Page
    Drag And Drop    ${AVENGERS_LOCATOR}    3    0
    Sleep    5  #temporário
    
    
    # Swipe By Percent                 90    18    50    18        # percent XYstart / XYend
    