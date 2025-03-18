#                   Módulo conversão de Comprimento
#Milhas para pés
#Milhas para polegadas
#Milhas para centímetros

module LenghtConversions
	def self.miles_to_feet(miles)
		miles * 5280
	end

	def self.miles_to_inches(miles)
		feet = miles_to_feet(miles)
		feet * 12
	end

	def  self.miles_to_centimers(miles)
		inches = miles_to_inches(miles)
		inches * 2.54		
	end
end

#puts  " #{LenghtConversions.miles_to_feet(10)} Pés"
#puts  "#{LenghtConversions.miles_to_inches(20)} Polegadas"
#puts  "#{LenghtConversions.miles_to_centimers(30)} Centímetros"

