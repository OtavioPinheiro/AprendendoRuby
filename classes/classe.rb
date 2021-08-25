class Livro
  attr_accessor :titulo, :autor, :paginas
end

livro1 = Livro.new()
livro1.titulo = "Sherlock Holmes"
livro1.autor = "Arthur Conan Doyle"
livro1.paginas = 500

puts livro1.titulo
puts livro1.autor