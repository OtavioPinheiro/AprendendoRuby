# Linguagem Ruby
Aprendendo Ruby por meio de vídeos tutoriais.

# Tópicos
- [O que é Ruby?](#o-que-é-ruby)
- [Começando o estudo](#começando-o-estudo)
  
# O que é Ruby?
A linguagem Ruby é uma linguagem dinâmica, *open source* com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita. O criador da linguagem Ruby é Yukihiro "Matz" Matsumoto.

## Executando...
Para executar programas em Ruby usa-se o comando:
```
ruby arquivo.rb
```

## Regras da linguagem
1. Ruby não faz converção automática para string quando usamos as funções `puts` e `print`, ou seja, se quero exibir um número na tela concatenado com um texto, devo **transformá-lo em string primeiro**.
2. Operações matemáticas envolvendo dois números inteiros (int), sempre retornará um número inteiro. Operações matemáticas envolvendo dois números flutuantes (float), sempre retornará um número flutuante. E operações matemáticas envolvendo um número inteiro e um número flutuante, o resultado será apresentado como número flutuante.

# Boas práticas
1. Normalmente é utilizado o padrão snake case para nomear variáveis. Exemplo: `nome_do_cachorrinho`

# Variáveis
Variáveis em Ruby podem ser declaradas das seguintes formas:
```
  nome_do_personagem = "Snow"
  idade_do_personagem = "20"
```
# Receber informações do usuário
Para guardar uma informação recebida pelo usuário, ou seja, um input, utiliza-se a função `gets()`. Caso seja necessário ignorar o *"Enter"* pressionado ao final do input, utiliza-se a função `gets.chomp()`.

**Importante:**
- Quando colocamos alguma informação em Ruby usando ***gets***, Ruby converterá a informação para ***string*** automáticamente.

# Converter para inteiro ou para float
- Para converter uma ***string*** ou um ***float*** para inteiro usamos o `.to_i`.
<br>**Exemplo:**
  <pre><code>
  num_txt = "50"
  num = num_txt.to_i
  </code></pre>

- Para converter uma ***string*** para float usamos o `.to_f`.
<br>**Exemplo:**
  <pre><code>
  num_txt = "50.55"
  num = num_txt.to_f
  </code></pre>

# Condicionais
Tipo de estrutura de controle que executa um trecho de código dependendo do resultado de uma condição.
- ***If:*** Expressão que verifica se uma condição é verdadeira e, a partir desse resultado, determina se as instruções dentro do seu corpo serão ou não executadas.
  **Exemplo:**
  ```rb
  dia = "domingo"

  if dia == "domingo"
    almoco = "churrasco"
  end

  puts "O almoço de hoje é #{almoco}!"
  ```
- ***Else:*** Informa o que fazer quando a condição de uma instrução *if* for falsa.
  **Exemplo:**
  ```rb
  dia = "segunda-feira"

  if dia == "domingo"
    almoco = "churrasco"
  else
    almoco = "normal"
  end

  puts "O almoço de hoje é #{almoco}!"
  ```
- ***Elsif:*** Utilizado quando há a necessidade de verificar mais de uma condição em um *if*.
  **Exemplo:**
  ```rb
  dia = "sexta-feira"

  if dia == "domingo"
    almoco = "churrasco"
    janta = "churrasco"
  elsif dia == "sexta-feira"
    almoco = "normal"
    janta = "pizza"
  else
    almoco = "normal"
    janta = almoco
  end

  puts "O almoço de hoje é #{almoco}!"
  puts "A janta de hoje é #{janta}!"
  ```
- ***Unless:*** É executado quando a condição for falsa, ou seja, é uma expressão que verifica se uma condição é falsa.
  **Exemplo:**
  ```rb
  dia = "sábado"

  unless dia == "domingo"
    almoco = "normal"
  end

  puts "O almoço de hoje é #{almoco}!"
  ```
- ***Case:*** Semelhante ao *if*. Usado em situações com diversas condições.
  **Exemplo:**
  ```rb
  puts "Digite o número dos mês em que você nasceu:"

  mes = gets.chomp.to_i

  case mes
  when 1..3
    puts "Você nasceu no começo do ano"
  when 9..12
    puts "Você nasceu no final do ano"
  when 4..6
    puts "Você nasceu na primeira metade do ano"
  when 7..9
    puts "Você nasceu na segunda metade do ano"
  else
    puts "Não foi possível identificar"
  end
  ```

# Iterações
Tipo de estrutura de controle que gerencia quantas vezes um trecho de código será executado.
- ***For:*** Usado para percorrer uma coleção de elementos.
  **Exemplo:**
  ```rb
  frutas = ["morango", "uva", "maracujá", "kiwi"]

  for fruta in frutas
    puts fruta
  end
  ```
- ***While:*** Instrução que repete um bloco de código enquanto sua condição for verdadeira.
  **Exemplo:**
  ```rb
  x = 1

  while x < 10
    puts x
    x += 1
  end
  ```
- ***Times:*** Executa uma repetição por um determinado número de vezes.
  **Exemplo:**
  ```rb
  10.times do
    puts "olá"
  end
  ```
- ***Do/While:*** Ele cria um laço de repetição que só é parado quando encontra uma instrução *break*.
  **Exemplo:**
  ```rb
  contador = 1
  loop do
    puts contador
    break if contador == 10
    contador += 1
  end
  ```

# Collections
Collections (coleções), na programação, representa um conjunto de dados semelhantes em uma única unidade.
Tipos de collections:
- **Arrays**
  - Declaração:
  `estados = []`. Cria um array vazio.
  - Adicionando elementos no final do array: `estados.push("São Paulo")`
    - Múltiplos elementos: `estados.push('Minas Gerais', 'Rio Grande do Sul', 'Bahia', 'Espírito Santo')`
  - Adicionando elementos no ínicio do array:
    `estados.insert(0, 'Acre', 'Amapá')`
    <br>**OBS.:** Na função insert é necessário informar qual o índice que se deseja adicionar os elementos e em seguida informar quais os elementos.
  - Acessando os elementos:
  Basta informar o índice do elemento desejado. **Exemplo:** `estados[2]`
  - Edição:
  Para editar o conteúdo de um dos elementos do array, basta informar o índice do elemento e sobrescrevê-lo.
  **Exemplo:**`estados[3] = Paraná`
    - Intervalos:
  Pode-se trabalhar com intervalos com os *arrays*. **Exemplo:** `estados[0..5]`
  - Funções úteis:
    - `estados.first` seleciona o primeiro elemento do *array* e `estados.last` seleciona o último elemento do array.
    - `estados.count` conta os elementos do array.
    - `estados.empty?` verifica se o array está vazio, se estiver retorna *true*, senão *false*.
    - `estados.include?('São Paulo')` verifica se no array há o elemento São Paulo, se estiver retorna *true*, senão retornará *false*.
  - Deletar elementos:
    - `estados.delete_at(2)`. Irá deletar o elemento que está na posição 2 do array.
    - `estados.pop`. Irá remover o último elemento do array.
    - `estados.shift`. Irá deletar o primeiro elemento do array.
- **Hashes**
  A diferença entre *Hashes* e *Arrays* é quando se trata de *Hash*, não acessamos os elementos passando o índice e sim passando o valor, assim como são os dicionários em Python ou os JSON em JavaScript.
  - Declaração:
    - `capitais = Hash.new` ou `capitais = {}`
  - Atribuição:
    - `capitais = {acre: 'Rio Branco', sao_paulo: 'São Paulo'}`
  - Adicionando novos elementos:
    - `capitais[:minas_gerais] = "Belo Horizonte"`
  - Funções úteis:
    - Exibir todos os valores: `capitais.values`
    - Exibir todas as chaves: `capitais.keys`
    - Selecionar um elemento: `capitais[:sao_paulo]`
    - Contar a quantidade de elementos: `capitais.size`
    - Verificar se está vazio: `capitais.empty?`
  - Deletar um elemento:
    - `capitais.delete(:acre)`
- **Iterações em Collections**
  - **EACH:**
    - Percorre uma coleção de forma parecida ao ***for***, não sobrescrevendo o valor de variáveis fora da estrutura de repetição. **Exemplo:**
    ```rb
    nomes = ["Gleissicléia", "Marium", "Tomtom"]
    
    nome = "John John"

    nomes.each do |nome|
      puts nome + ' é o meu nome.'
    end

    puts nome
    ```

    ```rb
    aulas = {'Aula 1' => 'ok', 'Aula 2' => 'ok',
    'Aula 3' => 'ok', 'Aula 4' => 'ok', 'Aula 5' => 'nok'}

    aulas.each do |key, value|
      puts "#{key} #{value}"
    end
    ```

  - **MAP:**
    - Cria um array baseando-se em valores de outro array existente.

    **Exemplo:**
    ```rb
    puts "\n Executando .map multiplicando cada item por 2"
    # .map não altera o conteúdo do array original
    new_array = array.map do |a|
      a * 2
    end

    puts "\n Array Original"
    puts "#{array}"

    puts "\n Novo Array"
    puts "#{new_array}"

    puts "\n Executando .map! Multiplicando cada item por 2"
    # .map! força o conteúdo do array original seja alterado
    array.map! do |a|
      a * 2
    end

    puts "\n Array Original"
    puts " #{new_array}"
    puts ''
    ```
  - **SELECT:**
    - Realiza uma seleção de elementos presentes em uma collection através de uma condição pré definida. Traz como resultado somente os valores que passam nesta condição. **Exemplo:**
    ```rb
    array = [1, 2, 3, 4, 5, 6]

    selection = array.select do |a|
      a >= 4
    end

    puts selection
    ```

    ```rb
    hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'três'}

    puts 'Selecionando keys com valor maior que 0'
    selection_key = hash.select do |key, value|
      key > 0 #pode substituir por true ou false
    end

    puts selection_key
    ```

# Métodos
Métodos são uma forma de organizar instruções em um programa, permitindo que trechos de códigos sejam reutilizados.

**Exemplo:**
```rb
def hello(name)
  puts "Olá #{name}"
end

hello "Leonardo"
hello "Flávia"
```
**Observações:**
- É necessário chamar o método para que ele seja executado.
- É possível atribuir a função parâmetros não obrigatórios. Então caso o método seja chamado e nenhum parâmetro seja passado a ele, ele utilizará o valor padrão.
  
  **Exemplo:**
  ```rb
  def signal(color = 'vermelho')
    puts "O sinal está #{color}"
  end

  signal
  
  color = "verde"
  signal(color)
  ```
- Se o método possuir a palavra reservada `return`, então o método (ou função) encerrará a execução e retornará um valor.
  
# Gems
Gem é um pacote que oferece funcionalidades a fim de resolver uma necessidade específica de um programa Ruby. Pense como o conceito de biblioteca em outras linguagens de programação.

**Exemplo:**
- Abrir o terminal e digitar o seguinte comando:
  `gem install os`
- Utilizando o pacote `os` baixado:
  ```rb
  require 'os'

  def my_os
    if OS.windows?
      "Windows"
    elsif OS.linux?
      "Linux"
    elsif OS.mac?
      "Osx"
    else
      "Não consegui identificar"
    end
  end

  puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"
  ```
- Para remover o pacote (`os`) em Ruby (gem), basta executar o seguinte comando: `gem uninstall os`
  
**Observações:**
- Para listar todas as *gems* instaladas no sistema operacional, basta executar o seguinte comando: `gem list`
- Em Ruby não é comum instalar gem a gem, para isso utiliza-se um *bundler*, que é responsável por instalar todas as *gems* necessárias. Como usar:
  - Crie uma pasta: `mkdir projeto_exemplo`;
  - Instale o *bundler* como uma gem: `gem install bundler`;
  - Crie um arquivo chamado **Gemfile**;
  - Dentro do arquivo Gemfile coloque as informações:
    ```rb
    source 'https://rubygems.org'

    gem 'os'
    ```
    Neste arquivo colocamos a fonte (o local) da onde a gem será baixada e em seguida informamos o nome da gem a ser baixada.
  - Após colocar as informações no arquivo sobre as *gems* que serão baixadas, acessar a pasta criada `projeto_exemplo` pelo terminal e, em seguida, ainda pelo terminal, inserir o comando `bundle`.
- Sites onde pode-se encontrar gems:
  - https://rubygems.org
  - https://github.com/rdp

# Programação Orientada a Objeto
É um paradigma de programação criado para lidar com softwares grandes e complexos. É um conceito seguido não só pelo Ruby, mas também por várias outras linguagens de programação como Java, Python, C++, etc.

## Pilares (POO)
- Abstração: Ação de abstrair uma entidade do mundo real e transformá-la em uma classe.
- Encapsulamento: Ato de dividir o programa em várias partes tornando-o mais flexível, fácil de modificar e incluir novas funcionalidades.
- Herança: Habilidade de criar uma Classe com características de outra Classe existente. A herança promove o reuso e reaproveitamento de código.
- Polimorfismo: Capacidade de utilizar um método de diferentes formas para diferentes Objetos.
- Classe: É uma estrutura que abstrai um conjunto de objetos com características similares. Uma classe determina o comportamento de seus objetos (através de métodos) e os estados possíveis destes objetos por meio de atributos.
- Objeto: É uma instância de uma classe.
  
## Classes em Ruby
- **Exemplos:**
  - Declaração:
  ```rb
  class Computador
    def liga
      'Liga o computador'
    end

    def desliga
      'Desliga o computador'
    end
  end

  computador = Computador.new
  puts computador.desliga
  ```

  - Herança
  ```rb
  class Animal
    def pular
      puts 'pula pula pula'
    end

    def dormir
      puts 'zZz'
    end
  end

  class Cachorro < Animal
    def latir
      puts 'AU AU'
    end
  end

  cachorro = Cachorro.new
  cachorro.pular
  cachorro.dormir
  cachorro.latir
  ```

  - Polimorfismo
  ```rb
  class Instrumento
    def escrever
      puts 'Escrevendo'
    end
  end

  class Teclado < Instrumento
    def escrever
      puts "Teclado"
      super #chama o método pai
  end

  class Lapis < Instrumento
    def escrever
      puts 'Escrevendo à Lápis'
    end
  end

  class Caneta < Instrumento
    def escrever
      puts 'Escrevendo à Caneta'
    end
  end

  teclado = Teclado.new
  lapis = Lapis.new
  caneta = Caneta.new

  puts "Lápis: "
  lapis.escrever
  puts "Caneta: "
  caneta.escrever
  puts "Teclado: "
  teclado.escrever
  ```

# Require
O *Require* serve para carregar arquivos criados pelo usuário ou para carregar (baixar) gems (bibliotecas).

**Exemplo:**

Arquivo 1 com nome de `animal.rb`
```rb
  class Animal
    def pular
      puts 'Toing! tóim! bóim! póim!'
    end

    def dormir
      puts 'zZz'
    end
  end
```
Arquivo 2 que chamará um outro arquivo animal.rb
```rb
  require_relative 'animal' # esse require irá procurar o arquivo na mesma pasta
  # require './animal.rb' esse require irá procurar o arquivo em uma pasta anterior

  animal = Animal.new
  animal = pular
```

**IMPORTANTE:** A ordem dos *require* importa!

# Escopo das variáveis
O escopo define aonde a variável vai estar disponível dentro do programa. Em Ruby existem 4 tipos:
- **Variável local** - É declarada com a primeira letra do nome em <u>minúscula</u> ou <ins>sublinhado</ins>. Pode ser acessada apenas onde foi criada. Por exemplo, se você definir uma variável local dentro de uma classe ela estará disponível apenas para esta classe, e, se for definida dentro de um método, a variável será acessível apenas dentro deste método e assim por diante.
- **Variável global** - É declarada usadando prefixo `$`. Pode ser acessada de qualquer lugar do código, porém seu uso é desaconselhável, porque, além de ser visível em qualquer lugar do programa, também pode ser alterada em inúmeros locais, ocasionando dificuldades no rastreamento de bugs.
- **Variável de classe** - É declarada com o prefixo `@@`. Pode ser acessada em qualquer lugar da classe em que foi declarada e seu valor é compartilhado entre todas as instâncias da classe (objetos).
- **Variável de instância** - É declara com o prefixo `@`. Semelhante a variável de classe, porém o valor desta variável não é compartilhado entre todas as instâncias de classe (objetos).

# Referências
- Free Code Camp. **Ruby Programming Language - Full Course**. Disponível em: https://www.youtube.com/watch?v=t_ispmWmdjY
- Ruby. **Documentação**. Disponível em: https://www.ruby-lang.org/pt/documentation/
- Leonardo Scorza. **Curso de Ruby**. Disponível em: https://www.youtube.com/playlist?list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ
- Ruby Documentation. **Documentação Ruby**. Disponível em: https://www.rubydoc.info/