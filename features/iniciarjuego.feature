Feature:
	Como Aficionado al futbol
	Deseo iniciar el juego de Hangman Soccer
	Para Empezar a jugar

Scenario: Que aparezca un titulo de bienvenida
	Given que abri el juego
	Then debo ver "Bienvenido a Hangman Soccer"

Scenario: Que aparezca un la categoria de Jugadores
	Given que abri el juego
	Then debo ver "Jugadores"