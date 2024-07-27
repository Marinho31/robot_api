*** Settings ***
Resource        ../main.robot
*** Keywords ***

E verificdo dados da resposta
    ${response_json}    Evaluate     json.loads($resposta.text)

    ${email}       Set Variable  ${response_json['email']}
    ${fullName}    Set Variable  ${response_json['fullName']}
    ${role}        Set Variable  ${response_json['role']}

deve persisitir o campo cep ${cep} na resposta
    Dictionary Should Contain Key    ${resposta.json()}    hasCep
    ${dado_cep}=       Get From Dictionary    ${resposta.json()}    hasCep
    ${dado_cep}    Convert to string  ${dado_cep}


Entao sistema verifica a resposta e nao deve logar
    ${expected_response} =  Create Dictionary
    ...    message=Wrong credentials provided.
    Should Be Equal    ${expected_response}    ${resposta.json()}

get token user
    Set Test Variable    ${token_user}    ${resposta.json()['jwt']}