
*** Settings ***
Resource        ../main.robot

*** Keywords ***

E verificdo dados da resposta
    ${response_json}    Evaluate     json.loads($resposta.text)
    ${id}          Set Variable  ${response_json['id']}
    ${email}       Set Variable  ${response_json['email']}
    ${fullName}    Set Variable  ${response_json['fullName']}
    ${role}        Set Variable  ${response_json['role']}

Entao sistema loga usuario com sucesso 
    E verificdo dados da resposta
    ${api_response}    Create Dictionary
    ...    id=${3}
    ...    email=${email}
    ...    fullName=${name_user}
    ...    role=${adm}
    ...    active=${True}
    ...    churchId=${None}
    Should Be Equal    ${api_response}    ${resposta.json()}

Entao sistema verifica a resposta e nao deve logar
    ${expected_response} =  Create Dictionary
    ...    message=Wrong credentials provided.
    Should Be Equal    ${expected_response}    ${resposta.json()}

Efetuar login e-mail ${email} senha ${senha}
    ${body}=    Create Dictionary    
    ...    email=${email}
	...    password=${senha}
    Set Test Variable    ${body} 
    Set test variable    ${url}    ${url}${ADM_LOGIN}

Efetuar logout e-mail ${email} senha ${senha}
    ${body}=    Create Dictionary    
    ...    email=${email}
	...    password=${senha}
    Set Test Variable    ${body} 
    Set test variable    ${url}    https://api-dev-syncchurch.up.railway.app/${ADM_LOGOUT}
