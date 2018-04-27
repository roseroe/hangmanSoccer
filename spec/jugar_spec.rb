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
end