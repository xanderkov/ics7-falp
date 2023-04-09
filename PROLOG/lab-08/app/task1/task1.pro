domains
	adress = adr(string, string, integer, integer).
	
	property = auto(string, string, string, integer, string);
		   building(string, integer, integer);
		   plot(string, integer, integer);
		   water_vehicle(string, string, string, integer).
	name, bankname, check = string.

	
predicates
	record(string, integer, adress)
	st(string, property)
	bank(string, string, string, integer)

	title_by_name(string, string)
	title_price_by_name(string, string, integer)
	all_price_by_name(string, integer)


clauses
	record("Andrey", 123, adr("Moscow", "Baumanskaya", 3, 31)).
	record("Meytimir", 223, adr("Kazan", "Lenina", 4, 42)).
	record("Andrey", 323, adr("Vladivostor", "Lesnaya", 5, 53)).
	record("Alexander", 433, adr("St-Petersburg", "Nicolskaya", 6, 64)).
	record("Alexey", 555, adr("Moscow", "Lenina", 7, 75)).

	bank("Andrey", "Sberbunk", "12345", 1).
	bank("Meytimir", "Ipb", "23451", 2).
	bank("Alexander", "Alpha", "34512", 3).
	bank("Alexey", "VTB", "45123", 4).

	st("Andrey", auto("A", "BMV", "blue", 300, "co123l")).
	st("Andrey", building("Pik", 1, 1000)).
	st("Andrey", plot("Derevnya", 2, 1001)).
	st("Andrey", water_vehicle("treska", "blue", "ao123l", 1000)).	

	st("Meytimir", auto("B", "Porshe", "grey", 900, "ka777z")).
	st("Meytimir", plot("Derevenka", 6, 6666)).
	st("Meytimir", water_vehicle("Forel", "red", "ad312a", 1000)).
	st("Meytimir", auto("C", "Ferrari", "red", 10, "an923l")).
	
	st("Alexander", auto("D", "BMV", "white", 607, "gu666y")).
	st("Alexander", building("Level", 7, 2000)).
	st("Alexander", water_vehicle("Seledka", "green", "jo763p", 1000)).

	st("Alexey", auto("Machine", "Reno Logan", "brown", 2, "di420e")).
	st("Alexey", building("Brot", 7, 2121)).
	
	title_by_name(Name, K1):-
		st(Name, auto(K1, _, _, _, _));
		st(Name, building(K1, _, _));
		st(Name, plot(K1, _, _));
		st(Name, water_vehicle(K1, _, _, _)).
	
	title_price_by_name(Name, K1, Pr):-
		st(Name, auto(K1, _, _, Pr, _));
		st(Name, building(K1, _, Pr));
		st(Name, plot(K1, _, Pr));
		st(Name, water_vehicle(K1, _, _, Pr)).
	
	all_price_by_name(Name, Pr):-
		st(Name, auto(_, _, _, Pr, _)).

goal
	title_by_name("Andrey", PName).
	% title_price_by_name("Andrey", Pname, PPrice).
	% all_price_by_name("Andrey", Price).