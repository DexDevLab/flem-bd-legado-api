<h1 align="center">FLEM BD Legado API</h1>
<p align=center><i align="center">API de conexão com o BD Legado, para o cliente FLEM</i></p>

<br>

<div align="center">

<a href="https://www.javascript.com"><img src="https://img.shields.io/badge/JavaScript-%23323330.svg?logo=javascript&logoColor=%23F7DF1E" height="22" alt="JavaScript"/></a>
<a href="https://nodejs.org/en/"><img src="https://img.shields.io/badge/node.js-6DA55F?logo=node.js&logoColor=white" height="22" alt="NodeJS"/></a>
<a href="https://nextjs.org"><img src="https://img.shields.io/badge/Next-black?logo=next.js&logoColor=white" height="22" alt="NextJS"/></a>
<a href="https://www.prisma.io"><img src="https://img.shields.io/badge/Prisma-3982CE?logo=Prisma&logoColor=white" height="22" alt="PrismaIO"/></a>
<a href="https://www.microsoft.com/pt-br/sql-server/sql-server-2019"><img src="https://img.shields.io/badge/Microsoft%20SQL%20Sever-CC2927?logo=microsoft%20sql%20server&logoColor=white" height="22" alt="MSSQLServer"/></a>

<a href=""><img src="https://img.shields.io/badge/maintenance-actively--developed-brightgreen.svg" height="22" alt="Maintenance-actively-developed"/></a>
<a href=""><img src="https://img.shields.io/github/last-commit/frtechdev/flem-bd-legado-api" height="22" alt="LastCommit"></a>
<a href=""><img src="https://snyk.io/test/github/frtechdev/flem-bd-legado-api/badge.svg" height="22" alt="Snyk"/></a>

<a href=""><img src="https://img.shields.io/github/repo-size/frtechdev/flem-bd-legado-api" height="22" alt="RepoSize"/></a>
<a href=""><img src="https://img.shields.io/github/languages/code-size/frtechdev/flem-bd-legado-api" height="22" alt="CodeSize"/></a>
<a href=""><img src="https://img.shields.io/github/contributors/frtechdev/flem-bd-legado-api" height="22" alt="Contributors"></a>

<a href=""><img src="https://img.shields.io/github/forks/frtechdev/flem-bd-legado-api" height="22" alt="Fork"></a>
<a href=""><img src="https://img.shields.io/github/release/frtechdev/flem-bd-legado-api.svg" height="22" alt="LatestRelease"></a>
<a href="https://github.com/frtechdev/flem-bd-legado-api/blob/main/LICENSE"><img src="https://img.shields.io/github/license/frtechdev/flem-bd-legado-api" height="22" alt="License"></a>

