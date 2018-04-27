Feature:
	Como Aficionado al futbol
	Deseo Jugar Hangman Soccer
	Para Adivinar la palabra

Scenario: Mostrar guiones para las letras de la palabra
	Given que abri el juego
	When debo seleccionar "Jugadores"
	Then deberia mostrar guiones