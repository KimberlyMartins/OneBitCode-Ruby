puts "Informe o nome do filme:"
name = gets.chomp
puts "Informe o ano do filme:"
yearLaunch = gets.chomp.to_i
puts "Informe o preço do filme:"
price = gets.chomp.to_f

#                   Concatenação e exibição dos valores
puts "Nome do filme: " + name
puts "Ano de lançamento: " + yearLaunch.to_s
puts "Preço do filme: " + price.to_s


#                      Utilizando #{}
puts "Nome do filme: #{name}"
puts "Ano de lançamento: #{yearLaunch}"
puts "Preço do filme: #{price}"


#                   Utilizando um único puts
puts "Nome do filme: #{name}, Ano de lançamento: #{yearLaunch}, Preço do filme: #{price}"
puts "Nome do filme: #{name}\nAno de lançamento: #{yearLaunch}\nPreço do filme: #{price}"


#                     String Multilinha
puts <<~MULTILINE_STRING
  Nome do filme: #{name}
  Ano de lançamento: #{yearLaunch}
  Preço do filme: #{price}
MULTILINE_STRING