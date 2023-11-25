# Seminários: Ferramentas de Desenvolvimento


**Data: 24/11**

**Valor: 10 pontos**

**Grupo: 5 alunos**

---

Esse seminários tem como objetivo apresentar aos colegas de turma as ferramentas existentes para o desenvolvimento de sistemas web. 
Para isso seu grupo deverá realizar uma pesquisa sobre um dos temas propostos e elaborar uma apresentação sobre o tema escolhido.

O trabalho de seu grupo deverá ser dividido em duas partes: Roteiro e Apresentação

## [Video de Apresentação](https://drive.google.com/drive/folders/12MAahZmYp3tEnd6CaqAsigVo3S3a_BlH?usp=sharing)

## Roteiro

## Introdução


![540px-Npm-logo svg](https://github.com/thayrelan/Seminarios-Topicos-Desenvolvimento/assets/104568023/6e8959f5-d49a-493f-b9ac-20fb5cb5d872)





O NPM foi concebido em 2009 por Isaac Z. Schlueter como uma solução para os desafios enfrentados pelos desenvolvedores na gestão de dependências em projetos JavaScript. Naquela época, a falta de uma ferramenta unificada para gerenciar bibliotecas e módulos tornava a colaboração e a construção de projetos mais complexas.

Isaac criou o NPM para suprir essa lacuna, oferecendo uma maneira eficiente e organizada de compartilhar, instalar e gerenciar dependências em projetos JavaScript. Ao longo dos anos, o NPM evoluiu, tornando-se uma parte essencial do ecossistema JavaScript, utilizado por milhões de desenvolvedores em todo o mundo.

O NPM, ou Node Package Manager, é um gerenciador de pacotes que abrange não apenas o Node, mas o JavaScript como um todo, conforme definido pelo site oficial (npmjs.com). Independentemente da aplicação, seja backend, frontend, mobile ou outras, o NPM facilita a instalação de pacotes JavaScript. Mesmo ao utilizar frameworks front-end, como React ou Next, que incorporam elementos do Node, a presença do Node é ubíqua, justificando a denominação do NPM. Em resumo, o NPM é o gerenciador de pacotes JavaScript.

Define-se um gerenciador de pacotes como uma ferramenta de software projetada para simplificar a instalação, atualização, configuração e remoção de bibliotecas, frameworks e outras dependências em um projeto de software. Exemplos incluem NPM para JavaScript/Node.js, pip para Python, Composer para PHP, Maven para Java, entre outros.

## Instalação e Configuração

A instalação do NPM é realizada por meio do site nodejs.org/en, que detecta automaticamente o sistema operacional do usuário. O NPM é incorporado ao Node, sendo altamente recomendável instalá-los em conjunto. No caso do Windows, sugere-se utilizar o instalador específico para esse sistema, evitando a necessidade de descompactação manual.

Para instalar o Node.js e o NPM (Node Package Manager) no MacOS usando o Homebrew, você pode utilizar o seguinte comando no terminal:

`brew install node`

Esse comando instalará tanto o Node.js quanto o NPM. O Homebrew cuidará da instalação e configuração, tornando o processo mais simples e gerenciável. Certifique-se de ter o Homebrew instalado no seu sistema antes de executar esse comando. Se você ainda não tem o Homebrew instalado, pode instalá-lo com o seguinte comando:

`/bin/bash -c "$(curl-fsSLhttps://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Após a instalação, você pode usar o comando brew update para garantir que o Homebrew esteja atualizado. Em seguida, execute brew install node para instalar o Node.js e o NPM no seu sistema MacOS.


No Linux, o método para instalar o Node.js e o NPM pode variar um pouco dependendo da distribuição. Abaixo estão instruções para algumas distribuições populares:

(Ubuntu ou Debian)
```
sudo apt update
sudo apt install nodejs
sudo apt install npm
```

(Fedora)
```
sudo dnf install nodejs
sudo dnf install npm
```


Verifique a instalação bem-sucedida com os comandos "node -v" e "npm -v" no terminal, os quais devem apresentar números indicando êxito. Caso contrário, recomenda-se revisitar os passos anteriores.

## Getting Started

Para iniciar o uso do NPM, execute o comando "npm init", cujo propósito será detalhado. O ponto de entrada (entry point) padrão é definido como "helloworld.js". Após essa etapa, ao verificar as dependências com "npm ls", constata-se a ausência de pacotes.

Demonstrando a utilidade do NPM, a instalação e utilização do pacote "Colors" é exemplificada. Este repositório de códigos validados e documentados ilustra a vasta gama de recursos disponíveis. Adicionalmente, é enfatizado o cuidado ao selecionar pacotes sem documentação.

![Foto Ilustrativa](https://github.com/thayrelan/Seminarios-Topicos-Desenvolvimento/assets/104568023/ab8c9d73-e232-4d2c-b162-9def66859259)


Suas principais funcionalidades incluem:

1. Instalação de Pacotes:
    `npm install <nome-do-pacote>`

2. Gestão de Dependências:
   `npm install`

3. Instalação Global de Pacotes:
  `npm install -g <nome-do-pacote>`

4. Criação de um Projeto NPM:
    `npm init`
   
6. Atualização de Pacotes:
  `npm update <nome-do-pacote>`

7. Remoção de Pacotes:
  `npm uninstall <nome-do-pacote>`

8. Listagem de Pacotes Instalados:
   `npm list`

9. Pesquisa de Pacotes:
  `npm search <termo-de-busca>`

10. Publicação de Pacotes:
   `npm publish`

Essas são apenas algumas das funcionalidades do NPM. Ele desempenha um papel crucial na gestão de dependências, automação de tarefas e facilitação do desenvolvimento JavaScript em projetos Node.js e em outras áreas do ecossistema web.


## Exemplos práticos

Como exemplo prático, considere a criação de um simples site de lista de compras. O pacote "date-fns" é incorporado para facilitar manipulações de datas em JavaScript, exemplificando sua aplicação em registrar o horário de adição de itens à lista.

![Foto Ilustrativa](https://github.com/thayrelan/Seminarios-Topicos-Desenvolvimento/assets/104568023/da83b1fd-a2b8-4e38-8023-37dd4ed732fb)



## Ferramentas Similares

Além do NPM, existem outras ferramentas notáveis no ecossistema de gerenciamento de pacotes JavaScript, cada uma oferecendo abordagens únicas para atender às necessidades dos desenvolvedores. Duas dessas ferramentas são Yarn e pnpm.

1. Yarn:
   - Rapidez e Eficiência:
     Yarn é conhecido por sua rapidez e eficiência no gerenciamento de pacotes. Ele utiliza um cache local para armazenar versões baixadas, reduzindo significativamente o tempo necessário para instalar dependências.
   - Bloqueio de Versões:
     Yarn introduz a funcionalidade de "yarn.lock", um arquivo de bloqueio que garante a consistência nas versões das dependências entre diferentes ambientes de desenvolvimento.


2. pnpm:
   - Otimização de Espaço em Disco:
     O pnpm destaca-se pela otimização do uso de espaço em disco. Ao compartilhar dependências entre projetos, ele cria links simbólicos, evitando a duplicação de módulos e economizando espaço.
   - Velocidade de Instalação:
     Com sua abordagem inovadora de links simbólicos, o pnpm oferece instalações mais rápidas, especialmente quando várias aplicações compartilham as mesmas dependências.
     

A escolha entre NPM, Yarn e pnpm geralmente depende das preferências da equipe de desenvolvimento e dos requisitos específicos do projeto. Cada ferramenta oferece seus próprios conjuntos de recursos e vantagens. A flexibilidade de escolher a ferramenta mais adequada para um projeto específico contribui para a eficiência global na gestão de dependências e no desenvolvimento de software.


## Conclusão

Em conclusão, o NPM é uma ferramenta vital na comunidade de desenvolvimento, oferecendo praticidade, confiabilidade e uma vasta gama de recursos. Este guia visa proporcionar compreensão e interesse.


## Referências

Agradecemos aos canais do YouTube Professor [José de Assis](https://www.youtube.com/@ProfessorJosedeAssis) e [Daniel Berg](https://www.youtube.com/@DanielBergholz) por contribuírem para nosso entendimento sobre o NPM.
[Documentação NPM](https://docs.npmjs.com/)
[NPM GitHub](https://github.com/npm/cli)
[Guia para iniciantes no NPM](https://www.freecodecamp.org/news/a-beginners-guide-to-npm-the-node-package-manager-3503c3dcf2ad/)


