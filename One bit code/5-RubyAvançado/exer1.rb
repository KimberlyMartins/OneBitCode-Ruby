=begin
​Você foi contratado por uma empresa de logística para ajudar a calcular o tempo estimado de entrega de pacotes. A empresa deseja uma função que receba a data de envio e o tempo estimado de entrega em dias úteis e retorne a data estimada de entrega, levando em consideração apenas os dias úteis (segunda a sexta-feira).

Escreva uma função chamada calcular_data_entrega que recebe dois parâmetros: data_envio (no formato "YYYY-MM-DD") e tempo_entrega_dias (um inteiro representando os dias úteis necessários para a entrega). A função deve retornar a data estimada de entrega no formato "YYYY-MM-DD", levando em consideração os dias úteis.

Montando a resolução 
calcular_data_entrega >  data_envio (no formato "YYYY-MM-DD") e tempo_entrega_dias
retornando  data estimada "YYYY-MM-DD" contando somente dias uteis 
 
e lembrar que:
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
require "date"

def calcular_data_entrega(data_envio, tempo_entrega_dias)

  
end
