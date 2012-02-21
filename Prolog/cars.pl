car_make(mazda).
car_make(ford).
car_make(vw).
car_make(vauxhall).

car_model(mx5, mazda).
car_model(fiesta, ford).
car_model(golf, vw).
car_model(corsa, vauxhall).
car_model(galaxy, ford).
car_model(focus, ford).
car_model(polo, vw).

car_type(mx5, convertable).
car_type(fiesta, small_car).
car_type(polo, small_car).
car_type(corsa, small_car).
car_type(galaxy, people_carrier).
car_type(golf, medium_car).
car_type(focus, medium_car).

make_type(X, Y) :- car_model(Z, X), car_type(Z, Y).