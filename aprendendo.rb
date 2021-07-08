testando = "1 2 3"
num = 17
puts "Usando a função puts"
print "Aprendendo Ruby!\n"
# não é necessário usar ()
puts ("Testando " + testando)
puts ("Meu número favorito é " + num.to_s())
puts "Oi, qual o seu nome?"
nome = gets()
puts ("Prazer em conhecê-lo " + nome)
puts "Quantos anos você tem?"
idade = gets.chomp()
puts ("Você tem " + idade + " anos")