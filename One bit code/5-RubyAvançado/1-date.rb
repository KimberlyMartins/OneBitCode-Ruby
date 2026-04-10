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