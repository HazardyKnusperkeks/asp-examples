house(1..5).

nationalities(english; japanese; norwegian; spanish; ukranian).

colors(blue; red; green; ivory; yellow).

cigarettes(chesterfields; kools; luckyStrike; oldGold; parliaments).

drinks(coffee; milk; orangeJuice; tea; water).

pets(dog; fox; horse; snail; zebra).
:- house(H), nationality(H, english), not color(H, red).
:- house(H), nationality(H, spanish), not pet(H, dog).
:- house(H), color(H, green), not drink(H, coffee).
:- house(H), nationality(H, ukranian), not drink(H, tea).
:- house(H), house(I), color(H, green), color(I, ivory), H != I + 1.
:- house(H), cigarette(H, oldGold), not pet(H, snail).
:- house(H), cigarette(H, kools), not color(H, yellow).
drink(3, milk).
nationality(1, norwegian).
:- house(H), house(I), cigarette(H, chesterfields), pet(I, fox), not neighbour(H, I).
:- house(H), house(I), cigarette(H, kools), pet(I, horse), not neighbour(H, I).
:- house(H), cigarette(H, luckyStrike), not drink(H, orangeJuice).
:- house(H), nationality(H, japanese), not cigarette(H, parliaments).
:- house(H), house(I), nationality(H, norwegian), color(I, blue), not neighbour(H, I).
