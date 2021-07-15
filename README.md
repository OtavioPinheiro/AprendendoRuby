# Linguagem Ruby
Aprendendo Ruby por meio de vídeos tutoriais.

# Tópicos
- [O que é Ruby?](#o-que-é-ruby)
- [Começando o estudo](#começando-o-estudo)
  
## O que é Ruby?
A linguagem Ruby é uma linguagem dinâmica, *open source* com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita. O criador da linguagem Ruby é Yukihiro "Matz" Matsumoto.

## Começando o estudo.

### Regras da linguagem
1. Ruby não faz converção automática para string quando usamos as funções `puts` e `print`, ou seja, se quero exibir um número na tela concatenado com um texto, devo **transformá-lo em string primeiro**.
2. Operações matemáticas envolvendo dois números inteiros (int), sempre retornará um número inteiro. Operações matemáticas envolvendo dois números flutuantes (float), sempre retornará um número flutuante. E operações matemáticas envolvendo um número inteiro e um número flutuante, o resultado será apresentado como número flutuante.

### Boas práticas
1. Normalmente é utilizado o padrão snake case para nomear variáveis. Exemplo: `nome_do_cachorrinho`

### Variáveis
Variáveis em Ruby podem ser declaradas das seguintes formas:
```
  nome_do_personagem = "Snow"
  idade_do_personagem = "20"
```

### Receber informações do usuário
Para guardar uma informação recebida pelo usuário, ou seja, um input, utiliza-se a função `gets()`. Caso seja necessário ignorar o *"Enter"* pressionado ao final do input, utiliza-se a função `gets.chomp()`.

**Importante:**
- Quando colocamos alguma informação em Ruby usando ***gets***, Ruby converterá a informação para ***string*** automáticamente.

### Converter para inteiro ou para float
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

### Collections
Collections (coleções), na programação, representa um conjunto de dados semelhantes em uma única unidade.

# Referências
- Free Code Camp. **Ruby Programming Language - Full Course**. Disponível em: https://www.youtube.com/watch?v=t_ispmWmdjY
- Ruby. **Documentação**. Disponível em: https://www.ruby-lang.org/pt/documentation/