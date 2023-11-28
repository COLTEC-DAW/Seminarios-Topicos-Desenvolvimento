# Seminário sobre o Gerenciador de Pacotes Composer

## Introdução
### Problema

Um problema comum no desenvolvimento de aplicações web em PHP é gerenciar dependências de projeto (instalar, desinstalar e atualizar as versões).
- **Projetos**: vários aplicativos em desenvolvimento.
- **Dependências**: seus aplicativos dependem recursos disponibilizados por projetos de outras pessoas, às vezes até de uma versão específica desses projetos.
- **Organização**: cada dependência deve estar associada apenas aos projetos que necessitam dela, ou a todos se assim desejar.

### Solução

O Composer trás a proposta de declarar as dependências do projeto, encontrar as versões que podem e devem ser instaladas no projeto e permitir a instalação ou atualização de todas as dependências em apenas um comando. Além de permitir o compartilhamento dos seus próprios módulos PHP para outras pessoas, o Composer também garante que todos os desenvolvedores de uma equipe estejam utilizando o mesmo ambiente de desenvolvimento e execução para trabalhar.
Esse modo de funcionar faz dele uma alternativa consideravelmente mais eficiente para esses fins do que os gerenciadores de pacotes como o APT ou o YUM ou os scripts para Bash/Powershell.

## Instalação & Configuração
### Requisitos

Antes de realizar quaisquer procedimentos que envolvam diretamente o Composer, é necessário verificar se o sistema no qual a ferramenta será instalada possui os seguintes aplicativos:
- uma ferramenta de des/compressão de arquivos: 7z, 7zz, gzip, tar, unrar, unzip ou xz
- um sistema de controle de versão: Fossil, Git, Mercurial, Perforce ou Subversion
- o PHP (esse será usado para instalar e executar o instalador do Composer, além de executar o Composer em si)

### Instalação no Linux

De acordo com o site oficial do Composer, as instruções contidas nos scripts `composer_global.sh`, `composer_user.sh` e `composer_local.sh` (aqui disponibilizados) permitem a instalação do Composer:
- inicialmente o instalador da ferramenta é obtido do site,
- então ele é executado pelo PHP, que vai gerar o app em PHP que é o Composer (`composer.phar`),
- sendo que cada script mencionado se diferencia apenas no diretório de destino do arquivo **composer.phar** gerado
- e dependendo da pasta no qual o composer.phar é inserido, será possível acessá-lo por um caminho ou usuário específicos.
- (**.phar** é um arquivo que o PHP pode executar a partir da linha de comando)
- por último o Composer é atualizado para a versão 2, adequada em casos cotidianos

### Instalação no Windows

