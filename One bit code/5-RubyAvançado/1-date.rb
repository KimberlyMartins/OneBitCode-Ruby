=begin
                              DATE 
O objeto Date no Ruby é a ferramenta essencial para lidar com datas de calendário (ano, mês e dia) sem se preocupar com frações de tempo (horas, minutos e segundos). Ele faz parte da biblioteca padrão do Ruby, oferecendo uma interface intuitiva para cálculos e manipulações temporais.
Diferente de classes básicas como String ou Array, a classe Date não é carregada automaticamente. Você precisa importá-la com o require 'date'
=end

require "date"

puts Date.new(1999)
puts Date.new(1999,1)
puts Date.new(1999, 10, 5)

=begin
Retorna
1999-01-01
1999-01-01
1999-01-18
=end

birthday = Date.new(1997 , 8, 7)
puts birthday.class 
puts birthday.year
puts birthday.day
puts birthday.month

=begin
birthday.class =  Date
birthday.year = 1997
birthday.day = 7
birthday.month = 8
=end

=begin
                        WDAY (Week Day)
O método .wday transforma o dia da semana em um número.
É a forma que o Ruby usa para "contar" os dias.
A contagem começa no Domingo e o índice vai de 0 a 6.
0 = Domingo
1 = Segunda-feira
2 = Terça-feira
3 = Quarta-feira
4 = Quinta-feira
5 = Sexta-feira
6 = Sábado
=end

puts birthday.wday # Retorna 4 ou seja quinta feira 

puts birthday.monday? # retorna  false
puts birthday.friday?  # retorna false
puts birthday.thursday?  # retorna true