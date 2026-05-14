=begin

Seguimos a mesma referencia dos reg ex
\\d: Corresponde a qualquer dígito de 0 a 9.
\\D: Corresponde a qualquer caractere que não seja um dígito.
\\w: Corresponde a qualquer caractere alfanumérico (letras, dígitos e sublinhados).
\\W: Corresponde a qualquer caractere que não seja alfanumérico.
\\s: Corresponde a qualquer caractere de espaço em branco, como espaço, tabulação, nova linha, entre outros.
\\S: Corresponde a qualquer caractere que não seja espaço em branco.
\\b: Corresponde a uma fronteira de palavra.
\\B: Corresponde a qualquer posição que não seja uma fronteira de palavra.
\\A: Corresponde ao início da string.
\\Z: Corresponde ao final da string, ou ao final da linha se a opção multiline estiver habilitada.
=end


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