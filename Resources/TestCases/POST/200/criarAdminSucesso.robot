*** Settings ***

Resource       ../../../main.robot
Test Setup    Criar secao
*** Test Cases ***

CT01.01-Validar registro de usuario com sucesso
    [Tags]    ok
    Dado que cliente Envie dados validos de registro 
    Quando Solicito a criacao
    Entao confiro se useuario foi cadastrado corretamente 
    E recebo o status "201" na resposta


CT01.02-Validar login com sucesso
    [Tags]    login
    Dado que cliente envia dados cadastrados para efetuar login e-mail ${email_cadastrado} senha ${senha_cadastrada}
    Quando Solicito a criacao
    E recebo o status "200" na resposta
    Entao sistema loga usuario com sucesso 
    
    
