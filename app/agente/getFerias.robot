*** Settings ***
Resource        ../../resources/credentials/credentials.robot
Resource        ../requests/requests.robot
Resource        ../../validators/validators.robot        


*** Test Cases ***
Test Sucesso Com Parametro
    ${response}=                    Buscar Ferias               63542443        
    Verify Status 200               ${response}                 200         

Test Falha Sem Parametro
    ${response}=                        Run Keyword And Ignore Error                    Buscar Ferias 
    Verify Negative Status Code         ${response}                                     400
