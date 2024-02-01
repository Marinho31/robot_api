*** Settings ***
Resource        ../main.robot
*** Keywords ***
Dado que cliente Envie dados validos de registro
    Criar Massa de Dados
    Crie dados de registro geral    ${criar_email}    ${criar_senha}    ${nome_completo}         
    Set Test Variable    ${criar_email}
    Set Test Variable    ${criar_senha}

Entao confiro se useuario foi cadastrado corretamente 
    Dictionary Should Contain Item    ${resposta.json()}    role    ADMIN
    Dictionary Should Contain Key    ${resposta.json()}     id

Dado que envie para cadastro cliente duplicado na base
    Crie dados de registro geral    ${email_cadastrado}    ${senha_cadastrada}    ${name_user}   
    
E repitir cadastro
    ${response_json}    Evaluate     json.loads($resposta.text)
    ${id}          Set Variable  ${response_json['id']}
    ${email}       Set Variable  ${response_json['email']}
    ${fullName}    Set Variable  ${response_json['fullName']}
    ${role}        Set Variable  ${response_json['role']}
    Crie dados de registro geral    ${email}    ${criar_senha}    ${fullName}

Entao nao e permitido criar usuario duplicado 
    ${expected_response} =  Create Dictionary
    ...    message=User with that email already exists
    ...    error=Conflict
    ...    statusCode=${409}
    Should Be Equal    ${expected_response}    ${resposta.json()}
   
    

