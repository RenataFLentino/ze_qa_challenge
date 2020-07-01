## QA Challenge Details

Eu escolhi realizar este Challenge com RobotFramework com Python por possuir uma experiência maior de atuação

#### Arquitetura

A arquitetura tanto do projeto WEB quanto do API foram desenvolvidas utilizando a seguinte estrutura:

- **resources** --> pasta para as implementações.
		-->  keywords
		-->  page_objects 
		-->  support 
		
- **keywords** --> arquivos com a implementação de keywords.

- **page_objects/service_objects** --> 
	- web - arquivos com mapeamento dos elementos de cada página do site.

	- api - arquivos com enpoints e path dos payloads.

- **support** --> arquivos/pastas de configuração a nível do projeto.
		--> config 

- **results** --> é gerada ao executar os testes, armazenando os resultados como screenshots e reports.

- **tests** --> arquivos para implementação das features e seus cenários.

- **requirements.txt** --> arquivo que contém as libraries com suas respectivas versões a serem utilizadas no projeto.

#### Page Objects
Foi utilizado o padrão de Page Objects que nos permite criar uma reutilização de elementos contidos numa página Web,facilitando a manutenção de código ao sofrer alterações.
