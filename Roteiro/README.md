<h1 align="center">
    <strong>Cargo, the Rust Package Manager</strong>
</h1>

Cargo é o Package Manager (gerenciador de pacotes) da linguagem Rust. Ele baixa as dependências de pacote, as compila, faz pacotes para distribuição, e faz upload deles para o crates.io, o registro de pacotes da comunidade Rust.

<div align="center">
    <img src="https://user-images.githubusercontent.com/102993694/200188311-3480a96c-49c4-4362-8a2b-313d72a759b4.png">
</div>

<h1 align="center">
  Introdução
</h2>

O ecossistema do Rust é centrado em volta do Cargo. Um programa ou uma biblioteca são chamados de crate e são compilados usando o `rustc` (o compilador do Rust).

Caso fossemos usar o comando rustc diretamente para compilar diferentes programas dentro do mesmo projeto, teríamos que compilar cada um manualmente. Esses programas vão provavelmente usar bibliotecas externas, e fazer o versionamento delas manualmente seria um problema.

Ao invés de trabalhar apenas com crates (módulos) e o compilador do Rust (rustc), é possível evitar isso com uma abstração maior ao utilizar pacotes e um gerenciador de pacotes.

Cargo é o gerenciador de pacotes do Rust. É uma ferramenta que permite que packages no Rust declarem várias dependências e garante que você consiga sempre um binário executável e que este seja sempre o mesmo. Resumindo, uma compilação determinística.

Para isso, o Cargo passa por 4 etapas:

- Introduz dois arquivos de metadados com as informações dos packages.
- Busca e faz build das dependências.
- Invoca o compilador rustc com os parâmetros corretos para fazer a build do package.
- Introduz convenções para que trabalhar com os packages do rust seja mais facil.

Para uma grande extensão, Cargo padroniza os comandos necessários para construir um dado programa ou biblioteca; isso é um dos aspectos para as convenções mencionadas acima.

Como nós mostraremos depois, o mesmo comando pode ser usado para construir diferentes artefatos, independentemente dos seus nomes. Ao invés de invocar rustc diretamente, nós podemos invocar algo genérico como cargo build e deixar o cargo se preocupar em construir a invocação rustc correta. Além disso, Cargo vai automaticamente dar fetch de um registro quaisquer dependências que tenhamos definido para nosso artefato, e organizar para eles serem incorporados a nossa build como necessário.

<h1 align="center">
  Instalação & Configuração
</h2>

macOs and Linux:
`curl https://sh.rustup.rs -sSf | sh`

Windows:
https://win.rustup.rs/

<h1 align="center">
  Getting Started
</h2>

Para criar um novo package usamos o comando `cargo new <nome>`

Um arquivo Cargo.toml será criado, basicamente existe um arquivo deste por package, no qual será declarado informações do package. Além disso, existe uma seção de dependências do package, as quais podem ser arquivos/crates. Por padrão, serão procuradas no site crates.io.

Para efeito de ilustração usaremos o framework Rocket

Passo 1: Colocar o código no Cargo.toml
```Rust
[dependencies]
rocket = "0.4.10"
```
Passo 2: Colocar o código no main.rs
```Rust
#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> &'static str {
    "Hello, world!"
}

fn main() {
    rocket::ignite().mount("/", routes![index]).launch();
}
```
Passo 3: Criar o arquivo Rocket.toml e adicionar o código
```Rust
[development]
address = "localhost"
port = 7878

[staging]
address = "0.0.0.0"
port = 7878

[production]
address = "0.0.0.0"
port = 7878
```

Passo 4: Como o framework Rocket precisa de uma build nightly do rust, instalaremos com o comando `rustup install nightly` e usamos ela com o comando `rustup default nightly`.

Passo 5: Rodar usando o comando `cargo run`

<h1 align="center">
  Ferramentas similares
</h2>

<h2 align="center">
  NPM
</h2>

<div align="center">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Npm-logo.svg/800px-Npm-logo.svg.png" width="50%">
</div>


NPM (originalmente, a abreviação para Node Package Manager) é o Gerenciador de pacotes padrão para o ambiente de execução Javascript, Node.js. Ele consiste em um cliente de linha de comando e um banco de dados online de pacotes públicos e privados, gratuítos e pagos, chamado de NPM Registry (Registro NPM). O NPM Registry é acessado por meio do client e os pacotes disponíveis podem ser navegados e pesquisados ​​por meio do site npm. 



<h2 align="center">
  YARN
</h2>

<div align="center">
    <img src="https://classic.yarnpkg.com/assets/og_image.png" width="50%">
</div>

O Yarn foi criado a partir de uma insatisfação com o Npm, pois ele apresentava alguns contratempos, dentre eles a demora em realizar alguma instalação ou atualização de segurança. Devido a esses problemas, o Facebook (Meta), juntamente com o Google e outras empresas, desenvolveram o Yarn para ser rápido, seguro e eficiente.

O Yarn pode paralelizar, isso significa que faz a instalação apenas uma vez, resultando em um processo de instalação dos pacotes mais rápido, pois possui um cacheamento global de cada pacote instalado e, assim que você precisar instalar novamente, o Yarn irá buscar nesse cache, mudando apenas a versão. 