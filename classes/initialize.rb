class Livro
  attr_accessor :titulo, :autor, :paginas

  def initialize(titulo, autor, paginas)
    @titulo = titulo
    @autor = autor
    @paginas = paginas
  end
end

livro = Livro.new("Sherlock Holmes", "Arthur Conan Doyle", 500)
livroJedi = Livro.new("Star Wars: Mace Windu - Jedi da república", "Matt Owens", 116)

puts livro.titulo
puts livroJedi.titulo