*** Settings ***

Resource       ../../../main.robot
Test Setup    Criar secao
*** Test Cases ***

CT01.01-Validar cadastro duplicado
    [Tags]    regressivo
    Dado que cliente Envie dados validos de registro    
    Quando Solicito a criacao
    E repitir cadastro
    Quando Solicito a criacao
    Entao nao e permitido criar usuario duplicado
CT01.02 - Validar cliente ja cadastrado 
    Dado que envie para cadastro cliente duplicado na base
    Quando Solicito a criacao
    Entao nao e permitido criar usuario duplicado
CT01.03 - Validar cliente ja cadastrado 
    Dado que envie para cadastro cliente duplicado na base
    Quando Solicito a criacao
    Entao nao e permitido criar usuario duplicado
CT01.03-Validar login senha invalido
    [Tags]    login
    Dado que cliente envia dados cadastrados para efetuar login e-mail ${email_cadastrado} senha ${senha_invalida}
    Quando Solicito a criacao
    Entao sistema verifica a resposta e nao deve logar
    E recebo o status "400" na resposta
    
CT01.03-Validar login email invalido
    [Tags]    login
    Dado que cliente envia dados cadastrados para efetuar login e-mail ${email_invalido} senha ${senha_cadastrada}
    Quando Solicito a criacao
    Entao sistema verifica a resposta e nao deve logar
    E recebo o status "400" na resposta    
    
    
