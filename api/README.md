# Automação API com Robot Framework

### API - Dados meteorológicos - OpenWeather

## Como Instalar

- Primeiramente instale python3 na sua máquina.

URL: [https://www.python.org/downloads/](https://www.python.org/downloads/)

#### Libraries
Execute o comando dentro da pasta do projeto para instalar as dependências:

`pip3 install -r requirements.txt `

#### Vamos Utilizar RobotFramework

Acesse o site do RobotFramework para saber mais sobre as suas bibliotecas

URL: https://robotframework.org/#libraries


## Executar Testes

Dentro da pasta raiz no terminal, rode o comando a seguir, para a execução de todos os cenários da feature Weather.

    robot -d ./results -i weather -v ENV:homolog tests

NOTE: 

>  -d ./results | para guardar o resultado (reports) dentro da pasta results

> -i *tag* | para rodar todos os testes que tem essa tag

> -v ENV:homolog | para rodar os testes no ambiente de homologação

>  -tests | diretório onde se encontram os casos de testes


