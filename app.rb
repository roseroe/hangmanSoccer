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
  	jugar = Jugar.new 
	if params['ValorAProbar'].empty? 
		session['resultado'] = "Ḯngrese una letra"
	else
		session['resultado'] = jugar.validar(params['ValorAProbar'])
	end
	puts session
	erb(:jugar)	
end