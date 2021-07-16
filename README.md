# Linguagem Ruby
Aprendendo Ruby por meio de vídeos tutoriais.

# Tópicos
- [O que é Ruby?](#o-que-é-ruby)
- [Começando o estudo](#começando-o-estudo)
  
## O que é Ruby?
A linguagem Ruby é uma linguagem dinâmica, *open source* com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita. O criador da linguagem Ruby é Yukihiro "Matz" Matsumoto.

## Executando...
Para executar programas em Ruby usa-se o comando:
```
ruby arquivo.rb
```

## Regras da linguagem
1. Ruby não faz converção automática para string quando usamos as funções `puts` e `print`, ou seja, se quero exibir um número na tela concatenado com um texto, devo **transformá-lo em string primeiro**.
2. Operações matemáticas envolvendo dois números inteiros (int), sempre retornará um número inteiro. Operações matemáticas envolvendo dois números flutuantes (float), sempre retornará um número flutuante. E operações matemáticas envolvendo um número inteiro e um número flutuante, o resultado será apresentado como número flutuante.

## Boas práticas
1. Normalmente é utilizado o padrão snake case para nomear variáveis. Exemplo: `nome_do_cachorrinho`

## Variáveis
Variáveis em Ruby podem ser declaradas das seguintes formas:
```
  nome_do_personagem = "Snow"
  idade_do_personagem = "20"
```
## Receber informações do usuário
Para guardar uma informação recebida pelo usuário, ou seja, um input, utiliza-se a função `gets()`. Caso seja necessário ignorar o *"Enter"* pressionado ao final do input, utiliza-se a função `gets.chomp()`.

**Importante:**
- Quando colocamos alguma informação em Ruby usando ***gets***, Ruby converterá a informação para ***string*** automáticamente.

## Converter para inteiro ou para float
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

## Condicionais
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

## Collections
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
    - Cria um array baseando-se em valores de outro array existente. **Exemplo:**
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

# Referências
- Free Code Camp. **Ruby Programming Language - Full Course**. Disponível em: https://www.youtube.com/watch?v=t_ispmWmdjY
- Ruby. **Documentação**. Disponível em: https://www.ruby-lang.org/pt/documentation/
- Leonardo Scorza. **Curso de Ruby**. Disponível em: https://www.youtube.com/playlist?list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