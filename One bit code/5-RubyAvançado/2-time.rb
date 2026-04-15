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

#Buscando time sem especificar as informações completas obtemos a busca default
puts Time.new(2023) # 2023-01-01 00:00:00 -0300 puxa a data e horário default(padrão)

#Podemos buscar também especificando todas as infos (ano, mês, dia, hora, minuto e segundo)
puts Time.new(2023, 10, 5, 18, 43, 51) # 2023-10-05 18:43:51 -0300