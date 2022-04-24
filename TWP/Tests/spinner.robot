*** Settings ***

Resource               ../Resources/base.robot
Suite Setup            Open Session
Suite Teardown         Close Session


*** Variables ***


*** Test Cases ***

Deve selecionar o Perfil QA no Formulário de CADASTRO
    Go To SignUp Page
    Choice Job on SignUp Form         QA
    Sleep    3  #temporary - performance issues for the next test

Deve selecionar o Perfil DevOps no Formulário de CADASTRO
    Go To SignUp Page
    Choice Job on SignUp Form         DevOps
