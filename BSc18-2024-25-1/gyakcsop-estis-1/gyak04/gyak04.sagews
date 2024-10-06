︠d6b0aec7-c9f7-4032-80f5-c40f47b95ac1s︠
# gyak04

# fsor03, fel4
# Számolja meg, hány prím van a [0;n] intervallumban.

len(prime_range(3))
len(prime_range(10))
len(prime_range(10000))
︡8ff16cf8-e10a-4d03-9cfa-355c0e21a460︡{"stdout":"1\n"}︡{"stdout":"4\n"}︡{"stdout":"1229\n"}︡{"done":true}
︠c9f54a8b-9268-4c94-89a1-cb7a0cae5678s︠

# fel4
# Írjon függvényt, amely visszatér a paraméterben kapott egész szám önmagánál kisebb osztóinak összegével.

# megoldás1: for ciklus i=1..n-1, ha osztható, adjuk hozzá egy result-hoz
# megoldás2: 

def foo(n):
    return sum(divisors(n)) - n

foo(8) # 1 + 2 + 4 = 7
foo(10) # 1 + 2 + 5 = 8
︡6a3a84e7-9e09-414d-88fc-154a01f0af83︡{"stdout":"7\n"}︡{"stdout":"8\n"}︡{"done":true}
︠97950e11-3e6c-4775-a5ec-613ef314aa81s︠

divisors(10)
︡a8227a94-23b8-455b-9dab-ed7eed261a0a︡{"stdout":"[1, 2, 5, 10]\n"}︡{"done":true}
︠dfd9b3c9-c40e-4d83-8d47-2cc69188a045s︠

gcd(18, 24)
︡96f7aa8e-291e-4f81-9011-dc26f177b552︡{"stdout":"6\n"}︡{"done":true}
︠d408e412-93a8-4c46-9966-b43e84a26960︠









