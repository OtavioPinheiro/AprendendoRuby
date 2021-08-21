class Peixe
    def method_missing(nome_do_metodo)
        puts "Peixes não podem #{nome_do_metodo}"
    end

    def nadar
        puts 'Peixe está nadando'
    end
end

peixe = Peixe.new
peixe.nadar
peixe.andar
peixe.voar