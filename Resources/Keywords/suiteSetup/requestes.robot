* Settings *
Resource    ../../main.robot


* Keywords *

Criar secao
    Load Env
    ${headers}     Create Dictionary
    ...    Content-Type=application/json
    ...    authorization=%{BEARER}
    Set Suite Variable    ${headers}

informo o ${corpo} da requisição
    Set test variable   ${body}  ${corpo}


and I get the status "${statusCode}" in the response
    Status Should Be    ${statusCode}  ${resposta}

Quando solicito a consulta
    ${resposta}     GET
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 url=${url}
    Set test variable   ${resposta}

I request creation
    ${resposta}    POST 
    ...                 url=${url}
    ...                 json=${body}
    ...                 expected_status=any
    ...                 headers=${headers}
    Set test variable   ${resposta}

Quando solicito a sua remoção
    ${resposta}     DELETE
    ...                 json=${body}
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 url=${url}

    Set test variable   ${resposta}

Quando solicito a sua atualização
    ${resposta}     PUT
    ...                 json=${body}
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 url=${url}

    Set test variable   ${resposta}