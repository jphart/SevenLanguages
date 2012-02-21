food_type(chedder, chesse).
food_type(ritz, cracker).
food_type(beef, meat).
food_type(sausage, meat).
food_type(icecream, pudding).
food_type(cake, pudding).

flavour(sweet, pudding).
flavour(savory, meat).
flavour(savory, cheese).

food_flavour(X, Y) :- food_type(X, Z), flavour(Y, Z).