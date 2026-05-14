=begin
Ainda usando expressões regulare, podemos fazer mais algumas ações como por exemplo excluir caracteres da busca, substituir valores da busca
=end

# Excluir caracteres da busca usando expressões regulares
strings = ["apple", "cd", "cherry", "dt", "grape", "fig"]

strings.each do |string|
  if string =~ /^[^aeiou]+$/ # verificar ocorrências de vogais na string
    puts "A #{string} contem apenas consoantes"
  else
    puts "A #{string} contém vogais ou outros caracteres"
  end
end

# Substituição de informações da string sub e gsub
string2 = "A linguagem Ruby é fácil de aprender e Ruby é divertida."