Para instalar o Composer no Windows de modo automático, basta baixar e executar o executável disponibilizado [nesse link](https://getcomposer.org/Composer-Setup.exe), que pode ser encontrado também no próprio site da ferramenta.

### Instalação em Container do Docker

Caso deseje utilizar o Composer em uma imagem de container do Docker, basta inserir a seguinte linha no arquivo **Dockerfile**:

```Dockerfile
COPY --from=composer/composer:latest-bin /composer /usr/bin/composer
```

### Composer CLI

Caso a ferraementa tenha sido instalada localmente, os comandos para a linha de comando seguem o seguinte formato:

```console
$ php composer.phar ...
```

Do contrário basta começar o comando com a palavra `composer`:

```console
$ composer ...
```

Ao longo do texto, será utilizada essa última forma, contudo os mesmos parâmetros poderiam ser passados para a primeira forma e funcionariam.

## Getting Started

### `composer.json`

Para o Composer gerenciar as dependências de um projeto, é preciso que elas estejam listadas para o aplicativo. O arquivo `composer.json` possui essa finalidade, além de conter configurações e metadados do projeto PHP. Ele se estrutura como um objeto **JSON** e deve ficar na raiz do projeto PHP caso o app desenvolvido se torne um pacote do Composer.

#### Estrutura

A estrutura básica do arquivo é como se segue:

```json
{
    "require":
    {
        "vendor1/package1": "version1",
        "vendor2/package2": "version2",
        "vendor3/package3": "version3",
        ...
        "vendorN/packageN": "versionN"
    }
}
```

A chave `require` está relacionada a um objeto contendo a lista dos pacotes a serem instalados. Cada item da lista associa o pacote `packageN` do fornecedor `vendorN` a uma especificação da versão `versionN` requerida.

#### Exemplo

Abaixo está um exemplo de `composer.json` para instalar uma versão qualquer das versões `2.1` do pacote `parser` do fornecedor `mkoprek`.

```json
{
    "require":
    {
        "mkoprek/parser": "2.1.*"
    }
}
```

Essa dependência será em breve utilizado para criar um app em PHP.

#### `composer r`

Caso seja a primeira vez que um determinado pacote é introduzido no projeto PHP (de nome `package` do fornecedor `vendor`), é possível inseri-lo no arquivo `composer.json` e instalá-lo de outra forma: na linha de comando, estando na raiz do projeto, executar o seguinte comando:

```console
$ composer r vendor/package
```

Caso seja o primeiro pacote, o Composer irá criar automaticamente o arquivo `composer.json`.

### `composer.lock`

Após a criação do `composer.json`, será necessário criar o `composer.lock`: um arquivo no qual serão fixadas exatamente quais dependências, dependências das dependências e versões serão usadas para o desenvolvimento do projeto. Para criá-lo é necessário executar o seguinte comando:

```console
$ composer u
```

Caso os arquivos `composer.json` e `composer.lock` já existam na pasta do projeto, o seguinte comando seria mais adequado para instalar os pacotes:

```console
$ composer i
```
#### Exemplo

Segue exemplo do arquivo `composer.lock` resultante do arquivo `composer.json` de exemplo.

```json
{
    "_readme": [
        "This file locks the dependencies of your project to a known state",
        "Read more about it at https://getcomposer.org/doc/01-basic-usage.md#installing-dependencies",
        "This file is @generated automatically"
    ],
    "content-hash": "2fb0d57f8564259e089a5cc33887d17a",
    "packages": [
        {
            "name": "mkoprek/parser",
            "version": "2.1.7.1",
            "source": {
                "type": "git",
                "url": "https://github.com/mkoprek/WhichBrowser-Parser-PHP.git",
                "reference": "f397b6ae02fd3d430fcd6d02df95f0e523078ba8"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/mkoprek/WhichBrowser-Parser-PHP/zipball/f397b6ae02fd3d430fcd6d02df95f0e523078ba8",
                "reference": "f397b6ae02fd3d430fcd6d02df95f0e523078ba8",
                "shasum": ""
            },
            "require": {
                "php": ">=5.4.0",
                "psr/cache": "^1.0 || ^2.0 || ^3.0"
            },
            "require-dev": {
                "cache/array-adapter": "^1.1",
                "icomefromthenet/reverse-regex": "0.0.6.3",
                "php-coveralls/php-coveralls": "^2.0",
                "phpunit/php-code-coverage": "^5.0 || ^7.0",
                "phpunit/phpunit": "^6.0 || ^8.0",
                "squizlabs/php_codesniffer": "^3.5",
                "symfony/yaml": "~3.4 || ~4.0"
            },
            "suggest": {
                "cache/array-adapter": "Allows testing of the caching functionality"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "WhichBrowser\\": [
                        "src/",
                        "tests/src/"
                    ]
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Niels Leenheer",
                    "email": "niels@leenheer.nl",
                    "role": "Developer"
                }
            ],
            "description": "FORK - Useragent sniffing library for PHP",
            "homepage": "http://whichbrowser.net",
            "keywords": [
                "browser",
                "sniffing",
                "ua",
                "useragent"
            ],
            "support": {
                "source": "https://github.com/mkoprek/WhichBrowser-Parser-PHP/tree/2.1.7.1"
            },
            "time": "2023-11-21T12:12:16+00:00"
        },
        {
            "name": "psr/cache",
            "version": "3.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/cache.git",
                "reference": "aa5030cfa5405eccfdcb1083ce040c2cb8d253bf"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/cache/zipball/aa5030cfa5405eccfdcb1083ce040c2cb8d253bf",
                "reference": "aa5030cfa5405eccfdcb1083ce040c2cb8d253bf",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Cache\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "https://www.php-fig.org/"
                }
            ],
            "description": "Common interface for caching libraries",
            "keywords": [
                "cache",
                "psr",
                "psr-6"
            ],
            "support": {
                "source": "https://github.com/php-fig/cache/tree/3.0.0"
            },
            "time": "2021-02-03T23:26:27+00:00"
        }
    ],
    "packages-dev": [],
    "aliases": [],
    "minimum-stability": "stable",
    "stability-flags": [],
    "prefer-stable": false,
    "prefer-lowest": false,
    "platform": [],
    "platform-dev": [],
    "plugin-api-version": "2.6.0"
}
```

### Instalando dependências com o Docker

Com o script `instala_dependencias_php.sh`, é possível apenas instalar as dependências do projeto PHP (já de posse do `composer.json`). O executável adquire a imagem do Composer para Docker e somente instala os pacotes necessários, sendo o container removido assim que a tarefa termina.

### Pasta `vendor`

Todas as dependências instaladas no projeto estarão presentes na pasta `vendor`, na raiz do projeto.

### No Aplicativo

Para reutilizar os pacotes instalados pelo Composer, deve-se seguir as orientações do fornecedor do pacote, geralmente presentes na página dedicada ao pacote. No pacote utilizado nos exemplos, é preciso incluir o arquivo `autoload.php`, presente na pasta `vendor`, muitos dos pacotes disponíveis para uso podem acessados apenas incluindo esse arquivo. Segue abaixo um exemplo da utilização prática do pacote `parser` mencionado anteriormente após a instalação:

```php
<?php

require __DIR__ . '/vendor/autoload.php';

$result = new WhichBrowser\Parser($_SERVER['HTTP_USER_AGENT']);
echo 'Seu navegador eh o ' . $result->browser->name . ' e o seu SO eh o ' . $result->os->name . '.<br>';

?>

```

## Repositórios

Repositório é o local na internet onde são obtidos os pacotes para uso. Ao instalar um pacote, o Composer busca no repositório esse pacote. Por padrão o Composer é configurado para obter pacotes do repositório [Packagist](https://packagist.org/), contudo é possível configurar o aplicativo para usar outros repositórios. No site do Packagist é possível encontrar informações sobre diversos pacotes para achar aquele que melhor atende as suas necessidades. Outro exemplo de repositório é o [Private Packagist](https://packagist.com/): nele se pode utilizar e compartilhar software privado, controlando assim o acesso aos recursos disponibilizados (nesse caso, o VCS instalado deve ser configurado com chaves SSH). 

## Principais Ferramentas Relacionadas

Através do Composer, são instaladas algumas das ferramentas mais conhecidas no ambiente PHP:
- Symfony
- Laravel
- CakePHP
- Drupal

## Ferramentas Similares

### npm

npm é um gerenciador de pacotes do Node.js para compartilhar facilmente códigos em javascript. npm Registry é uma coleção de códigos abertos (os 'pacotes') que realizam diversas funções necessárias para a comunidade do Javascript. npm também é a aplicação de linha de comando utilizada pelos desenvolvedores para publicarem seu pacotes. Algumas características da API do Composer foram inspiradas no npm: como por exemplo os arquivos **package.json** + **package.lock**, bem como sua sintaxe. Saiba mais no [site oficial do npm](https://www.npmjs.com/).

### yarn

O yarn funciona de modo semelhante ao npm, também para Javascript, contudo o aplicativo supostamente é mais rápido, seguro e confiável. O yarn também permite a reinstalação de pacotes de modo offline. Para aprofundar no tema, veja o [site do Yarn](https://yarnpkg.com/).

## Referências Bibliográficas:
- [Site do Composer](https://getcomposer.org/)
- [Wikipedia](https://en.wikipedia.org/wiki/Composer_(software))
