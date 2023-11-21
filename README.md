<h1 align="center">Docker</h1>

<h2 align="center">Introdução</h2>

<p align="justify">O desenvolvimento de sistemas web modernos frequentemente enfrenta desafios relacionados à consistência, portabilidade e eficiência na gestão de ambientes. A diversidade de configurações de sistema operacional, bibliotecas e dependências muitas vezes resulta em inconsistências que podem levar a problemas durante a implantação e execução das aplicações. É nesse contexto que o Docker se destaca como uma ferramenta revolucionária.</p>

<h3>O Problema:</h3>

<p align="justify">Antes da popularização do Docker, desenvolvedores frequentemente se deparavam com cenários onde a aplicação funcionava perfeitamente em uma máquina de desenvolvimento, mas encontrava problemas quando movida para ambientes de produção. Isso ocorria devido às diferenças nas configurações do sistema operacional, versões de bibliotecas e outras variáveis que poderiam afetar o comportamento da aplicação.</p>

<p align="justify">Além disso, o processo de configuração do ambiente de desenvolvimento muitas vezes era demorado e propenso a erros, especialmente quando equipes de desenvolvimento precisavam colaborar em projetos compartilhados.</p>

<h3>Como o Docker Propõe Resolver Esses Problemas:</h3>

<p align="justify">O Docker aborda esses desafios introduzindo o conceito de contêineres. Um contêiner é uma unidade leve e portátil que empacota todo o software necessário para executar uma aplicação, incluindo o código, bibliotecas, dependências e variáveis de ambiente. Ao encapsular todos esses elementos em um contêiner, o Docker garante que a aplicação funcione de maneira consistente em qualquer ambiente que suporte o Docker, eliminando as inconsistências entre ambientes de desenvolvimento, teste e produção.</p>

<p align="justify">Além disso, o Docker simplifica significativamente o processo de configuração do ambiente. O uso de arquivos de configuração, como o Dockerfile, permite descrever de forma declarativa o ambiente necessário para a aplicação. Isso não apenas acelera a configuração, mas também melhora a colaboração entre membros da equipe, pois todos utilizam o mesmo ambiente encapsulado no contêiner.</p>

<br>
<h2 align="center">Instalação & Configuração no Ubuntu</h2>

Passo 1: Antes de instalar o Docker, é uma boa prática garantir que os repositórios do sistema estejam atualizados.

<pre>
sudo apt update
sudo apt upgrade -y
</pre>
<br>
Passo 2: Instale os pacotes necessários para permitir que o sistema use repositórios HTTPS:

<pre>sudo apt install -y apt-transport-https ca-certificates curl software-properties-common</pre>
<br>
Passo 3: Adicione a chave GPG oficial do Docker ao sistema:

<pre>
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
</pre>
<br>
Passo 4: Adicione o repositório Docker ao sistema:

<pre>
echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
</pre>
<br>
Passo 5: Atualize os repositórios novamente e instale o Docker:

<pre>
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
</pre>
<br>
Passo 6: Adicionar seu usuário ao grupo Docker (opcional)
Para executar comandos Docker sem precisar de sudo, adicione seu usuário ao grupo docker:

<pre>
sudo usermod -aG docker $USER
</pre>

Depois de executar esse comando, faça logout e faça login novamente ou reinicie o sistema para que as alterações tenham efeito.

<br>
Passo 7: Verifique se o Docker foi instalado corretamente executando o seguinte comando:

<pre>
docker --version
</pre>

Este comando deve exibir a versão do Docker instalada.

<br>
Passo 8: Verificar se o Docker está Funcionando
Execute um contêiner de teste para garantir que o Docker esteja funcionando corretamente:

<pre>
docker run hello-world
</pre>

Isso baixará uma imagem de teste e executará um contêiner simples que imprimirá uma mensagem.
Agora, o Docker está instalado e configurado no seu sistema Ubuntu. Você está pronto para começar a utilizar contêineres para desenvolver e implantar aplicações.

<br>
<h2 align="center">Getting Started</h2>

A seguir, um guia prático para começar a usar o Docker no Ubuntu:

<br>
Passo 1: Crie um arquivo chamado Dockerfile no diretório do seu projeto. Este arquivo conterá as instruções para construir a imagem do seu aplicativo. Exemplo de um Dockerfile para uma aplicação Node.js:

<pre>
# Use uma imagem oficial do Node.js como base
FROM node:14

# Configure o diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copie o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código-fonte para o diretório de trabalho
COPY . .

# Exponha a porta 3000 para fora do contêiner
EXPOSE 3000

# Comando padrão para iniciar a aplicação
CMD ["npm", "start"]
</pre>

<br>
Passo 2: No mesmo diretório do Dockerfile, execute o seguinte comando para construir a imagem do seu projeto:

<pre>
docker build -t nome-do-seu-projeto .
</pre>
Certifique-se de substituir nome-do-seu-projeto pelo nome que você deseja dar à sua imagem.

<br>
Passo 3: Verifique as imagens disponíveis no seu sistema usando o comando:

<pre>
docker image ls
</pre>
Isso mostrará a lista de imagens, incluindo a que você acabou de criar.

<br>
Passo 4: Execute o contêiner usando o comando:

<pre>
docker run -p 3000:3000 nome-do-seu-projeto
</pre>
Certifique-se de substituir nome-do-seu-projeto pelo nome da sua imagem.

<br>
Passo 5: Para verificar se o contêiner está em execução, use o comando:

<pre>
docker ps
</pre>
Este comando mostrará os contêineres em execução, incluindo o nome, ID, portas expostas, etc.

Agora você tem um ambiente Docker configurado e um contêiner em execução com sua aplicação. Este é um ponto de partida básico, e você pode personalizar conforme necessário para o seu projeto específico.

<h2 align="center">Ferramentas similares</h2>

Podman:

Podman é uma ferramenta de gerenciamento de contêineres que se concentra em fornecer uma experiência semelhante ao Docker, mas sem a necessidade de um daemon. Ele é compatível com as imagens Docker e fornece uma alternativa leve.

Kubernetes:

Embora Kubernetes seja mais uma plataforma de orquestração do que uma ferramenta de contêiner isolada, é comumente comparado ao Docker devido à sua capacidade de gerenciar contêineres em grande escala. Kubernetes fornece um ecossistema robusto para implantar, escalar e gerenciar aplicações em contêineres.
