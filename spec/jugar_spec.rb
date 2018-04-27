require './lib/jugar.rb'

#spec/jugar_spec.rb
describe Jugar do
	it "debe decir 'letra  ingresada esta incorrecta' cuando se ingrese 'A'" do
		#Arrange: preparacion de datos y escenario de prueba
		obj = Jugar.new 

		#Act: ejecucion de escenario de prueba
		result = obj.validar "A"

		#Assert: validacion de resultados
		expect(result).to eq "Letra ingresada esta incorrecta"
	end

	it "debe decir 'letra  ingresada esta incorrecta' cuando se ingrese 'M'" do
		#Arrange: preparacion de datos y escenario de prueba
		obj = Jugar.new 

		#Act: ejecucion de escenario de prueba
		result = obj.validar "M"

		#Assert: validacion de resultados
		expect(result).to eq "Letra ingresada esta correcta"
	end



	it "deberiamos mostrar una letra en vez de un guion si pertenece a la palabra" do
		@palabra = 'MESSI'
		@juego = Jugar.new
		@juego.set_palabra(@palabra)
		@juego.actualizar('M')
		# letra = @juego.get_letra
		mascara = @juego.get_mascara
		mascara.should == "M _ _ _ _"
	end

end