require 'sinatra'
require './config'

get '/' do
	erb(:index)
end

post '/jugar' do
	erb(:jugar)
end

post '/Validar' do
  erb(:jugar)
end