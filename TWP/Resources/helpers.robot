*** Settings ***

Library                AppiumLibrary
Library                Libs/extend.py

*** Variables ***
${BUT_NAV}                         xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${FRAME_NAV_VIEW}                  id=io.qaninja.android.twp:id/navView
${TOOLBAR_TITLE}                   id=io.qaninja.android.twp:id/toolbarTitle
${LOGIN_TEXTFIELD_EMAIL}           id=io.qaninja.android.twp:id/etEmail
${LOGIN_TEXTFIELD_SENHA}           id=io.qaninja.android.twp:id/etPassword
${LOGIN_BTN_ENTRAR}                id=io.qaninja.android.twp:id/btnSubmit
${CHECKBOX_RVCONTAINER}            id=io.qaninja.android.twp:id/rvContainer
${SIGNUP_SPINNER}                  id=io.qaninja.android.twp:id/spinnerJob
${SIGNUP_LIST_OPTIONS}             class=android.widget.ListView


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

Select Checkbox page
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
    Select Checkbox page

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

Go To Short Click Page
    Open NAV
    Select Nav Item                       BOTÕES
    Verify Toolbar Title                  BOTÕES
    Click Text                            CLIQUE SIMPLES
    Wait Until Page Contains              CLIQUE SIMPLES
    
Go To Long Click Page
    Open NAV
    Select Nav Item                       BOTÕES
    Verify Toolbar Title                  BOTÕES
    Click Text                            CLIQUE LONGO
    Wait Until Page Contains              CLIQUE LONGO

Go To SignUp Page
    Open NAV
    Select Nav Item                       FORMS
    Verify Toolbar Title                  FORMS
    Click Text                            CADASTRO
    Wait Until Page Contains              Bem-vindo, crie sua conta.

Choice Job on SignUp Form
    [Arguments]    ${target}
    Click Element                    ${SIGNUP_SPINNER}
    Wait Until Element Is Visible    ${SIGNUP_LIST_OPTIONS}
    Click Text                       ${target}

Go To Avengers LIST Page
    Open NAV
    Select Nav Item                       AVENGERS
    Verify Toolbar Title                  AVENGERS
    Click Text                            LISTA
    Wait Until Page Contains              LISTA