*** Settings ***

#config
Resource    config/Libraries.robot 
Resource    config/variables.robot
Resource    config/libs/loadEnv.py

#suite
Resource    Keywords/suiteSetup/requestes.robot

#data
Resource    Data/massaDados.robot

#login
Resource    Keywords/login/login.robot
Resource    Keywords/login/login_formulario.robot
Resource    Keywords/login/login_path.robot

#outros
Resource    Keywords/registrer.robot