*** Settings ***
Resource        ../main.robot
*** Keywords ***
Dado que cliente envia dados validos para logar no sistema
    Dado que cliente Envie dados validos de registro
    Efetuar login com sucesso    ${criar_email}    ${criar_senha}    