*** Settings ***
Resource        ../main.robot
*** Keywords ***
Dado que cliente envia dados cadastrados para efetuar login e-mail ${email} senha ${senha}
    Efetuar login e-mail ${email} senha ${senha}
    Set Test Variable    ${email}
E verificdo dados da resposta
    ${response_json}    Evaluate     json.loads($resposta.text)
    ${id}          Set Variable  ${response_json['id']}
    ${email}       Set Variable  ${response_json['email']}
    ${fullName}    Set Variable  ${response_json['fullName']}
    ${role}        Set Variable  ${response_json['role']}

Entao sistema loga usuario com sucesso 
    E verificdo dados da resposta
    ${api_response}    Create Dictionary
    ...    id=${4}
    ...    email=${email}
    ...    fullName=${name_user}
    ...    role=${adm}
    Should Be Equal    ${api_response}    ${resposta.json()}

Entao sistema verifica a resposta e nao deve logar
    ${expected_response} =  Create Dictionary
    ...    message=Wrong credentials provided
    ...    statusCode=${400}
    Should Be Equal    ${expected_response}    ${resposta.json()}