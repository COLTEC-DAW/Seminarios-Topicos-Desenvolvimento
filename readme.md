# ANGULAR

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Angular_full_color_logo.svg/90px-Angular_full_color_logo.svg.png" alt="angular" width="60"/>

# Introdução

É um framework JavaScript de código aberto mantido pela Google para a construção de SPA (sigla para *Single Page Applications* ou Aplicações de Página Única). Resumidamente, uma SPA é basicamente uma aplicação web construída em uma só página, na qual a interação e a navegação entre as sessões de uma página ocorrem de maneira a qual não é necessário recarregar a página em cada uma dessas mudanças.

Sua finalidade é nos dar ferramentas necessárias para criação de aplicações SPA, além disso também deixa o desenvolvimento deste tipo de aplicação mais simples e otimizado. Com ele, podemos desenvolver aplicações web voltadas tanto para resoluções desktop quanto para resoluções mobile, tornando-as dinâmicas, modernas e escaláveis.

## Características
Suas principais características são:

• **Suporte cross-platform:** esse framework fornece suporte a múltiplas plataformas de desenvolvimento. O Angular pode ser utilizado para criar aplicações web SPA, aplicações mobile (com o suporte do Ionic, por exemplo) ou até mesmo aplicações desktop (com o suporte do Electron).

Mesmo em ambientes distintos, a API do Angular permanece praticamente a mesma, o que facilita a curvatura de adoção e aprendizagem em múltiplos ambientes de desenvolvimento;

• **Integração e suporte à todas as fases de desenvolvimento:** provê ferramentas e suporte para todas as fases de desenvolvimento, desde a escrita do código em si (apoiando-se bastante na API e no sistema de tipos do TypeScript) até a criação de fluxos de teste (com o apoio principalmente do Karma – uma biblioteca para escrita de testes JavaScript), passando pelo suporte excelente à criação de animações, o provisionamento de estruturas de acessibilidade e até mesmo o scaffolding de projetos através do Angular CLI;

• **Produtividade aliada à performance:** consegue oferecer suporte ao desenvolvimento rápido de aplicações através de uma API simples, bem estruturada e bem documentada, o que acaba trazendo bastante produtividade.

Por fim, por mais que o Angular não utilize o conceito de Virtual DOM (conceito utilizado por outros frameworks, como o React), ainda sim o Angular oferece uma performance bem interessante, principalmente com a Ivy, a engine de renderização utilizada desde o Angular 6+.

# Instalação & Configuração
Primeiramente, é necessário ter o Node.js e o npm instalados na máquina.

O Node.js é uma tecnologia de servidor que permite que você execute o JavaScript no servidor e crie aplicações da web no lado do servidor. No entanto, o Angular é uma tecnologia de front-end. Portanto, mesmo que você precise instalar o Node.js em sua máquina de desenvolvimento, é apenas para a execução da CLI. Porém, se a aplicação Angular for full stack pode necessitar do Node.

Para instalar, pode se usar o site oficial, https://nodejs.org/en/download/, e seguir as instruções do site e depois do assistente de configuração.
Para verificar se o Node foi instalado, basta executar o seguinte comando no prompt de comando, que deverá exibir a versão instalada do Node.
`$ node -v`

Então, deve-se executar o comando abaixo para instalar a Angular CLI, que é:
`$ npm install @angular/cli`

Para verificar a instalação, pode-se digitar o comando para saber a versão atual da CLI:
`$ ng version`

Os comandos oferecidos pela CLI são (ênfase no comando help):
`add` adiciona suporte a uma biblioteca externa em seu projeto.

`build (b)` compila uma aplicação do Angular em seu diretório de saída, chamado dist/ no caminho de saída fornecido. Este comando deve ser executado dentro de um diretório de espaço de trabalho.

`config` obtém ou configura os valores de configuração do Angular.

`doc (d)` abre a documentação oficial do Angular (angular.io) em um navegador, buscando uma palavra-chave determinada.

`e2e (e)`faz o build e serve uma aplicação do Angular, depois executa testes de ponta a ponta usando o Protractor.

