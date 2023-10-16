*** Settings ***
Resource        ../main.robot
*** Keywords ***
Dado que cliente efetue cadastrado
    Dado que cliente Envie dados validos de registro
    Quando Solicito a criacao
Dado que cliente envia dados cadastrados para efetuar login 
    Efetuar login com sucesso    ${email_cadastrado}    ${senha_cadastrada}   