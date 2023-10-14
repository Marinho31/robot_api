*** Settings ***
Resource        ../main.robot


*** Keywords ***
Criar Massa de Dados
    ${nome_aleatorio}=        FakerLibrary.Username
    ${nome_completo}=         FakerLibrary.First Name
    ${criar_senha}=           FakerLibrary.Password
    ${criar_email}=           Set Variable    ${nome_aleatorio}@gmail.com
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
    

     