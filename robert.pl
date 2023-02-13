weapon(robert,country_a).
hostile(country_a).
crime(X):-weapon(X,Y),hostile(Y).
