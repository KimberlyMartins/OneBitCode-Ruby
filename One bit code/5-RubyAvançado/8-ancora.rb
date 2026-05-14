# verificar se começa com olá e termina com mundo
strings = ["Olá, mundo!", "Olá, OBC!", "Ruby é divertido, Olá mundo!"]

strings.each do |string|
    if string =~/\AOlá.*mundo!\z/  
        puts "A #{string} corresponde ao padrão"
    else
        puts "A #{string} não corresponde ao padrão"
    end
end

=begin
A Olá, mundo! corresponde ao padrão
A Olá, OBC! não corresponde ao padrão
A Ruby é divertido, Olá mundo! não corresponde ao padrão
=end

