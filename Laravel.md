<h1 align="center"><b>Laravel</b></h1>

<b>Grupo:</b>
* [João Pedro Neffa](https://github.com/neffahr)
* [Julia Almeida Luna](https://github.com/Julialunna)
* [Lorena Ricoy Martins](https://github.com/lorenaricoy)
* [Igor Barroso Almeida](https://github.com/IgorBarrosoAlmeida)
* [Leandro Rodrigues Marques](https://github.com/leandro-rodrigueds)
<br>

## Introdução

Com o nome de “Framework PHP para os artesãos da web”, o Laravel tem diversas funcionalidades e 
recursos interessantes, resolvendo uma série de desafios comuns enfrentados por desenvolvedores 
web ao criar e manter projetos.

Algumas funções muito úteis que podemos encontrar nesse framework PHP são:
* A utilização de um sistema modular para gerenciamento de dependências, ou seja, separando-as em módulos;
* Diferentes formas de conexão;
* Acesso a banco de dados relacionais (Object-Relational Mapping ou ORM);
* Motor próprio de templates para criação de interfaces;
* Programas e serviços criados para facilitar a publicação e manutenção de sistemas criados;
* Implementação nativa do gerenciador de dependencias Composer;
* Facilita a escalabilidade do sistema;
* Workflow e completo;
* Documentação útil e organizada;
* Por ser mais popular, é mais fácil de encontrar soluções na internet;
* Outras funcionalidades como Blade, Elixir, Homestead, Migrations e Artisan.

<div align="center"><img src="laravel.png" style="width:20%"></div>

Outro ponto funcional é que o framework é baseado na arquitetura MVC, ou Model-View-Controller, 
que é um padrão de arquitetura de software para reutilização de código. O nome se dá por conta 
da divisão de um sistema em 3 camadas: modelo, visão e controle. Enquanto a primeira está 
relacionada ao banco de dados, a segunda vincula-se dos dados e das páginas e a última é responsável 
pela conexão e transmissão de informações entre modelo e visão.
<br><br>

## Instalando o Laravel

Para baixar o Laravel e começar a trabalhar com ele em seu computador, você pode seguir estes passos básicos. 
Certifique-se de ter o PHP e o Composer instalados antes de começar.

### Pré-requisitos
PHP 8.2: O Laravel requer o PHP instalado em seu sistema. Você pode baixar o PHP em [php.net](https://www.php.net)

Git: Sistema de controle de versões distribuído. Baixe em [git-scm.com](https://git-scm.com)

Composer: O Composer é uma ferramenta de gerenciamento de dependências para PHP. Você pode baixar o Composer em [getcomposer.org](https://getcomposer.org).

<div align="center"><img src="git.png" style="width:20%"><img src="composer.png" style="width:20%"></div>

### Passos para baixar o Laravel
Instale o Composer:
Siga as instruções no site do Composer para instalar a ferramenta em seu sistema.

Abra o terminal ou prompt de comando: Abra o terminal no Linux ou macOS, ou o prompt de comando no Windows.

Execute o seguinte comando para instalar o Laravel:

<code>composer global require "laravel/installer"</code>

Certifique-se que a instalação ocorreu de forma correta e você exportou o Laravel para o seu $PATH (se necessário) utilizando o comando:
 <code>laravel -v</code>
 
A versão do Laravel que foi instalada deve ser mostrada.
<br><br>

## Primeiro Projeto com Laravel

Após ter o Laravel instalado podemos começar a utilizá-lo, para criarmos um novo projeto seja
um site ou aplicação devemos utilizar o comando <code>new</code>, seguido pelo nome do projeto, por exemplo:

<code>laravel new meu-primeiro-site</code>

Aguarde o Composer realizar o download e configurar todas as dependências do projeto (isso pode demorar um pouco, depende da sua internet).

Ao término das configurações uma pasta com o nome do projeto deve ter sido criada no local 
onde você rodou o comando new, no nosso caso, uma pasta chamada meu-primeiro-site foi criada. 
Abrindo essa pasta em um editor de código (por exemplo o VS Code) podemos ver a seguinte estrutura:

<div align="center"><img src="prompt1.jpeg" style="width:20%"></div>
<br>

Sim, note que tem bastante pastas e arquivos, essa é a estrutura padrão de um projeto criado com 
Laravel, cada pasta e arquivo tem sua finalidade.

### Subindo um Site

Assim como todos os outros CLI (Command-Line Interface), o Laravel também possuí um comando para 
subir o servidor do projeto, podemos fazer isso utilizando o comando:

<code>php artisan serve</code>

Onde devemos ter a seguinte resposta:

<img src="prompt2.jpeg" style="width:100%">

Basicamente a resposta está dizendo:

Seu servidor Laravel de desenvolvimento está rodando localmente (127.0.0.1) na porta 8000, para 
acessar o projeto vá até o endereço http://127.0.0.1:8000 em seu navegador.
Também podemos acessar via http://localhost:8000, pois, localhost seria como um “DNS” (apelido) para o IP 127.0.0.1.

Acessando o seguinte endereço em nosso navegador devemos ver algo parecido com:

<img src="site.png" style="width:100%">

### Criando Rotas e Views
Agora, vamos criar uma rota e uma view simples.

Abra o arquivo "routes/web.php" e adicione a seguinte rota:

<pre><code>use Illuminate\Support\Facades\Route;
Route::get('/minhapagina', function () {
 return view('minhaView');
});
</code></pre>

Essa rota responde a uma requisição GET para "/minhapagina" e retorna a view chamada "minhaView".

Agora, crie a view. Vá até a pasta "resources/views" e crie um arquivo chamado "minhaView.blade.php" com o seguinte conteúdo:

```
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Minha Página</title>
</head>
<body>
 <h1>Olá, Laravel!</h1>
 <p>Esta é a minha primeira página com Laravel.</p>
</body>
</html>
```

Agora, se você acessar http://seu-domínio/minhapagina no navegador, verá a página com a mensagem "Olá, Laravel!".

Lembrando que este é apenas um exemplo básico. Laravel oferece muitas funcionalidades poderosas
para desenvolvimento web, como Eloquent (um ORM), Blade (um mecanismo de template), middleware,
entre outros. Essa estrutura básica pode ser expandida para criar aplicativos mais complexos.
<br><br>
      
## Ferramentas Similares

Duas ferramentas similares ao Laravel são o Symfony (PHP) e o Django (Python). Symfony é um
framework PHP robusto, amplamente utilizado para o desenvolvimento web, com uma arquitetura 
flexível e modular. Django, por outro lado, é um framework web Python que segue o princípio 
"batteries-included", oferecendo uma grande variedade de funcionalidades integradas. Ambos os 
frameworks têm comunidades ativas e são adequados para o desenvolvimento web, embora o Laravel 
se destaque pela sua elegância e sintaxe expressiva em PHP.
<br><br>

## Referencias
[https://hcode.com.br/blog/instalando-e-configurando-o-laravel-no-windows-linux-e-mac](https://hcode.com.br/blog/instalando-e-configurando-o-laravel-no-windows-linux-e-mac)

[https://www.youtube.com/watch?v=4oxjaQCJRaA](https://www.youtube.com/watch?v=4oxjaQCJRaA)

[https://www.youtube.com/watch?v=W33t7M2ZXoU&t=4s](https://www.youtube.com/watch?v=W33t7M2ZXoU&t=4s)

[https://satellasoft.com/artigo/php/como-criar-e-rodar-um-projeto-no-laravel](https://satellasoft.com/artigo/php/como-criar-e-rodar-um-projeto-no-laravel)
