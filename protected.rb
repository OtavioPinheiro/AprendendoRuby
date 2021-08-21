class Foo
    def call_protected(instancia)
        instancia.bar
    end

    protected def bar
        puts "Método protegido"
    end
end

instancia_1 = Foo.new

instancia_2 = Foo.new

instancia_1.call_protected(instancia_1)

instancia_2.call_protected(instancia_2)

instancia_1.bar