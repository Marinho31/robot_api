* Settings *
Resource    ../../main.robot


* Keywords *

Criar secao
    ${headers}     Create Dictionary
    ...    Content-Type=application/json
    Set Suite Variable    ${headers}

informo o ${corpo} da requisição
    Set test variable   ${body}  ${corpo}

E recebo o status "${statusCode}" na resposta
    Status Should Be    ${statusCode}  ${resposta}

Quando solicito a consulta
    ${resposta}     GET
    ...                 expected_status=any
    ...                 headers=${headers}
    ...                 url=${url}
    Set test variable   ${resposta}

Quando Solicito a criacao
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