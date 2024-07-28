*** Settings ***

Resource       ../../../Main.Robot

Test Setup    authorized

*** Variables ***
${response_login}    ${CURDIR}/../../../Data/dasos.resposta.json

*** Test Cases ***

CT01.01-Validar registro de usuario com sucesso
    [Tags]    smoke
    Given create login email %{USER} password %{PASSWORD}
    When and I get the status "200" in the response
    
CT02 - Validar resposta de login
    [Tags]    smoke
    Given create login email %{USER} password %{PASSWORD}
    Then validating the current response with the expected response ${response_login}
