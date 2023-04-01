domains
	name = string
	phone = string
	city = string	
	street = string
	home = string
	adress = adr(string, string, integer, integer) 
	
predicates
	record(string, integer, adress)
	auto(string, string, string, integer, string)

clauses
	record("Andrey", 123, adr("Moscow", "Baumanskaya", 3, 31)).
	record("Meytimir", 223, adr("Kazan", "Lenina", 4, 42)).
	record("Andrey", 323, adr("Vladivostor", "Lesnaya", 5, 53)).
	record("Alexander", 433, adr("St-Petersburg", "Nicolskaya", 6, 64)).
	record("Alexey", 555, adr("Moscow", "Lenina", 7, 75)).

	auto("Andrey", "BMV", "blue", 300, "co123l").
	auto("Meytimir", "Porshe", "grey", 900, "ka777z").
	auto("Meytimir", "Ferrari", "red", 10, "an923l").
	auto("Alexander", "BMV", "white", 607, "gu666y").
	auto("Alexey", "Reno Logan", "brown", 2, "di420e").

goal
	% adress(Name, Phone, City, Street, Home).
	% adress(_, _, _, _, _).
	% adress("Andrey", "123", "Moscow", "Baumanskaya", "3").
	auto(Name, "BMV", _, _, _), record(Name, Phone, adr(Town, _, _, _)).
