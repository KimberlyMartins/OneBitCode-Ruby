puts "Informe a idade:"
age = gets.chomp.to_i
case age
when 0..2
   puts "Bebê"
when 3..6
   puts "Criança"
when 7..12
   puts "Pré-Adolescente"
when 13..18
   puts "Jovem"
else
   puts "Adulto"
end