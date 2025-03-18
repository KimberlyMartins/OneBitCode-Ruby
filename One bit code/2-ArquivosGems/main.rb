#require "./modulos"

=begin
	Retorna o mesmo resultado de módulos usando o Require + "ponto + barra + nome do arquivo"
52800 Pés
1267200 Polegadas
4828032.0 Centímetros
	
=end
require "modulos"
puts  " #{LenghtConversions.miles_to_feet(10)} Pés"
puts  "#{LenghtConversions.miles_to_inches(20)} Polegadas"
puts  "#{LenghtConversions.miles_to_centimers(30)} Centímetros"

=begin
	Retorna o mesmo resultado de módulos usando o Require_relative
52800 Pés
1267200 Polegadas
4828032.0 Centímetros
	
=end