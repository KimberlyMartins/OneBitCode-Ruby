=begin
Tabela de referências da formatação de tempo

%b - Abbreviated month name ("Jan") - nome do mês abreviado
%B - Full month name ("January") - nome do mês inteiro
%d - Day of the month (1..31) - dia do mês
%j - Day of the year (1..366); so-called "Julian date" - dia do ano
%m - Month as a number (1..12) - mês como um número
%w - Day of the week as a number (0..6) - dia da semana como número
%x - Preferred representation for date (no time)
%y - Two-digit year (no century) - Ano em dois dígitos
%Y - Four-digit year - Ano em quatro dígitos

Lembrando que para a formatação podemos também usar o TRAÇO -  ESPAÇO e a BARRA /
("%Y-%m-%d") 2025-03-31
("%Y %m %d") 2025/03/31
("%B-%d-%y") 2025 03 31  
=end

someday = Time.new(2025, 3, 31)
puts someday # 2025-03-31 00:00:00 
puts someday.class # Time

#puts someday.to_s
puts someday.strftime("%Y-%m-%d") # 2025-03-31
puts someday.strftime("%m-%d-%Y") # 03-31-2025
puts someday.strftime("%Y/%m/%d") # 2025/03/31 
puts someday.strftime("%Y %m %d") # 2025 03 31
puts someday.strftime("%B-%d-%y") # March-31-25

