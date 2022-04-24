*** Settings ***

Library                AppiumLibrary

*** Variables ***
${BUT_NAV}                         xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${FRAME_NAV_VIEW}                  id=io.qaninja.android.twp:id/navView
${TOOLBAR_TITLE}                   id=io.qaninja.android.twp:id/toolbarTitle
${LOGIN_TEXTFIELD_EMAIL}           id=io.qaninja.android.twp:id/etEmail
${LOGIN_TEXTFIELD_SENHA}           id=io.qaninja.android.twp:id/etPassword
${LOGIN_BTN_ENTRAR}                id=io.qaninja.android.twp:id/btnSubmit
${CHECKBOX_RVCONTAINER}            id=io.qaninja.android.twp:id/rvContainer

*** Keywords ***

Open Page Item
    [Arguments]                    ${Page_Item}        ${Result}
    Click Text                     ${Page_Item}
    Wait Until Page Contains       ${Result}

APP Login
    [Arguments]                    ${Email}            ${Senha}
    Input Text                     ${LOGIN_TEXTFIELD_EMAIL}     ${Email}
    Input Text                     ${LOGIN_TEXTFIELD_SENHA}     ${Senha}
    Click Element                  ${LOGIN_BTN_ENTRAR}
    Wait Until Page Contains       Show! Suas credenciais são validas.

Get Started
    Wait Until Page Contains         COMEÇAR                
    Click Text                       COMEÇAR

Open NAV
    Wait Until Element Is Visible    ${BUT_NAV}             
    Click Element                    ${BUT_NAV}

Select Nav Item
    [Arguments]                      ${Nav_Item}
    Wait Until Element Is Visible    ${FRAME_NAV_VIEW}      
    Click Text                       ${Nav_Item}

Verify Toolbar Title
    [Arguments]                      ${Title}
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}       
    Element Text Should Be           ${TOOLBAR_TITLE}       ${Title}

Select Radio Button page
    Click Text                       BOTÕES DE RADIO
    Wait Until Page Contains         Escolha sua linguagem preferida

Select Checkbox option
    Click Text                       CHECKBOX
    Wait Until Page Contains         Marque as techs que usam Appium

Go to Radio Buttons Page
    Open NAV
    Select Nav Item                  INPUTS
    Verify Toolbar Title             INPUTS
    Select Radio Button page

Go to Checkboxes Page
    Open NAV
    Select Nav Item                  INPUTS
    Verify Toolbar Title             INPUTS
    Select Checkbox option

Select Radio Button Option
    [Arguments]                       ${RadioBTN_Option}
    Click Element                     ${RadioBTN_Option}  
    Wait Until Element Is Visible     ${RadioBTN_Option}             
    Element Attribute Should Match    ${RadioBTN_Option}    checked    true

Select Checkbox Option
    [Arguments]                           @{CheckBox_Option}
    FOR     ${CheckBox_Option}     IN     @{CheckBox_Option}
        Click Element                     ${CheckBox_Option}
        # Wait Until Element Is Visible     ${CheckBox_Option}
        Wait Until Element Is Visible     ${CHECKBOX_RVCONTAINER}  #Recycler View
        Element Attribute Should Match    ${CheckBox_Option}    checked    true
    END