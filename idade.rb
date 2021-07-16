resultado = ""

loop do
  puts "Selecione uma das seguintes opções"
  puts "0 - Sair"
  puts "1 - Descobrir a idade"
  print "Opção: "

  opcao = gets.chomp.to_i

  if opcao == 1
    print "Digite o ano de nascimento: "
    ano_de_nascimento = gets.chomp.to_i
    print "Digite o ano atual: "
    ano_atual = gets.chomp.to_i
    idade = ano_atual - ano_de_nascimento
    resultado = "Quem nasceu no ano de #{ano_de_nascimento}, tem #{idade} anos em #{ano_atual}"
  elsif opcao == 0
    break
  else
    resultado = "Opção inválida"
  end
  system "clear"
  
  puts resultado
end