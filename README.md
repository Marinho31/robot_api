# Robot API - README 🤖

## Estrutura do Projeto 📂

Meu projeto é uma aplicação Robot Framework para testes automatizados. A estrutura do projeto é organizada da seguinte forma:

### Settings ⚙️
- [Libraries.robot](./Settings/Libraries.robot): Este arquivo contém as bibliotecas utilizadas no projeto.

- [variables.robot](./Settings/variables.robot): Aqui são definidas as variáveis usadas no projeto.

### Resources 🛠️
- [registrer.robot](./Resources/registrer.robot): Contém palavras-chave relacionadas ao registro de usuários.

- [login.robot](./Resources/login.robot): Palavras-chave relacionadas ao login de usuários.

- [suiteSetup/requestes.robot](./Resources/suiteSetup/requestes.robot): Palavras-chave de configuração da suite de testes.

- [massaDados.robot](./Resources/massaDados.robot): Dados usados nos testes.

- [Main.Robot](./Resources/Main.Robot): Arquivo principal de recursos.
  - Este arquivo inclui os seguintes recursos:
    - [config/Libraries.robot](./Resources/config/Libraries.robot)
    - [config/variables.robot](./Resources/config/variables.robot)
    - [Keywords/registrer.robot](./Resources/Keywords/registrer.robot)
    - [Keywords/login.robot](./Resources/Keywords/login.robot)
    - [Keywords/suiteSetup/requestes.robot](./Resources/Keywords/suiteSetup/requestes.robot)
    - [Data/massaDados.robot](./Resources/Data/massaDados.robot)

### TestCases 🧪
- [POST-criarAdmin.robot](./TestCases/POST-criarAdmin.robot): Casos de teste relacionados à criação de administradores.

## Dependências 📦

Para executar o projeto, você precisará ter as seguintes dependências instaladas:

- [Robot Framework](https://robotframework.org/): Framework de automação de teste. 🤖
  - Comando para instalação: `pip install robotframework`

- [FakerLibrary](https://github.com/guykisel/FakerLibrary): Biblioteca para geração de dados aleatórios. 🧙
  - Comando para instalação: `pip install robotframework-fakerlibrary`

- [RequestsLibrary](https://github.com/MarketSquare/robotframework-requests): Biblioteca para fazer requisições HTTP. 📬
  - Comando para instalação: `pip install robotframework-requests`

- [JsonSchema](https://pypi.org/project/robotframework-jsonlibrary/): Biblioteca para validação de JSON Schema. 📋
  - Comando para instalação: `pip install robotframework-jsonlibrary`

- [OperatingSystem](https://robotframework.org/robotframework/latest/libraries/OperatingSystem.html): Biblioteca interna do Robot Framework para interação com o sistema operacional. 📋

## Executando os Testes 🚀

Para executar os testes, você pode utilizar o comando:

```shell
robot -d report -i regressivo Resources/TestCases/POST-criarAdmin.robot
