class Jugar
	
	def validar(letra)
		if(letra== "M" or letra== "E" or letra== "S" or letra== "S" or letra== "I")
			"Letra ingresada esta correcta"
		else 
			"Letra ingresada esta incorrecta"
		end
	end 

	def actualizar(letra)
		caracter_encontrado=false
		@array_palabra = "MESSI".split ""
			@array_palabra.each_with_index{ |caracter, index|
				if caracter == letra
					@array_mascara[index] = letra
					caracter_encontrado=true		
				end
			}
	end

	def get_mascara
		@mascara = @array_mascara.join ' '
	end
	
	def initialize
		@PALABRAS = ['DESARROLLO', 'MESSI', 'JAMES', 'RONALDO', 'FALCAO']
		@palabra = generar_palabra()	
		puts @palabra
		@array_palabra = @palabra.split ""
		@letra = ""	
		@intentos=6
		@pista= "... de software"
		init_mascara()
	end
	def generar_palabra
		r = Random.new
		index = r.rand(0...4)
		@PALABRAS[index]
	end
	def generar_mascara(palabra)
		mascara = ''
		palabra_array = palabra.split ''
		palabra_array.each_with_index{ |caracter, index|
			mascara = mascara + '_ '
		}
		mascara = mascara[0, mascara.length-1]
		return mascara
	end
	def init_mascara
		@mascara = generar_mascara(@palabra)
		@array_mascara = @mascara.split " "
	end
	def get_palabra
		@palabra
	end
	def set_palabra(palabra)
		@palabra = palabra
		@array_palabra = @palabra.split ""
		init_mascara()
	end
	def get_mascara
		@mascara = @array_mascara.join ' '
	end
	def get_letra
		@letra
	end		

	def get_resultado
		if get_mascara == 'D E S A R R O L L O'
			@resultado = "Ganaste la partida"
		end

		return @resultado
	end
	def get_intentos
		@intentos
	end
	def get_pista
		@intentos-=1
		@pista
end
end