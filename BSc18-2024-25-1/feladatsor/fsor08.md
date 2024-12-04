# ELTE IK Diszkrét modellek alkalmazásai (BSc, 18, F) 8. feladatsor



## 1. feladat

Shamir titokmegosztással az `5` titkot osszuk szét `4` ember között, ahol legalább `3` ember legyen szükséges az eredeti titok előállításához. Az `1`, `3` és `4` kezdetű titokrészletekből állítsuk elő az eredeti titkot Lagrange-interpolációval.

## 2. feladat

Írjon `SSS_secret_pieces_from_primenum_and_coeffs(num_of_people, secret, primenum, coeff)` szignatúrával függvényt, amely a `secret` titkokból `num_of_people` db titokrészletet készít, ahol a használt prímszám `primenum` legyen, `coeff` pedig tartalmazza a polinom szabad tagján kívüli együtthatókat.

## 3. feladat

Írjon `SSS_compute_secret(primenum, secret_pieces)` szignatúrával függvényt, amely a `secret_pieces` titokrészletekből előállítja a titkot, a használt prímszám pedig `primenum`.

## 4. feladat

Írjon `get_possible_secrets(primenum)` szignatúrával függvényt, amely egy Shamir titokmegosztáskor használt prímszámot kap paraméterként, és visszatér a lehetséges titok listájával.

## 5. feladat

Írjon `SSS_secret_pieces(required_num_of_people, num_of_people, secret)` szignatúrával függvényt, amely a `secret` titokból `num_of_people` db titokrészletet készít, ahol a minimum szükséges részletek száma `required_num_of_people`. A függvény véletlenszerűen válasszon ki egy alkalmas polinomot és prímszámot. A prímszám legyen kellően távol a titoktól (a függvény adja eredményül azt is, melyik prímszám lett kiválasztva).

## 6. feladat

A `34fg__#Gfb34226fdsWWQl36lII234i<!%fGZjsdJFEBD77467effO+36{}__IOQsFF&363&ZzOO053` jelszóhoz készítsen titokrészleteket, amelyet `10` ember között osztunk szét úgy, hogy legalább `7` ember szükséges legyen az eredeti jelszó előállításához. Adott `7` titokrészletből állítsa elő az eredeti jelszót.


