<hr>
<h1 align="center">flem-bd-legado-api</h1>
<p align=center><i align="center">API de conexão com o BD Legado, para o cliente FLEM</i></p>
<br>

<div align="center">

<a href="">![Known Vulnerabilities](https://snyk.io/test/github/frtechdev/flem-bd-legado-api/badge.svg)</a>
<a href="">![Code Size](https://img.shields.io/github/languages/code-size/frtechdev/flem-bd-legado-api)</a>
<a href="">![Repo Size](https://img.shields.io/github/repo-size/frtechdev/flem-bd-legado-api)</a>
<a href="">[![Contributors](https://img.shields.io/github/contributors/frtechdev/flem-bd-legado-api)](https://github.com/frtechdev/flem-bd-legado-api/graphs/contributors)</a><br>
<a href="">![Last Commit](https://img.shields.io/github/last-commit/frtechdev/flem-bd-legado-api)</a>
<a href="">[![Fork](https://img.shields.io/github/forks/frtechdev/flem-bd-legado-api)](https://github.com/frtechdev/flem-bd-legado-api/fork) </a>
<a href="">![Version](https://img.shields.io/badge/version-1.0.4-005bff) </a>
<a href="">[![license](https://img.shields.io/github/license/frtechdev/flem-bd-legado-api)](https://github.com/frtechdev/flem-bd-legado-api/LICENSE)</a>

<br>

</div>

<hr>
<br>

API que consome requisições das aplicações FLEM para o Servidor de Banco de Dados legado.

<br>

## Conteúdo

- [Objetivo](#section-obj)
- [Características](#section-carac)
- [Especificações](#section-specs)
- [Stack](#section-stack)
- [Documentação](#section-docs)
- [Como usar este repositório](#section-como-usar)
- [Notas de versão](#section-changelog)
- [Autores](#section-autores)
- [Contato](#section-contato)
- [Licença](#section-licenca)

<br>
<hr>

<a name="section-obj">

## Objetivo

</a>

- Fornecer uma API de alta performance e baixo custo computacional que consuma de maneira segura e estável os dados requisitados
- Manipular de maneira independente e com controle integrado dados provenientes do BD Flem.

<br>
<hr>

<a name="section-carac">

## Características

</a>

- Facilita os processos resumindo todas as suas funcionalidades centradas no consumo dos dados sem comprometer a performance.

<br>
<hr>

<a name="section-specs">

## Especificações

</a>

- **Tipo de Software:** Interface de Programação de Aplicações
- **Distribuição:** Web
- **Arquitetura:** MVC
- **Metodologia de Projeto:** Metodologia Ágil
- **Estrutura de Biblioteca:** Baseada em Framework
- **Protocolo de Banco de Dados:** ODBC
- **Dialeto de Banco de Dados:** SQL
- **Disponibilidade de Código:** Open Source

<br>
<hr>

<a name="section-stack">

## Stack

</a>

- **Linguagem Principal:** [Javascript](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript)
- **Framework Principal:** [Node.js](https://nodejs.org/en/docs/)
- **Framework estrutural:** [Next.js](https://nextjs.org/docs/getting-started)
- **Biblioteca de Conexão ODBC:** [Prisma.io](https://www.prisma.io)
- **Gerenciador de Bibliotecas:** [Yarn](https://yarnpkg.com/getting-started)
- **Bibliotecas:** Para uma lista completa de bibliotecas e dependências nos mais variados escopos, conferir o arquivo [package.json](https://github.com/frtechdev/flem-bd-dominio-api/blob/main/package.json).

<br>
<hr>

<a name="section-docs">

## Documentação

</a>

<a name="section-diagrama">

### Diagrama de Banco de Dados

</a>

[Diagrama em PDF](https://frtechdev.github.io/flem-bd-legado-api/diagram/diagram-pdf.pdf)

[Diagrama em SQL](https://frtechdev.github.io/flem-bd-legado-api/diagram/diagram-sql.sql)

Documentação adicional pode ser encontrada [aqui](https://frtechdev.github.io/flem-bd-legado-api/).

<br>
<hr>

<a name="section-como-usar">

## Como usar este repositório

</a>

<a name="section-use-project">

### Como Projeto

</a>

1 - Faça um git clone ou o download do repositório, da forma que preferir

`git clone https://github.com/frtechdev/flem-bd-legado-api.git`

2 - Instale um gerenciador de pacotes (preferencialmente yarn) utilizando um terminal no diretório raiz do repositório clonado

`yarn` ou `npm install`

3 - Execute a aplicação no terminal

`yarn dev` ou `npm run dev`

<a name="section-use-app">

### Como Aplicação

</a>

1 - Instale uma instância docker em uma máquina dedicada, conforme instruções na [Documentação do Docker](https://docs.docker.com/engine/install/).

2 - Faça um git clone ou o download do repositório, da forma que preferir

`git clone https://github.com/frtechdev/flem-bd-legado-api.git`

3 - Execute o Dockerfile no diretório raiz do repositório clonado

`docker build . -t flem-bd-legado-api:dev`

4 - Inicie o container

`docker run -d -p XXXX:3000 --name flem-bd-legado-api:dev`

Altere o "XXXX" para uma porta externa de sua escolha. Por padrão, a porta interna é 3000.
Para alterar a porta interna, altere a linha 44 do [Dockerfile](https://github.com/frtechdev/flem-bd-legado-api/blob/main/Dockerfile).

<a name="section-vars">

### Variáveis de Ambiente

</a>

Para testar a aplicação, crie um arquivo .env com as seguintes variáveis de ambiente:

| Variável     | Uso  |
| ------------|-------|
|`DATABASE_URL=` | Define o endereço do Servidor de BD e credenciais para acesso, de acordo com as especificações da biblioteca [Prisma.io](https://www.prisma.io/docs/getting-started/setup-prisma/start-from-scratch/relational-databases/connect-your-database-node-sqlserver)| |

<br>
<hr>

<a name="section-changelog">

## Notas de versão

</a>

<br>

### v1.0.4-221111

- Atualização da Documentação

<br>

### v1.0.3-221111

- Atualização da Documentação

<br>

### v1.0.2-221111

- Atualização da Documentação
- Branch Rebase

<br>

### v1.0.1-221111

- Atualização da Documentação

<br>

### v1.0.0-221111

- Atualização da Documentação
- Inclusão de Dockerfile e instruções para implantação
- Criação de função utilitária para compor queries
- Organização de importação de funções de serviço e funções utilitárias

<br>

### v0.0.4-220902

- v0.0.3-220902dx

<br>

### v0.0.3-220902dx

- Exclusão do yarn.lock dos arquivos a ignorar do GITIGNORE
- Atualização da documentação
- Criação de Diagramas do Banco de Dados
- Ajuste de dependências
- Remoção do CHANGELOG e sua inclusão dentro do README
- Atualização do README
- Alteração do composeFilter da rota de pesquisa de beneficiários ao BD para buscar apenas valores exatos na busca por CPF, MatriculaFLEM e MatriculaSAEB
- Ajustes menores em comentários e imports de arquivos diversos
- Criação de método de parse de Array para busca de valores exatos quando se pesquisa por strings específicas dentro do BD

<br>

### v0.0.2-220721dx

- Alteração da localização da documentação feita pelo jsdoc
- Atualização da documentação
- Alteração dos parâmetros de redirecionamento da página principal da API para redirecionar para a documentação
- Documentação dos métodos e demais componentes
- Definição da Homepage da API
- Remoção da especificação de porta via .env (utilizando sintaxe direta dos scripts de execução do Node)
- Atualização do README
- Reorganização dos utilitários e ferramentas de serviço
- Criação de controller para listagem e verificação de Beneficiários
- Criação de controller para listagem e verificação de Situações
- Criação de controller para listagem e verificação de Vagas
- Alterado algoritmo para manipulação das requisições API aos Controllers para trabalhar com filtros e critérios específicos de acesso ao BD
- Criado utilitário para realizar parsing dos objetos das requisições API e montar os filtros

### v0.0.1-220701dx

- Criação dos arquivos principais do projeto
- Criação e definição das variáveis de ambiente
- Criação de linting do ES para Next
- Criação do gitattributes
- Criação do gitignore
- Adição de regras de linting para markdown
- Criação do changelog
- Criação do arquivo de Schema do ORM
- Atualização do README
- Criação de rota para fornecer dados de beneficiários
- Criação de utilitários para formatação de CPF, Data e Nomes Próprios (capitalização)

<br>

### Initial Commit

- Initial Commit

<br>
<hr>

<a name="section-autores">

## Autores

</a>

<a href="https://github.com/frtechdev/flem-bd-legado-api/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=frtechdev/flem-bd-legado-api" />
</a>

<br>
<hr>

<a name="section-contato">

## Contato

</a>

Se você gostou desse projeto, nos dê uma <a href="https://github.com/frtechdev/flem-bd-legado-api" data-icon="octicon-star" aria-label="Star frtechdev/flem-bd-legado-api on GitHub">estrela</a>. Isso agirá como um indicador da qualidade dos nossos serviços. <br>
Para contato, envie um email a: <a href="mailto:devops@frtechnologies.com.br">devops@frtechnologies.com.br</a>

<br>
<hr>

<a name="section-licenca">

## Licença

</a>

Licenciado sob a [MIT License](https://github.com/frtechdev/flem-bd-legado-api/blob/main/LICENSE).
