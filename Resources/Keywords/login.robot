*** Settings ***
Resource        ../main.robot
*** Keywords ***

  


Entao verifico dados da resposta se contem id
    Dictionary Should Contain Key     ${resposta}    id    