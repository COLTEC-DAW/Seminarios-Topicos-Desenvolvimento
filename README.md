# Seminários: Ferramentas de Desenvolvimento
## Grupo VueJS

**Data: 24/11**

**Valor: 10 pontos**

**Grupo: 5 alunos**
- Arthur Henrique
- Caio César
- Eduardo Santos Birchal
- Gabrielle Maia
- Thales Davi

### [Vídeo de apresentação](https://drive.google.com/file/d/1GjnQkadBAJuXtxf3-kJglAG8KTYcXeLh/view?usp=sharing)

# Roteiro
## Introdução
VueJs começou a ser desenvolvido por Evan You em 2013 com o objetivo de criar um novo framework front-end que extraisse os aspectos positivos do AngularJs (tecnologia que Evan utilizava em seu trabalho) e que fosse relativamente mais simples de se aprender e de utilizar. Dessa maneira, o proposito do Vue no momento de sua criação era de permitir a criação de interfaces para a aplicativos web de forma mais fácil, intuitiva e prática do que outras tecnologias como o já citado Angular JS. 

O VueJs é utilizado para a criação de Single Page Applications (SPA's) dinâmicas. Uma SPA é um site que carrega um único documento e substitui a página existente por novos dados de um servidor web, em vez de recarregar as páginas individualmente do zero. Como resultado, o conteúdo da página é atualizado em tempo real com base nas ações do usuário, com transições rápidas e sem atualização.

Para alcançar seu objetivo, permitir a criação de SPAs dinâmicas, o VueJs, em sua versão 3, conta com uma série de recursos para isso. Dentre eles, os recursos mais relevantes que iremos abordar serão: variáveis reativas, ligação de dados (data, class and style binding), manipulação de enventos (event handling), renderização condicional (condicional rendering), componentização, criação de eventos personalizados e declaração de propriedades. Na seção Getting Started iremos nos aprofundar um pouco nesses tópicos.

## Instalação e configuração
O VueJs, no momento de escrita deste documento, apresenta duas formas de ser inserido em um projeto, através da CDN (que utiliza o [unpk](https://www.unpkg.com)) ou por meio da instalação do pacote por meio da npm. A seguir iremos abordar as duas formas de instalação.

#### Vue CDN
Para instalar o VueJs no seu projeto basta colocar o seguinte script no início do código. 
```html
<script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
```
Através dessa tag o Vue 3 (versão mais atual no momento) será importado em sua versão mais nova e já poderá ser utilizado. 

#### Vue NPM
Utilizar o Vue por meio da NPM exige como pré-requisitos o nodeJs em sua versão 16.0 ou superior. Para instalar o Node bastar acessar o seguinte link ([Download Node](https://nodejs.org/en/download/current)) escolher o instalador respectivo para as configurações da sua máquina e então abrir o instalador e seguir os passos. Vale ressaltar que para a npm funcionar é necessário habilitar, ao final da instalação dfo Node, o download das dependências.

Com isso já dito, para instalar o Vue no seu projeto por meio da NPM basta utilizar o seguinte comando no console do node:

```node
npm create vue@latest
```
No próprio console será solicitado o nome do projeto e então serão feitas algumas perguntas sobre se você deseja instalar dependencias de algumas tecnologias que você usará no projeto, se caso a tecnologia for ser usada no projeto, selecione "Yes" e pressione "Enter", se caso não for ser utilizada, escolha "No".

Após isso, basta seguir a seguinte sequência de comandos para instalar completamente o Vue e iniciar o projeto.
```Node
cd <nome-do-projeto>
npm install
npm run dev
```

Seguir esse passo a passo irá criar um projeto novo com o vue já instalado e configurado para ser utilizado.

## Getting Started
Agora com o Vue instalado é possível fazer uso dos recursos do mesmo. Assim bordaremos em tópicos as principais funcionalidades, ao nosso ver, para o desenvolvimento de um projeto VueJs. Vale lembrar que estamos utilizando o Vue por meio do pacote NPM, podem haver algumas variações das funcionalidades ao utilizar o Vue por meio da CDN, mas os conceitos se mantêm.

### Componentização
Uma das bases para o desenvolvimento com o Vue é a componentização de partes do código. Assim, não ocorrem repetições inutéis de código, pois há uma reaproveitamento de componentes utilizados em vários lugares, como um botão especial do sistema por exemplo.

Para criar um componente basta criar um arquivo .vue e adicionar a tag "template" nele e então escrever a estrutura html dentro dessa tag. Assim tudo que estiver dentro da tag "template" fará parte da estrutura do componente. Além disso, é possível adicionar tags "style" para estilização do componente e tags "script" para adicionar código ao componente. Assim a estrutura básica de um componente ficaria assim:

```Vue
<template>
    <div>
        <!-- Seu html aqui -->
    </div>
</template>

<script setup>
    // Seu código aqui
</script>

<style scoped>
    /* Seu estilo aqui */
</style>
```
Obs.: o "scoped" na tag "style" indica que o css escrito dentro da tag será aplicado apenas para o componente.
Obs.: o "setup" na tag "script" indica o momento em que o script é renderizado dentro do lifecycle (tempo de vida) do componente. Não iremos abordar essa parte, mas por motivos de completude do conteúdo segue uma image com o lifecycle dos componentes do vue:
<img src="https://vuejs.org/assets/lifecycle.16e4c08e.png" width="600" height="900" />

Assim, após criar o componente basta importar o arquivo e chama-ló em outra parte do código no formato de tag html. A seguir segue um exemplo utilizando o componente teste em outro componente:
```Vue
<template>
    <div>
        <Teste />
    </div>
</template>

<script setup>
//caminho até o componente
import Teste from './teste.vue';

</script>

<style scoped>
</style>
```

### Ligação de Dados (Binding)
Uma das funcionalidades principais do VueJs é a ligação de dados (binding), ela facilita a criação de SPAs permitindo que as telas sejam dinãmicas e facilitando a conexão entre o que é exibido na tela e o código por trás dela. Dessa forma, optamos por dividir em três categorias de ligação: Data, style e class binding.

- #### Data Binding
    É possível conectar os dados de uma variável do código com um elemento da tela. Para isso existem várias formas, mas as mais usadas e comuns são:
  - Mustache Notation
      ```Vue
      <template>
        <div>
            <p>
              Say: {{ msg }}
            </p>
        </div>
    </template>
    
    <script setup>
    const msg = "Hello World!";
    </script>
    
    <style scoped></style>
      ```
      "Mustache" notation se refere a essa anotação que utiliza "{{ variável }}". Nesse exemplo, após o "Say:" será exibido o valor da variável msg ("Hello World!").
    
  - v-model
      Para alguns casos mais especificos, como ligar uma variável um input do html, é necessário utilizar a directiva v-model que permite vincular uma variável a um campo input.
      ```Vue
        <template>
            <div>
                <input type="text" v-model="name">
            </div>
        </template>
        
        <script setup>
        const name = "Carolus";
        </script>
        
        <style scoped></style>
      ```

      Graças ao v-model, ao renderizar o componente na página irá aparecer no input o valor da variável name ("Carolus"). Porém, vale ressaltar que o uso do v-model é, no geral, para a criação de um ligação de mão dupla (two-way biding), mas para que isso seja possível teriamos que utilizar variáveis reativas. Dessa forma, retornaremos nesse exemplo na seção destinada as variáveis reativas. Ou seja, da forma atual desse código, o input começará com o valor da variável, mas alterações no input pelo usuário não afetarão a variável.
    
- #### Class
    Além da ligação de data, é possível fazer ligações de classe. Segue um exemplo abaixo.
  
    ```Vue
        <template>
        <div>
          <p :class="{ 'text-red' : expression }">Text</p>
        </div>
        </template>
        
        <script setup>
        const expression = true;
        </script>
        
        <style scoped>
        .text-red {
            color: red;
        }
        </style>
    ```

    O atributo ":class", permite que classes sejam adicionadas de forma dinâmica. Se a expressão for verdadeira, como é o caso do exemplo, a classe será vinculada a respectiva tag. No exemplo acima o texto ficará vermelho, pois a classe será atribuida devido ao fato de a variável "expression" ser igual a true.

  
- #### Style
    Seguindo a mesma lógica da ligação anterior, é possível atribuir inline styles para elementos de forma dinâmica.
    ```Vue
        <div :style="{ color: activeColor, fontSize: fontSize + 'px' }"></div>
    ```

### Variáveis Reativas
Para a criação de SPAs, o Vue conta com variáveis reativas que permitem uma ligação de via dupla (two-way biding) que podem ter seus valores alterados dependendo de interações do usuário com a interface do site. Segue um exemplo: 

```Vue
<template>
    <div>
      <input type="text" v-model="name">
      <p>{{ name }}</p>
    </div>
</template>

<script setup>
import { ref } from 'vue';

const name = ref("Insert your name");
</script>

<style scoped>
</style>
```

Nesse exemplo, o texto que aparece na tag "p" irá mudar de acordo com o que o usuário escrever no campo input, pois a variável além de definir o valor inicial do input, está ligada a ele de forma que alterações feitas no input saerão replicadas na própria variável. 

Para isso, é possível criar variáveis reativas de duas formas, principalmente, por meio da função ref e da função reactive. No geral a função ref é melhor para casos mais simples, como o do exemplo, e a função reactive é melhor para casos mais complexos. A função ref permite iniciar a variável diretamente e a função reactive permite criar variáveis por meio de um Object. Abaixo segue o exemplo anterior com a função reactive ao invés da função ref.

```Vue
<template>
    <div>
      <input type="text" v-model="nameStatus.name">
      <p>{{ nameStatus.name }}</p>
    </div>
</template>

<script setup>
import { reactive } from 'vue';


const nameStatus = reactive({
  name: "Insert your name"
});
</script>

<style scoped>
</style>
```

### Renderização Condicional (Condicional Rendering)
O Vue permite também a adição de renderização condicional, renderizar partes especificas do código dependendo de certas condições. Dessa forma, a criação de páginas interativas e de SPAs no geral se torna muito mais prática. Segue um exemplo de uso:

```Vue
<template>
    <div>
      <input type="text" v-model="nameStatus.name">
      
      <p v-if="nameStatus.name === 'Hello World!'">
        Segredo desbloqueado: {{ nameStatus.name }}
      </p>
      <p v-else-if="nameStatus.name === ''">
        Há um segredo para ser descoberto. Tente!
      </p>
      <p v-else>
        Você tá quase lá! Continue tentando
      </p>
    </div>
</template>

<script setup>
import { reactive } from 'vue';


const nameStatus = reactive({
  name: ''
});
</script>

<style scoped>
</style>
```

Nesse exemplo, se o usuário deixar o input em branco irá aparecer a segunda tag "p", se o usuário escrever uma senha errada irá aparecer a última tag "p" e se o usuário escrever "Hello World!" irá aparecer a primeira tag "p".
  
### Manipulação de Eventos (Event Handling)
O Vue permite também a manipulação de eventos como o click, mouse in, mouse out e outros eventos ([lista para todos os eventos do vue](https://www.javatpoint.com/vue-js-events)). Segue um exemplo simples de manipulação de eventos:

```Vue
<template>
    <div>
      <h1>Number: {{ numberRandom }}</h1>
      <button @click="clickFunc">Random It</button>
    </div>
</template>

<script setup>
import { ref } from 'vue';

const numberRandom = ref(42);

const clickFunc = () => {
  numberRandom.value = Math.round(Math.random() * 100);
}

</script>

<style scoped>
</style>
```

Nesse exemplo, ao pressionar o botão irá disparar o evento click que chamará o "@click" do Vue e então irá chamar a função que gera um número aleatório. 

### Criação de Eventos Personalizados
Como citado anteriormente, é possível manipular eventos com o VueJs, porém, além de manipular os eventos que já existem, em muitos casos, é útil a emissão de eventos customizados para um determinado componente. Para exemplificar melhor, iremos fazer com que o componente emita um evento customizado sempre que um número for gerado no exemplo anterior:
Componente de teste:
```Vue
<template>
    <div>
      <h1>Number: {{ numberRandom }}</h1>
      <button @click="clickFunc">Random It</button>
    </div>
</template>

<script setup>
import { ref } from 'vue';

const emit = defineEmits(['number-generated']);

const numberRandom = ref(42);

const clickFunc = () => {
  numberRandom.value = Math.round(Math.random() * 100);
  emit('number-generated', numberRandom.value);
}

</script>

<style scoped>
</style>
```

View que utiliza o componente:
```Vue
<Teste @number-generated="(number) => console.log(number)"/>
```

Nesse novo caso, toda vez que o metodo clickFunc é chamado, é emitido o evento "number-generated" e passa o número gerado como parametro do evento. Assim, fora no parent (compomente que utiliza o nosso componente teste) é possível acessar esse evento para adicionar uma lógica extra. No nosso exemplo, sempre que um número é gerado ele é escrito no console do navagador. Vale a pena ressaltar que é possível, ao invés de escrever a lógica diretamente na directiva, passar o nome da função que será usada.

### Declaração de Propriedades
Além das funcionalidades citadas anteriormente, é possível atribuir propriedades para um componente para que ele se torne mais versátil e geralmente, para passar informações de uma parte do código para outra. Segue um exemplo ainda, utilizando o nosso componente teste:

Componente teste:
``` Vue
<template>
    <div>
      <h1>Number: {{ numberRandom }}</h1>
      <button @click="clickFunc">Random It</button>
    </div>
</template>

<script setup>
import { ref } from 'vue';

const emit = defineEmits(['number-generated']);

const props = defineProps({
  // Prop
  startNumber: {
    type: Number,
    required: false,
    default: 42
  }
})

const numberRandom = ref(props.startNumber);

const clickFunc = () => {
  numberRandom.value = Math.round(Math.random() * 100);
  emit('number-generated', numberRandom.value);
}

</script>

<style scoped>
</style>
```
Obs.: a tag required da propriedade startNumber define se ela é obrigatória de ser passada ou não e as demais são autoexplicativas.


Chamando o componente:
``` Vue
<Teste 
  :startNumber="25"
  @number-generated="(number) => console.log(number)"
/>
```

Agora além de escrever no console o numéro gerado, estamos passando qual número deve ser o número inicial. Um componente pode ter várias props e o tipo delas podem ser dos mais diversos. Dessa forma, os componentes podem ser extremamente versáteis, o que evita repetição desnecessária no código. 


## Ferramentas similares
- React:
    O React (também denominado React.js ou ReactJS) é uma biblioteca front-end JavaScript de código aberto com foco em criar interfaces de usuário em páginas web. Ele foi criado em 2011 pelo Facebook, com a criação de views declarativas e baseando-se em componentes, possuía o intuito de otimizar a atualização e a sincronização de atividades simultâneas no feed de notícias da rede social e melhorar a manutenção de código. E atualmente é mantido pelo Facebook, Instagram, outras empresas e uma comunidade de desenvolvedores individuais. É utilizado nos sites da Netflix, Imgur, Feedly, Airbnb, SeatGeek, HelloSign, Walmart e outros.

  ([Página oficial do React](https://pt-br.legacy.reactjs.org)).

- Angular:
    AngularJS é um framework JavaScript código aberto, mantido pelo Google, que auxilia na execução de single-page applications. Seu objetivo é aumentar aplicativos que podem ser acessados por um navegador web, foi construído sob o padrão model-view-view-model (MVVM), em um esforço para facilitar tanto o desenvolvimento quanto o teste dos aplicativos. A biblioteca lê o HTML que contém atributos especiais e então executa a diretiva na qual esta tag pertence, e faz a ligação entre a apresentação e seu modelo, representado por variáveis JavaScript comuns. O valor dessas variáveis JavaScript podem ser setadas manualmente, ou via um recurso JSON estático ou dinâmico.

  ([Página oficial do Angular](https://angularjs.org)).