`generate (g)` gera e/ou modifica arquivos com base em um esquema.
help: lista os comandos disponíveis e suas descrições breves.

`lint (l)` executa as ferramentas de linting no código da aplicação em Angular em uma determinada pasta de projeto.

`new (n)` cria um espaço de trabalho e uma aplicação inicial em Angular.

`run:` executa um destino personalizado definido em seu projeto.

`serve (s)` faz o build e serve sua aplicação, fazendo um novo build a cada alteração de arquivos.

`test (t)` executa os testes unitários em um projeto.

`update` atualiza sua aplicação e suas dependências. Consulte https://update.angular.io/ (em inglês)

`version (v)` mostra a versão da Angular CLI.

`xi18n`extrai as mensagens i18n do código-fonte.

# Getting Started

Para gerar um projeto Angular, utiliza-se a Angular CLI executando o seguinte comando, no qual “project” é o nome do projeto.

`$ ng new project`

A CLI irá perguntar se o usuário deseja adicionar o roteamento do Angular e a resposta padrão é não. Também será perguntado o formato do stylesheet, e é recomendado utilizar o CSS. Após escolher as opções, deve-se apertar Enter para continuar.

Assim, o projeto estará criado com uma estrutura de diretórios com configurações e código, a maioria nos formatos TypeScript e JSON. As funções de cada diretório/arquivo são:

- **/e2e/**: contém os testes end-to-end (simulação do comportamento do usuário) do site
- **/node_modules/**: todas as bibliotecas de terceiros são instaladas nesta pasta usando npm install
- **/src/**: contém o código-fonte da aplicação. A maior parte do trabalho será feita aqui
- **/app/**: contém módulos e componentes
- **/assets/**: contém os ativos estáticos, como imagens, ícones e estilos
- **/environments/**: contém arquivos de configuração específicos do ambiente (produção e desenvolvimento)
- **browserslist**: necessário para o autoprefixador para suporte ao CSS
- **favicon.ico**: o favicon
- **index.html**: o arquivo HTML principal
- **karma.conf.js**: o arquivo de configuração para o Karma (uma ferramenta de testes)
- **main.ts**: o arquivo inicial principal, a partir de onde o AppModule é iniciado
- **polyfills.ts**: polyfills necessários ao Angular
- **styles.css**: o arquivo de folha de estilos (stylesheet) global do projeto
- **test.ts**: um arquivo de configuração para o Karma
- **tsconfig.*.json**: os arquivos de configuração para o TypeScript
- **angular.json**: contém as configurações para a CLI
- **package.json**: contém as informações básicas do projeto (nome, descrição e dependências)
- **README.md**: um arquivo em markdown que contém a descrição do projeto
- **tsconfig.json**: o arquivo de configuração para o TypeScript
- **tslint.json**: o arquivo de configuração para o TSlint (uma ferramenta de análise estática)

A Angular CLI fornece um conjunto de ferramentas completas para desenvolver aplicações front-end na máquina local. Então não é necessário instalar um servidor, pode-se usar o comando ng serve no terminal para servir o projeto localmente.

`$ cd frontend`
`$ ng serve`

Depois, é só entrar no endereço http://localhost:4200/ no navegador. A página é recarregada automaticamente após qualquer mudança no código.

# Ferramentas similares
<span style="font-size: 20px; font-weight: 500">React</span> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/768px-React-icon.svg.png" alt="drawing" width="40"/>

Essa popular biblioteca de javascript foi lançada em 2013 e mantida pelo Facebook. Originalmente foi criado para construir UI. Hoje em dia, tem um papel essencial no ecossistema de front-end. Um programador de React pode construir sites funcionais, user friendly, e atrativos muito mais rápido que em qualquer outro framework.

<span style="font-size: 20px; font-weight: 500">Vue</span> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1200px-Vue.js_Logo_2.svg.png" alt="drawing" width="40"/>

Vue é uma das bibliotecas de javascript mais usadas, e foi criada em 2013. Tem milhões de usuários por conta de sua eficiência em criar UIs e aplicações de uma página. Algo interessante do Vue é que não é inteiramente um framework, o que o torna facilmente adaptável a outros projetos.
