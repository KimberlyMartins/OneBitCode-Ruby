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

#Verificação de string que começa com Ruby e termina com 3.2

strings2 = ["Ruby-3.2", "Ruby-2.0", "Ruby-3.0 é poderoso"]
strings2.each do |string2|
    if string2 =~ /^Ruby.*3\.2$/
        puts "A #{string2} corresponde ao padrão"
    else
        puts "A #{string2} não corresponde ao padrão"
    end
end

=begin
A Ruby-3.2 corresponde ao padrão
A Ruby-2.0 não corresponde ao padrão
A Ruby-3.0 é poderoso não corresponde ao padrão
=end