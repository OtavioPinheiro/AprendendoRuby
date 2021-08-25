# Linguagem Ruby
Aprendendo Ruby por meio de vídeos tutoriais.

# Tópicos
- [O que é Ruby?](#o-que-é-ruby)
- [Boas Práticas](#boas-práticas)
- [Variáveis](#variáveis)
- [Receber informações do usuário](#receber-informações-do-usuário)
- [Converter para inteiro ou para float](#converter-para-inteiro-ou-para-float)
- [Condicionais](#condicionais)
- [Iterações](#iterações)
- [Collections](#collections)
- [Métodos](#métodos)
- [Gems](#gems)
- [POO](#programação-orientada-a-objeto)
- [Require](#require)
- [Escopo das variáveis](#escopo-das-variáveis)
- [Atributos](#atributos)
- [Construtores](#construtores)
- [Blocks](#blocks)
- [Lambda](#lambda)
- [Modules](#modules-módulos)
- [Regex](#regex)
- [Classe Time](#classe-time)
- [Método Missing](#metodo_missing)
- [Self](#self)
- [Classes Abstratas](#classes-abstratas)
- [Leitura de arquivos](#leitura-de-arquivos)
- [Chamadas Web](#chamadas-web)
- [Referências](#referências)
  
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
```rb
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
    - `capitais = Hash.new`
    - `capitais = {}`
  - Atribuição:
    - `capitais = {acre: 'Rio Branco', sao_paulo: 'São Paulo'}`
    - `capitais = {acre => "Rio Branco", sao_paulo => "São Paulo"}`
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
  **Exemplo:**
  ```rb
    def foo
      local = "variável local acessada apenas dentro deste método."
    end

    foo

    puts local # Erro
  ```
- **Variável global** - É declarada usadando prefixo `$`. Pode ser acessada de qualquer lugar do código, porém seu uso é desaconselhável, porque, além de ser visível em qualquer lugar do programa, também pode ser alterada em inúmeros locais, ocasionando dificuldades no rastreamento de bugs.
  **Exemplo:**
  ```rb
    class Bar
      def foo
        $global = 0
        puts $global
      end
    end

    class Baz
      def pep
        $global += 1
        puts $global
      end
    end

    bar = Bar.new
    baz = Baz.new
    bar.foo
    baz.pep
    baz.pep
    puts $global
  ```
- **Variável de classe** - É declarada com o prefixo `@@`. Pode ser acessada em qualquer lugar da classe em que foi declarada e seu valor é compartilhado entre todas as instâncias da classe (objetos).
  **Exemplo:**
  ```rb
    class User
      @@user_count = 0
      def add(name)
        puts "User #{name} adicionado"
        @@user_count += 1
        puts @@user_count
      end
    end

    first_user = User.new
    first_user.add('João')

    second_user = User.new
    second_user.add('José')
  ```
- **Variável de instância** - É declara com o prefixo `@`. Semelhante a variável de classe, porém o valor desta variável não é compartilhado entre todas as instâncias de classe (objetos).
  **Exemplo:**
  ```rb
    class Usuario
      def adicionar(nome)
        @nome = nome
        puts "Usuário adicionado"
        boas_vindas
      end

      def boas_vindas
        puts "Seja Bem-Vindo, #{@nome}!"
      end
    end

    usuario = Usuario.new
    usuario.add('Maria')
  ```

# Atributos
Atributos ou variáveis de instância, no Ruby são sempre privados e começam com `@`, eles só podem ser alterados pelos métodos de um objeto.
**Exemplo:**
  ```rb
    class Cachorro
      def nome
        @nome
      end

      def nome = nome
        @nome = nome
      end
    end

    cachorro = Cachorro.new
    cachorro.nome = "Pax"
    puts cachorro.nome
  ```

  Versão simplificada.
  ```rb
    class Cachorro
      attr_accessor :nome, :idade
    end

    cachorro = Cachorro.new
    cachorro.nome = "Pax"
    puts cachorro.nome

    cachorro.idade = "3 anos"
    puts cachorro.idade
  ```

# Construtores
Construtores são métodos que especificam determinados valores padrões para um objeto. Em Ruby, os métodos construtores devem ser chamados de `initialize`.

**Exemplo:**
  ```rb
    class Pessoa
      def initialize(nome, idade)
        @nome = nome
        @idade = idade
      end

      def check
        puts "Instância da classe iniciada com os valores:"
        puts "Nome = #{@nome}"
        puts "Idade = #{@idade}"
      end
    end

    pessoa = Pessoa.new('Zézinho', 30)
    pessoa.check
  ```

# Blocks
Um bloco pode ser entendido como uma função anônima. É definido entre `do` e `end` ou <u>colchetes</u>. Essas funções também podem receber parâmetros.

**Exemplos:**
  Block simples
  ```rb
    5.times { puts "Execução do block!" }
  ```

  Block com parâmetros
  ```rb
    total = 0
    nums = [1, 2, 3, 4, 5]
    nums.each {|num| total += num}
    puts total
  ```

  Block de múltiplas linhas
  ```rb
    foo = {2 => 3, 4 => 5}

    foo.each do |key, value|
      puts "key = #{key}"
      puts "value = #{value}"
      puts "key x value = #{key * value}"
      puts "---"
    end
  ```

  Block como parâmetro
  ```rb
    def foo
      yield # Executa o block que foi passado como parâmetro
      yield
    end

    foo { puts "Executar o block" }
  ```

  ```rb
    def foo
      if block_given?
        yield
      else
        puts "Sem parâmetro do tipo block"
      end
    end

    foo
    foo { puts "Com parâmetro do tipo bloco" }
  ```

  ```rb
    def foo(nome, &block)
      @nome = nome
      block.call
    end

    foo('Leonardo') { puts "Olá #{@nome}" }
  ```

  **IMPORTANTE:** Só é possível passar um block por método.

  ```rb
    def foo(numeros, &block)
      if block_given?
        numeros.each do |key, value|
          block.call(key, value)
        end
      end
    end

    numeros = { 2 => 2, 3 => 3, 4 => 4 }

    foo(numeros) do |key, value|
      puts "#{key} x #{value} = #{key * value}"
      puts "#{key} + #{value} = #{key + value}"
      puts "-----"
    end
  ```

# Lambda
Lambdas são semelhantes aos Blocks, ou seja, são funções anônimas, porém lambdas podem ser salvas em variáveis.

**Exemplo:**
  Forma simples
  ```rb
    first_lambda = lambda { puts "lambda" }
    first_lambda.call
  ```

  ```rb
    first_lambda = -> (nomes) { nomes.each { | nome | puts nome } }
    nomes = ["João", "Maria", "Pedro"]
    first_lambda.call(nomes)
  ```

  Lambda de múltiplas linhas
  ```rb
    my_lambda = lambda do |nums|
      index = 0
      puts "Número atual + Próximo número"
      nums.each do |num|
        return if nums[index] == nums.last
        puts "(#{nums[index]}) + (#{nums[index + 1]})"
        puts nums[index] + nums[index + 1]
        index += 1
      end
    end
    nums = [1, 2, 3, 4, 5]
    my_lambda.call(nums)
  ```

  Lambda como argumento
  ```rb
    def foo(pri_lambda, seg_lambda)
      pri_lambda.call
      seg_lambda.call
    end

    pri_lambda = lambda { puts "Primeiro lambda" }
    seg_lambda = lambda { puts "Segundo lambda" }

    foo(pri_lambda, seg_lambda)
  ```

  **IMPORTANTE:** É possível passar mais de um lambda para um método.

# Modules (Módulos)
Constituído por Namespace e por Mixins. Módulos são uma coleção de métodos e constantes.

## Namespace
```rb
  module ReverseWorld
    def self.puts text
      print text.reverse.to_s
    end
  end

  ReverseWorld::puts 'O resultado é'
  puts 'O resultado é'
```

## Mixins
```rb
  module ImpressaoDecorada
    def imprimir text
      decoracao = '#' * 100
      puts decoracao
      puts text
      puts decoracao
    end
  end

  module Pernas
    include ImpressaoDecorada

    def chute_frontal
      imprimir 'Chute Frontal'
    end

    def chute_lateral
      imprimir 'Chute Lateral'
    end
  end

  module Bracos
    include ImpressaoDecorada

    def jab_de_direita
      imprirmir 'Jab de direita'
    end

    def jab_de_esquerda
      imprirmir 'Jab de esquerda'
    end

    def gancho
      imprirmir 'Gancho'
    end

    class LutadorX
      include Pernas
      include Bracos
    end

    class LutadorY
      include Pernas
    end

    lutadorx = LutadorX.new
    lutadorx.chute_frontal
    lutadorx.jab_de_direita

    lutadory = LutadorY.new
    lutadory.chute_lateral
  end
```

# Regex
Regex ou expressões regulares são notações para apresentar padrões em strings, elas servem para validar entradas de dados ou fazer busca e extração de informações em texto. As formas mais comuns de se criar regex dentro do *Ruby* são:
- Entre barras. `/regexp/`
- Utilizando *format specifier*: `%r{regexp}`
- Utilizando uma classe: `Regexp.new('regexp')`

**Exemplos de uso:**

```ruby
'teste' =~ /te/
/ol/ =~ 'olá'

frase = "Bom dia grupo!"
tem = /dia/.match(frase)

# retornar a palavras anterior a palavra identificada
tem.pre_match

# retornar a palavra posterior a palavra identificada
tem.post_match

# Procura por dígitos
/\d/.match("412")

# Repetições de padrão
/\+\d{2}-\d{2}-\d{4}-\d{4}/.match("+15-11-3333-2222")
/\d{1,}/.match('1234567890')
```

# Classe *Time*
O *Ruby* possui uma classe *Time* que é utilizada para representar as datas e horas.

**Exemplos de uso:**

```ruby
# Retornar a data e hora do exato instante em que for executado.
# Támbem é assim que é instanciada a classe Time
time = Time.now

# Retorna o dia
puts time.day

# Retorna o mês
puts time.month

# Retorna o ano
puts time.year

# Retorna uma string formatada como dia/mês/ano
time.strftime('%d/%m/%y')

# Retorna uma string formatada como mês/dia/ano
time.strftime('%D')

# Retorna uma string informando os minutos atuais
time.strftime('%M')

# Verificações
puts time.saturday?
```

# Método *MISSING*
É utilizado para interceptar chamadas a métodos inexistentes.

**Exemplo:** [Exemplo](./metodo_missing.rb)

# *SELF*
Em *Ruby*, *self* é uma variável especial que aponta para o objeto atual.

**Exemplos:**
1. [Exemplo1](./self/self_01.rb)
2. [Exemplo2](./self/self_02.rb)
3. [Exemplo3](./self/self_03.rb)

**Importante:** Quando a palavra *self* aparecer antes do nome de um método, a classe não precisará ser instanciada para poder usar o método ([Exemplo2](./self/self_02.rb)).

# Classes Abstratas
Em *Ruby* não há, nativamente, classes abstratas ou interfaces, mas podemos implementar algo para simular o comportamento. Recapitulando, interfaces são classes abstratas nas quais todos os métodos são abstratos, já classes abstratas são classes nas quais possuem um ou mais métodos abstratos. Quando se utiliza as interfaces é necessário implementar todos os métodos da interface.

[Referência para classes abstratas em Ruby](https://mauricioszabo.wordpress.com/2010/05/25/da-para-criar-classes-abstratas-em-ruby/)

[Código da classe abstrata](./classe_abstrata/abstract.rb)

[Exemplo de uso](./classe_abstrata/exemplo_classeAbstrata.rb)

# Métodos privados e protegidos
Por padrão todos os métodos definidos são públicos. Isso significa que eles podem ser acessados por qualquer um. Há outros dois tipos de métodos, privado e protegido.

Os métodos privados (*private*) só podem ser chamados pela classe que o criou, nem mesmo a instância (*self* está incluído) de um objeto da classe pode chamá-lo. Para ter acesso a esse método é necessário criar outro método, de preferência público, que chama o método privado e, ai sim, o método privado poderá ser usado de fora da classe. [Exemplo](./private.rb)

Os métodos protegidos (*protected*), assim como os privados, não podem ser chamados de fora da classe que os criou, mas podem ser chamados por instâncias da classe. [Exemplo](./protected.rb)

# Leitura de arquivos
É possível ler arquivos em Ruby usando a classe *File*.

[Exemplo](./leitura_de_arquivos/read.rb)

## Tabela dos modos de leitura e escrita em arquivos em Ruby.

| Mode |  Meaning                                               |
|------|--------------------------------------------------------|
| "r"  | Read-only, starts at beginning of file  (default mode).|
| "r+" | Read-write, starts at beginning of file.               |
| "w"  | Write-only, truncates existing file to zero length or creates a new file for writing. |
| "w+" | Read-write, truncates existing file to zero length or creates a new file for reading and writing. |
| "a"  | Write-only, starts at end of file if file exists, otherwise creates a new file for writing. |
| "a+" | Read-write, starts at end of file if file exists, otherwise creates a new file for reading and writing. |
| "b"  | Binary file mode (may appear with any of the key letters listed above). Suppresses EOL <-> CRLF conversion on Windows. And sets external encoding to ASCII-8BIT unless explicitly specified. |
| "t"  | Text file mode (may appear with any of the key letters listed above except "b"). |

[Referência](https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options)

[Documentação do Ruby falando a respeito das opções e modos de leitura e escrita](https://www.rubydoc.info/stdlib/core/IO:initialize#:~:text=Ruby%20allows%20the%20following%20open,a%20new%20file%20for%20writing.)

# Chamadas Web
Em *Ruby* é possível realizar chamadas web através da biblioteca `Net::HTTP`. No exemplo a seguir o código realizar um download da página web informada em `Net::HTTP.get()` dentro do caminho informado em `File.open()`.

[Exemplo de chamadas de sites http](./chamadas_web/chamadasWeb.rb)

[Chamadas Web HTTPS](./chamadas_web/chamadasWebHttps.rb)

[Chamadas usando método POST](./chamadas_web/chamadas_post.rb)

# Web Scraping
*Web Scraping* é uma forma de mineração que permite a extração de dados de sites da web convertendo-os em informações estruturadas para posterior análise. Em *Ruby* utilizamos a biblioteca chamada `Nokogiri` para encontrar informações dentro de estruturas *HTML* dos sites. Para utilizar essa biblioteca é necessário instala-la pelo comando `gem install nokogiri`.

**Exemplos:**

```rb
require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('uol.com.br', 443)
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')
puts h1.content

h3_a = doc.at('h3 a')
puts h3_a.content
puts h3_a['href']

doc.search('h3 a').each do |a|
  puts a.content
  puts a['href']
  puts ''
end
```

# Lidando com erros e exceções
Em *Ruby* é possível fazer o tratamento de erros e exceções para a mensagem retornada para o usuário seja mais amigável. Esse tratamento é feito colocando o código possível de erro ou exceção dentro do bloco `begin` e, em seguida, no bloco `rescue`, informar o tipo de erro esperado e dentro do bloco colocar o tratamento e ser feito, por fim, terminar com `end`. É importante informar o tipo de erro esperado logo após de `rescue`, caso contrário, todo e qualquer tipo de erro que acontecer no bloco `begin` será capturado no bloco `rescue`.

**Exemplos:**

```rb
numeros_da_mega = [12, 1, 43, 10, 5, 22, 11]

begin
  numeros_da_mega["vencedor"]
  num = 10/0
rescue ZeroDivisionError => e
  puts e
rescue TypeError => e
  puts e
end
```

# Referências
- Leonardo Scorza. **Curso de Ruby**. Disponível em: https://www.youtube.com/playlist?list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ
- Free Code Camp. **Ruby Programming Language - Full Course**. Disponível em: https://www.youtube.com/watch?v=t_ispmWmdjY
- Ruby. **Documentação**. Disponível em: https://www.ruby-lang.org/pt/documentation/
- Ruby Documentation. **Documentação Ruby**. Disponível em: https://www.rubydoc.info/
- Maurício Szabo. **Dá para criar classes abstratas em Ruby?**. Disponível em: https://mauricioszabo.wordpress.com/2010/05/25/da-para-criar-classes-abstratas-em-ruby/