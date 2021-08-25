puts '--Lista de Compras--'

file = File.open('lista_de_compras.txt')

file.each_line do |line|
    puts line
end

file.close