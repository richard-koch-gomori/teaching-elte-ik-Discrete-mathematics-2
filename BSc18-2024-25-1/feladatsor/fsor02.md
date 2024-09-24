# ELTE IK Diszkrét modellek alkalmazásai (BSc, 18, F) 2. feladatsor



## 1. feladat

Írassuk ki illetve tároljuk listában az első `100` db köbszámot.

## 2. feladat

Írassuk ki illetve tároljuk listában az első `100` db természetes szám közül a `3`-mal oszthatóak köbét.

## 3. feladat

Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring egy olyan másolatával, ahol a páros indexű karakterek duplán szerepelnek. Például az `alma` sztringre a helyes eredmény `aalmma`.

## 4. feladat

Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring Mocking Spongebob Squarepants egy véletlenszerű példányával. Írja meg a függvény olyan változatát is, amely garantálja, hogy a mondatkezdő betű mindig nagybetű.

## 5. feladat

Egy `X` halmazon értelmezett binér relációt formálisan `X`-beli rendezett párok halmazaként szoktunk definiálni. Írjunk eljárásokat, melyek egy ilyen formában adott relációról megmondják, hogy az reflexív ill. tranzitív-e (két külön eljárást). A bemenetük az `X` halmaz és a reláció. Tehát pl.  
`Is_Reflexive({1, 2, 3, 4}, [(1, 1), (2, 2), (3, 3), (4, 4)])` válasza `True`,  
`Is_Reflexive({1, 2, 3}, [(1, 1), (1, 2), (2, 2)])` válasza `False`,  
`Is_Transitive({1, 2, 3}, [(1,1), (1,2), (1,3), (2,1), (2,2), (2,3), (3,1), (3,2), (3,3)])` válasza `True`,  
`Is_Transitive({1, 2, 3, 4}, [(1, 2), (2, 3), (1, 4), (2, 2)])` válasza `False`.


