require 'sinatra'
require './config'
require './lib/jugar.rb'

get '/' do
	erb(:index)
end

post '/jugar' do
	session['ValorAProbar']  = ""
	session['resultado'] = ""
	erb(:jugar)
end

post '/Validar' do
  	#jugar = Jugar.new 
	#if params['ValorAProbar'].empty? 
	#	session['resultado'] = "Ḯngrese una letra"
	#else
	#	session['resultado'] = jugar.validar(params['ValorAProbar'])
	#end
	#puts session
	palabra = "MESSI"
	puts "leyendo #{palabra}"
	@@juego= Jugar.new
	@@juego.set_palabra(palabra)
	@@palabra_secreta = @@juego.get_palabra
    @mascara=@@juego.get_mascara
	
    @@palabra_secreta = @@juego.get_palabra
    @@juego.actualizar(params['ValorAProbar'])
    @mascara=@@juego.get_mascara
    @resultado = @@juego.get_resultado
	
	erb(:jugar)	
end