*** Settings ***
Resource        ../main.robot
*** Keywords ***

Dado que cliente envia dados cadastrados para efetuar login e-mail ${email} senha ${senha}
    Efetuar login e-mail ${email} senha ${senha}
    Set Test Variable    ${email}

Dado que cliente esta logado
    Dado que cliente envia dados cadastrados para efetuar login e-mail ${email_cadastrado} senha ${senha_cadastrada}
    Quando Solicito a criacao

Quando Solicita para deslogar
    Efetuar logout e-mail ${email_cadastrado} senha ${senha_cadastrada}
    Quando Solicito a criacao
