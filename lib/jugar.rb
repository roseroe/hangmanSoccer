class Jugar
	#constante:
	#CONSTANTE = 1

	#constructor:
	#def initialize idioma = "ES"
		#@idioma = idioma
	#end

	def validar(letra)
		if(letra== "M" or letra== "E" or letra== "S" or letra== "S" or letra== "I")
			"Letra ingresada esta correcta"
		else 
			"Letra ingresada esta incorrecta"
		end
	end 
		
end