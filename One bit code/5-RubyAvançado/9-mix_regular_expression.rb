=begin
Ainda usando expressões regulare, podemos fazer mais algumas ações como por exemplo excluir caracteres da busca
=end

# Excluir caracteres da busca usando expressões regulares
strings = ["apple", "cd", "cherry", "dt", "grape", "fig"]

strings.each do |string|
  if string =~ /^[^aeiou]+$/
    puts "A #{string} contem apenas consoantes"
  else
    puts "A #{string} contém vogais ou outros caracteres"
  end
end