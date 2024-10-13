# ELTE IK Diszkrét modellek alkalmazásai (BSc, 18, F) 5. feladatsor



## 1. feladat

Caesar-rejtjelezéssel (Caesar-titkosításal) titkosítsa a `password` sztringet a `shift=1` eltolással. Fejtse vissza a kapott `ciphertext`-et.

Írjon `Caesar_encrypt(plaintext, shift)` és `Caesar_decrypt(ciphertext, shift)` szignatúrákkal Caesar-rejtjelező függvényeket.

Mutassa be a függvények működését az `árvíztűrő tükörfúrógép` sztringen, ahol az eltolás legyen 4.

## 2. feladat

Írjon `ROT_encrypt((plaintext, key)` és `ROT_decrypt(ciphertext, key)` szignatúrákkal ROTn titkosító függvényeket.

## 3. feladat

A `JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV` ciphertext-et ROTn eljárással titkosították. Törje fel a titkosítást: mi volt az eredeti plaintext?

## 4. feladat

Implementálja a Vigenère cipher-t.

## 5. feladat

Írjon `Convert_String_to_Num256(string)` és `Convert_Num256_to_String(num)` konvertáló függvényeket, amelyekkel egy sztringet 256-os számrendszerbeli számként tudunk reprezentálni.

## 6. feladat

Implemenálja a szorzás/osztáson alapuló aszimmetrikus titkosítást `Asym_encrypt(plain, pub_key)` és `Asym_decrypt(cipher, priv_key)` függvényekben!

## 7. feladat

Írjon `RSA_encrypt()` néven függvényt, amely a titkosítandó sztringet, valamint egy RSA publikus kulcsot (`(n, e)` alakú rendezett pár) kap paraméterként. A függvény a kapott sztringet reprezentálja természetes számként, a tanult RSA eljárással titkosítsa, majd a kapott cipher-rel tér vissza.

Írjon `RSA_decrypt()` néven függvényt, amely a titkosított üzenetet (cipher-t), egy RSA privát kulcsot valamint egy modulust kap paraméterként. A függvény a tanult RSA eljárással fejtse vissza az eredeti sztringet, amelyet visszatérési értékként juttasson vissza a hívóhoz.

Az `RSA_encrypt()` függvénnyel titkosítsa a `This is a plaintext` sztringet. Próbálja ki, hogy a kapott cipher-rel hívva az `RSA_decrypt()` függvény visszatér-e az eredeti sztringgel. Egy megfelelő RSA kulcs pár:

~~~
publikus kulcs = (2737761589089748594790007149346373275182007419519011, 5)

privát kulcs = 3832866224725648032706009862578776439560195767108789
~~~


