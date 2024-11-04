︠7c60be28-eb68-4afd-8242-853662c1b6b5s︠
1+1
︡d494f566-12d3-4106-bca9-bb360477eccb︡{"stdout":"2\n"}︡{"done":true}
︠a7578131-c46e-4cd6-a166-41e3d782118bs︠


# röpzh

def FreqSubtract(freq1, freq2):
    res = dict()
    freq2_keys = freq2
    for key, value in freq1.items():
        if key in freq2_keys:
            res[key] = value - freq2[key]
        if key not in freq2_keys:
            res[key] = value
    return res


freq1 = {'A': 3, 'B': 10, 'C': 1, 'D': 5}
freq2 = {'A': 2, 'B': 20, 'D': 5, 'E': 7}
#freq2['C']
FreqSubtract(freq1, freq2)
︡42775ae7-3b92-423c-b0c5-9effa3d0e317︡{"stdout":"{'A': 1, 'B': -10, 'C': 1, 'D': 0}\n"}︡{"done":true}
︠6b7c9dea-ffd4-4b93-a51e-79ad8449f456s︠


def FreqSubtract(freq1, freq2):
    res = dict()
    freq2_keys = freq2
    for key, value in freq1.items():
        res[key] = value - freq2.get(key, 0)
    return res


freq1 = {'A': 3, 'B': 10, 'C': 1, 'D': 5}
freq2 = {'A': 2, 'B': 20, 'D': 5, 'E': 7}
#freq2['C']
FreqSubtract(freq1, freq2)
︡b52d7047-6abc-45cf-ac6b-20bafaaa290e︡{"stdout":"{'A': 1, 'B': -10, 'C': 1, 'D': 0}\n"}︡{"done":true}
︠a31a6a28-ac57-48ba-a83a-972245a98309s︠


def FreqSubtract(freq1, freq2):
    return {key : freq1[key] - freq2.get(key, 0) for key in freq1}


freq1 = {'A': 3, 'B': 10, 'C': 1, 'D': 5}
freq2 = {'A': 2, 'B': 20, 'D': 5, 'E': 7}
#freq2['C']
FreqSubtract(freq1, freq2)
︡e12426a6-6a31-4da8-a3e7-327d2dbd16b4︡{"stdout":"{'A': 1, 'B': -10, 'C': 1, 'D': 0}\n"}︡{"done":true}
︠25d061ec-47e4-4dab-94ed-aaa95c28d5a4︠

# fsor05
# fel4

plaintext = "ATTACKATDOWN"
ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
pwd = "LEMON"

key = "LEMONLEMONLE"

def gen_V_key(pwd, length):
    key = ""
    #print(int(length / len(pwd)))
    #print(length % len(pwd))
    numOfSub = length % len(pwd)
    for i in [1..int(length / len(pwd))]:
        key += pwd
    key += pwd[0:numOfSub]
    return key

gen_V_key(pwd, len(plaintext))
︡7b018c4f-1aa8-4034-bed1-f27a2c9f75d0︡{"stdout":"2\n2\n'LEMONLEMONLE'\n"}︡{"done":true}
︠a8796b6b-3ad4-49fe-8667-e023241b8c6es︠


"alma"[1:3]
︡8f99be18-f620-43c8-86f2-54b248352159︡{"stdout":"'lm'\n"}︡{"done":true}
︠df1f856a-1acc-4fdf-8366-adba7bff0e23︠


def V_encrpyt(plaintext, key):
    if len(plaintext) != len(key):
        raise ValueError("len(plaintext) != len(key)")

    ciphertext = []
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    for idx in [0..len(plaintext)-1]:
        cipher_idx = (ABC.index(plaintext[idx]) + ABC.index(key[idx])) % len(ABC)
        cipher_ch = ABC[cipher_idx]
        ciphertext.append(cipher_ch)
    return "".join(ciphertext)

V_encrpyt(plaintext, "LEMONLEMONLE")
︡d3fa1801-5cf4-4ad0-8a1c-a6f8e8104b53︡{"stdout":"'LXEOPVEERAGR'\n"}︡{"done":true}
︠93ce43de-cc99-443b-842c-d6be09e20073s︠


def V_decrpyt(ciphertext, key):
    if len(ciphertext) != len(key):
        raise ValueError("len(ciphertext) != len(key)")

    plaintext = []
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    for idx in [0..len(ciphertext)-1]:
        plain_idx = (ABC.index(ciphertext[idx]) - ABC.index(key[idx])) % len(ABC)
        plain_ch = ABC[plain_idx]
        plaintext.append(plain_ch)
    return "".join(plaintext)

V_decrpyt("LXEOPVEERAGR", "LEMONLEMONLE")
︡0bfa62f5-4e5b-4c90-9898-0efc920dec7d︡{"stdout":"'ATTACKATDOWN'\n"}︡{"done":true}
︠90b3b132-944e-4959-9fc3-6bdb2c652a5d︠


# sztring reprezentálása egész számként
"hello world" -> 3246523467376
3246523467376 -> "hello world"



# aszimmetrikus kulcsú titkosítás

# Alice -------------------------------------------------------------- Bob
"hello world" -> 100

100 * 7 = 700 = ciphertext                                             700
      pub_key=7

                                                                       700 * (1/7)
                                                                       priv_key=1/7


︡b230580b-1ddd-4bc2-a0c9-7038b02d0c6d︡
︠2f228ec3-853b-48c6-80d0-9bbd881192bds︠

def Asym_encrypt(plain, pub_key):
    return plain * pub_key

def Asym_decrypt(cipher, priv_key):
    return cipher * priv_key

Asym_encrypt(100, 7)

︡2f3abd69-3de2-40fb-ac21-f05af7eb9f64︡{"stdout":"700\n"}︡{"done":true}
︠3a1f30ff-866b-404b-9c71-28789508b7bfs︠

Asym_decrypt(700, 1/7)
︡f7e3b090-a1d9-44a9-ae58-ff25815d0dd2︡{"stdout":"100\n"}︡{"done":true}
︠c4e645f5-d16d-4f10-bd4c-a0ed402c0e8e︠









