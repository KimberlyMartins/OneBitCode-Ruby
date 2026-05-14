=begin
Ainda usando expressões regulare, podemos fazer mais algumas ações como por exemplo excluir caracteres da busca, substituir valores da busca.
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

=begin       
                              SUB E GSUB
Em Ruby, os métodos sub e gsub são usados para substituições em strings com expressões regulares. A diferença principal está em quantas ocorrências eles substituem.
SUB = substitui apenas a primeira ocorrência do padrão encontrado.
texto = "mundo mundo mundo"
puts texto.sub(/mundo/, "Ruby")
# Saída: "Ruby mundo mundo"

GSUB 
Substitui todas as ocorrências do padrão encontrado.
texto = "mundo mundo mundo"
puts texto.gsub(/mundo/, "Ruby")
# Saída: "Ruby Ruby Ruby"
=end

string2 = "A linguagem Ruby é fácil de aprender e Ruby é divertida."
novo_string_sub = string2.sub(/Ruby/, 'Python')
novo_string_gsub = string2.gsub(/Ruby/, 'Python')

puts "Usando sub:"
puts "String original: #{string2} "
puts "String modificada #{novo_string_sub}"
puts 
puts "Usando gsub:"
puts "String original: #{string2} "
puts "String modificada #{novo_string_gsub}"

=begin
Usando sub:
String original: A linguagem Ruby é fácil de aprender e Ruby é divertida. 
String modificada A linguagem Python é fácil de aprender e Ruby é divertida.

Usando gsub:
String original: A linguagem Ruby é fácil de aprender e Ruby é divertida. 
String modificada A linguagem Python é fácil de aprender e Python é divertida.
PS C:\Users\Acer\Documents\OneBitCode-Ruby\One bit code\5-RubyAvançado> 
=end