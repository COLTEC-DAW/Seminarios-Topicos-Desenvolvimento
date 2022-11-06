<h1 align="center">
    Cargo, the Rust Package Manager
</h1>

Cargo é o package manager da linguagem Rust. Ele baixa as dependências de pacote, as compila, faz pacotes para distribuição, e faz upload deles para o crates.io, o registro de pacotes da comunidade Rust.

<div align="center">
    <img src="https://user-images.githubusercontent.com/102993694/200188311-3480a96c-49c4-4362-8a2b-313d72a759b4.png">
</div>

<h2 align="center">
  Introdução
</h2>

O ecossistema do Rust é centrado em volta do Cargo. Um programa ou uma biblioteca são chamados de crate e são compilados usando o `rustc` (o compilador do Rust).

Caso fossemos usar o comando rustc diretamente para compilar diferentes programas dentro do mesmo projeto, teríamos que compilar cada um manualmente e em mais de um terminal, o que deixaria o comando muito elaborado e não trivial. Esses programas não triviais vão provavelmente usar bibliotecas externas e vão depender delas. 


======================================================================


Furthermore, most non-trivial programs will likely have dependencies on external libraries, and will therefore also depend transitively on their dependencies. Obtaining the correct versions of all the necessary dependencies and keeping them up to date would be laborious and error-prone if done by hand.

Rather than work only with crates and rustc, we can avoid the manual tedium involved with performing the above tasks by introducing a higher-level "package" abstraction and by using a package manager.

Enter: Cargo
Cargo is the Rust package manager. It is a tool that allows Rust packages to declare their various dependencies and ensure that you’ll always get a repeatable build.

To accomplish this goal, Cargo does four things:

Introduces two metadata files with various bits of package information.
Fetches and builds your package’s dependencies.
Invokes rustc or another build tool with the correct parameters to build your package.
Introduces conventions to make working with Rust packages easier.
To a large extent, Cargo normalizes the commands needed to build a given program or library; this is one aspect to the above mentioned conventions. As we show later, the same command can be used to build different artifacts, regardless of their names. Rather than invoke rustc directly, we can instead invoke something generic such as cargo build and let cargo worry about constructing the correct rustc invocation. Furthermore, Cargo will automatically fetch from a registry any dependencies we have defined for our artifact, and arrange for them to be incorporated into our build as needed.

It is only a slight exaggeration to say that once you know how to build one Cargo-based project, you know how to build all of them.
