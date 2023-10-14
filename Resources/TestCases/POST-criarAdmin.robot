*** Settings ***

Resource       ../main.robot
Test Setup    Criar secao
*** Test Cases ***

CT01.01-Validar registro de usuario
    [Tags]    regressivo
    Dado que cliente Envie dados validos de registro 
    Quando Solicito a criacao
    Entao confiro se useuario foi cadastrado corretamente 
    E recebo o status "201" na resposta

CT01.02-Validar cadastro duplicado
    [Tags]    regressivo
    Dado que cliente Envie dados validos de registro    
    Quando Solicito a criacao
    E repitir cadastro
    Quando Solicito a criacao
    Entao nao e permitido criar usuario duplicado
CT01.03-Validar login com sucesso
    Criar secao
    Dado que cliente envia dados validos para logar no sistema
    Quando Solicito a criacao
    
    
