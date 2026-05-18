=begin
Regular Expressions (ou Regex) são sequências de caracteres que formam um padrão de busca. Em Ruby, elas são nativas (instâncias da classe Regexp), delimitadas por barras /.../. São usadas para validar dados (como e-mails), extrair informações específicas e buscar ou substituir textos de forma rápida e flexível.

Expressões regulares Ruby são definidas entre duas barras diretas para diferenciá-los da sintaxe de outras linguagens. As expressões mais simples correspondem a uma palavra ou mesmo a uma única letra.
=end

phrase = "A linguagem ruby é divertida!"

p phrase.include?("gua") # true
p phrase.start_with?("A") # true
p phrase.end_with?("divertida") # false  ( pois temos o ! no final)

=begin
Referencia 
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

. (ponto) corresponde a qualquer caractere exceto uma nova linha
^ busca no início da string
$ busca no final da string
+ significa uma ou mais vezes 
/\w+/  significa qualquer alfanumérico um ou mais vezes 
=end

p /T/.class # Regexp 

# Primeira ocorrêcia de letras ou sílabas da frase "A linguagem ruby é divertida!" está em qual posição
p phrase =~ /R/ # nil pois não tem R maíusculo
p phrase =~ /r/ # 12 
p phrase =~ /a/ # 7

p phrase =~ /gua/ #5

#Para buscar se determinada palavra está no texto

string = "Love of my life"
pattern = /life/

if string =~ pattern
    puts "A string contém a palavra 'life'"
else
    puts "A string não contém a palavra 'life'"
end

#A string contém a palavra 'life' 