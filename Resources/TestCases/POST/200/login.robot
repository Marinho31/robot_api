*** Settings ***

Resource       ../../../main.robot
Test Setup    Criar secao
*** Test Cases ***

CT01.01-Validar registro de usuario com sucesso
    [Tags]    ok
    Given create login email %{USER} password %{PASSWORD}
    And get token user
    When and I get the status "200" in the response
