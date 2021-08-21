class Foo
    def call_private
        bar
    end

    private def bar
        puts "Método privado"
    end
end

# Criando uma instância
foo = Foo.new

foo.call_private
foo.bar