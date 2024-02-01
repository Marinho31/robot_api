*** Settings ***
Resource        ../main.robot

*** Variables ***
${email_cadastrado}    umendes@gmail.com
${senha_cadastrada}    59P%pG&q+9
${name_user}           Enrico 
${adm}                 ADMIN  
${user_invalido}       Joao
${senha_invalida}      asrqr1       
${email_invalido}      umendess@gmail.com

*** Keywords ***

Criar Massa de Dados
    ${nome_aleatorio}         FakerLibrary.Username
    ${nome_completo}          FakerLibrary.First Name
    ${sobrenome}              FakerLibrary.Last Name
    ${criar_senha}            FakerLibrary.Password
    ${criar_email}            Set Variable    ${nome_aleatorio}@gmail.com
    ${criar_email_invalido}   Set Variable    ${nome_aleatorio}.com
    Set Suite Variable        ${nome_completo}
    Set Suite Variable        ${criar_senha}
    Set Suite Variable        ${criar_email}

Crie dados de registro geral
    [Arguments]    ${email}    ${senha}    ${nome}
    ${body}=    Create Dictionary    
    ...    email=${email}
    ...    password=${senha}
    ...    fullName=${nome}
    ...    role=ADMIN
    Set Test Variable    ${body}
    Set test variable    ${url}    ${url}${ADM_register}
Efetuar login e-mail ${email} senha ${senha}
    ${body}=    Create Dictionary    
    ...    email=${email}
	...    password=${senha}
    Set Test Variable    ${body} 
    Set test variable    ${url}    ${url}${ADM_LOGIN}

     