|| [Conteúdo](#section-conteudo) || [Características](#section-caracteristicas) || [Stack](#section-stack) || [Documentação](#section-documentacao) || [Instruções](#section-instrucoes) ||

|| [Variáveis de Ambiente](#section-vars) || [Notas de versão](#section-changelog) || [Autores](#section-autores) || [Contato](#section-contato) || [Licença](#section-licenca) ||

</div>

<hr>

<a name="section-conteudo">

## Conteúdo

</a>

<br>

API que consome requisições das aplicações FLEM para o Servidor de Banco de Dados legado.
Tem os seguintes objetivos:

- Fornecer uma API de alta performance e baixo custo computacional que consuma de maneira segura e estável os dados requisitados

<hr>

<a name="section-caracteristicas">

## Características

</a>

<br>

- Facilita os processos resumindo todas as suas funcionalidades centradas no consumo dos dados sem comprometer a performance.

<hr>

<a name="section-stack">

## Stack

</a>

<br>

- **Linguagem Principal:** [Javascript](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript)
- **Framework Principal:** [Node.js](https://nodejs.org/en/docs/)
- **Framework estrutural:** [Next.js](https://nextjs.org/docs/getting-started)
- **Biblioteca de Conexão ODBC / ORM:** [Prisma.io](https://www.prisma.io)
- **Banco de Dados:** [SQL](https://pt.wikipedia.org/wiki/SQL)
- **Gerenciador de Dependências:** [Yarn](https://yarnpkg.com/getting-started)
- **Bibliotecas:** Para uma lista completa de bibliotecas e dependências nos mais variados escopos, conferir o arquivo [package.json](https://github.com/frtechdev/flem-bd-legado-api/blob/main/package.json).

<hr>

<a name="section-documentacao">

## Documentação

</a>

<br>

- [Diagrama de Modelo de Banco de Dados em PDF](https://frtechdev.github.io/flem-bd-legado-api/resources/diagram-pdf.pdf)

- [Diagrama de Modelo de Banco de Dados em SQL](https://frtechdev.github.io/flem-bd-legado-api/resources/diagram-sql.sql)

Documentação adicional pode ser encontrada [aqui](https://frtechdev.github.io/flem-bd-legado-api/).

<hr>

<a name="section-instrucoes">

## Instruções

</a>

<br>

### Utilizando o repositório como projeto

</a>

1 - Faça um git clone ou o download do repositório, da forma que preferir

```bash

git clone https://github.com/frtechdev/flem-bd-legado-api.git

```

2 - Instale um gerenciador de pacotes (preferencialmente yarn) utilizando um terminal no diretório raiz do repositório clonado

`yarn` ou `npm install`

3 - Execute a aplicação no terminal

`yarn dev` ou `npm run dev`

**Lembre-se de executar `yarn build` ANTES de criar seu container com base no repositório local.**

### Implantando o projeto

</a>

#### Por um repositório clonado

**Lembre-se de executar `yarn build` ANTES de criar seu container com base no repositório local.**

```bash
docker build --env-file .env -f Dockerfile .
```

#### Diretamente do repositório remoto

Você pode utilizar o `docker build` referenciando diretamente o repositório:

```bash
docker build https://github.com/frtechdev/flem-bd-legado-api.git#main
```

Alternativamente, pode usar o comando detalhado para alterar diretamente configurações como porta e nome do repositório:

```bash
docker run -p X:3000 --env-file .env -e github='https://github.com/frtechdev/flem-bd-legado-api.git' -it frtechdev/flem-bd-legado-api
```

**Lembre-se de criar um arquivo `.env` para definir as variáveis de ambiente utilizadas na imagem, ou especificar as variáveis utilizadas uma a uma na linha de comando acima.**

Onde "X" é uma porta externa de sua escolha. Por padrão, a porta interna é 3000.
Para alterar a porta interna, altere a linha `ENV PORT` do [Dockerfile](https://github.com/frtechdev/flem-bd-legado-api/blob/main/Dockerfile).

Para mais informações, visite a [Documentação do Docker](https://docs.docker.com).

</a>

<hr>

<a name="section-vars">

### Variáveis de Ambiente

</a>

<br>

#### Variáveis Principais

| Variável      | Uso   |
|---------------|-------|
|`DATABASE_URL` | Define o endereço do Servidor de BD e as demais informações do mesmo. Aceita uma string no formato `sqlserver://<ENDEREÇO DO SERVIDOR>:<PORTA>;database=<NOME DO BANCO DE DADOS>;user=<USUÁRIO>;password=<SENHA>`. | |
|`QUERY_BATCH_SIZE` | Tamanho máximo das queries para o BD (Padrão: `2000`) | |

<hr>

<a name="section-changelog">

## Notas de versão

</a>

<br>

### v1.0.6-230624

- Criação de um script de Github Actions para Tag e Release automáticos das versões no branch `main`
- Adição de um script de Github Actions para deploy automático de imagem Docker
- Adição de script de limpeza de index de cache do Git
- Adição do arquivo `.yarnclean` para sanitização de módulos
- Inclusão de scripts yarn
- Documentação de todos os componentes, módulos, arquivos e componentes do projeto
- Criação de Handler para tratamento de Exceções e resposta para o usuário
- Atualização da Documentação

### v1.0.5-221111

- Atualização da Documentação

### v1.0.4-221111

- Atualização da Documentação

### v1.0.3-221111

- Atualização da Documentação

### v1.0.2-221111

- Atualização da Documentação
- Branch Rebase

### v1.0.1-221111

- Atualização da Documentação

### v1.0.0-221111

- Atualização da Documentação
- Inclusão de Dockerfile e instruções para implantação
- Criação de função utilitária para compor queries
- Organização de importação de funções de serviço e funções utilitárias

### v0.0.4-220902

- v0.0.3-220902dx

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

<hr>

<a name="section-autores">

## Autores

</a>

<br>

<a href="https://github.com/frtechdev/flem-bd-legado-api/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=frtechdev/flem-bd-legado-api" />
</a>

<hr>

<a name="section-contato">

## Contato

</a>

<br>

Se você gostou deste projeto, dê uma <a href="https://github.com/frtechdev/flem-bd-legado-api" data-icon="octicon-star" aria-label="Star frtechdev/flem-bd-legado-api on GitHub">estrela</a>. <br>
Para contato, envie um email a: <a href="mailto:dex.houshi@hotmail.com">dex.houshi@hotmail.com</a>

<hr>

<a name="section-licenca">

## Licença

</a>

Licenciado sob a [MIT License](https://github.com/frtechdev/flem-bd-legado-api/blob/main/LICENSE).
