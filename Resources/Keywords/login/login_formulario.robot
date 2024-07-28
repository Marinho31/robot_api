
*** Settings ***
Resource        ../../Main.Robot
Resource        ../../config/Libraries.robot

*** Keywords ***

create login email ${email} password ${senha}
    Load Env
    ${body}=    Create Dictionary    
    ...    identifier=${email}
	...    password=${senha}
    Set Test Variable    ${body} 
    Set test variable    ${url}    ${url}${ADM_LOGIN}
    I request creation

