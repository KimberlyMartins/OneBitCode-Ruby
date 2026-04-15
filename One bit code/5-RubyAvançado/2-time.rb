=begin
                                     Time
Diferente do Date, que foca apenas no calendário, o objeto Time no Ruby é usado para representar momentos específicos incluindo horas, minutos, segundos e microsegundos. No Ruby moderno, ele já vem carregado por padrão, então você geralmente não precisa de require.
=end

puts Time.new
puts Time.now

=begin
2026-04-10 10:56:44 -0300
2026-04-10 10:56:44 -0300

em outro dia buscou outra data
2026-04-15 11:10:20 -0300
2026-04-15 11:10:20 -0300
=end

# Buscando time sem especificar as informações completas obtemos a busca default
puts Time.new(2023) # 2023-01-01 00:00:00 -0300 puxa a data e horário default(padrão)

# Podemos buscar também especificando todas as infos (ano, mês, dia, hora, minuto e segundo)
puts Time.new(2023, 10, 5, 18, 43, 51) # 2023-10-05 18:43:51 -0300

# Criando uma váriável assim como no date, podemos recuperar dados como dia, hora, ano...
some_time = Time.new(2023, 10, 5, 18, 43, 51)
puts some_time.year
puts some_time.month
puts some_time.day

puts some_time.hour
puts some_time.min
puts some_time.sec

=begin 
Retorna especificamente:
2023
10
5
18
43
51
=end

=begin
                        WDAY (Week Day)
Pelo time, também podemos verificar os dias da semana assim como no date.

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

puts some_time.wday # 4
puts some_time.monday? # false
puts some_time.sunday? # false
puts some_time.thursday? # true    aqui retorna true pois o índice 4 é quinta feira

=begin
                     Adição e multiplicação 
No Ruby, a unidade de medida do objeto Time é sempre o segundo, e como o Ruby entende "1" como "1 segundo", precisamos da multiplicação para chegar em unidades humanas.
Para 1 minuto: + (60)         =  60 seg
Para 1 hora: + (60 * 60)      = 60 seg * 60 min 
Para 1 dia: + (24 * 60 * 60)  =  24 hrs * 60 min * 60 seg

=end
start_year = Time.new(2024)
puts start_year  # Retorna o padrão 2024-01-01 00:00:00 -0300

puts start_year + (60 * 60 * 24 * 30) 
=begin
a formula foi:  puts start_year + (60 * 60 * 24 * 30) 
( 60 segundos em um minuto * 60 minutos em uma hora *24 horas em um dia * 30 dias)

Aqui retornamos 30 dias além da data default com os * 30 no final 
2024-01-31 00:00:00 -0300
=end