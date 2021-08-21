class Caneta
    attr_accessor :cor # Atributo da classe
    def cor_da_caneta
        puts "A caneta é da cor " + self.cor
    end
end

caneta = Caneta.new
caneta.cor = "azul"
caneta.cor_da_caneta