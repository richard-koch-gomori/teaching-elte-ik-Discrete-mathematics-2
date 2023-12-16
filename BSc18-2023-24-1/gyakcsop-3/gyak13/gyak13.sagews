︠7e10727c-e44a-464f-8925-1a4770972db4s︠
1+1
︡3be979ac-255e-4311-8082-2800dc10d4f8︡{"stdout":"2"}︡{"stdout":"\n"}︡{"done":true}
︠37ddf00b-36a6-440e-9591-aa726e03a7a4︠

# moduli = [7, 11, 15]
def RNS_ConvertTo(moduli, a):
    M = prod(moduli)
    if a >= M:
        raise ValueError("RNS_ConvertTo() error: input exceeds M")
    return [a % i for i in moduli]

RNS_ConvertTo([7, 11, 15], 16)
RNS_ConvertTo([7, 11, 15], 52)

︡aaece256-1755-4397-bec8-50e1f2010644︡{"stdout":"[2, 5, 1]\n"}︡{"stdout":"[3, 8, 7]\n"}︡{"done":true}
︠a06ca169-f23d-40b0-a2f2-885414e6ad7ds︠

def RNS_ConvertFrom(moduli, a):
    if len(moduli) != len(a):
        raise ValueError
    return CRT(a, moduli)


RNS_ConvertFrom([7, 11, 15], [2, 5, 1])
# x mod 7 = 2
# x mod 11 = 5
# x mod 15 = 1

RNS_ConvertFrom([7, 11, 15], [3, 8, 7])

︡f10ffa2a-2583-4fc4-b98d-eaf0481d5d3c︡{"stdout":"16\n"}︡{"stdout":"52\n"}︡{"done":true}
︠ade86b07-b587-44e6-8e12-37fe45a67498︠

def RNS_add(moduli, a, b):
    if not(len(moduli) == len(a) and len(a) == len(b)):
        raise ValueError("RNS_add() error: invalid arguments")
    return [ ( a[i] + b[i] ) % moduli[i] for i in [0..len(moduli) - 1]]


x = RNS_add([7, 11, 15], [2, 5, 1], [3, 8, 7])
RNS_ConvertFrom([7, 11, 15], x)

︡7fae4617-39a1-4241-b55e-d1b4a323432a︡{"stdout":"68\n"}︡{"done":true}
︠0dadfd7a-f2bd-4449-91ee-1242e83d7c8b︠


# 3. feladat
# Állítsunk elő 3 db. páronként relatív prímet, mert a RNS -hez ilyen számok kellenek.
# a és b relatív prim: lnko(a, b) = 1
# akárhány db. szám páronként relatív prím, azt jelenti hogy bárhogyan választok közülük 2 db. számot, azok relatív prímek lesznek

# tf. x = [2, 7, 11]
# kérdés: 12 hozzávehető-e?

︡6a09d25d-b989-42b4-bbd3-56421cfd65ec︡
︠b19ba20f-f597-407c-9cd5-8b7b46f31e2f︠


# kínai maradéktétellel lehet titokmegosztást csinálni:
S = 123

# relative primes:
2, 7, 11, 15

# secret parts:
# S mod mi

123 mod 2 = 1
123 mod 7 = 4
123 mod 11 = 2
123 mod 15 = 3

# titokrészletek:
(2, 1)
(7, 4)
(11, 2)
(15, 3)

︡0387c880-72d9-4473-8c2c-9c44bc8753fc︡
︠0de7e09b-dd36-4317-bdbb-f4c9b10d1036︠

# ezekből a titokrészletekből előállítható az eredeti titok
crt([1, 4, 2, 3], [2, 7, 11, 15])

# ezekből a titokrészletekből előállítható az eredeti titok
crt([1, 4, 2], [2, 7, 11])

# csak ezekből viszont nem
crt([1, 4], [2, 7])

︡12fd077e-ef1f-4682-bfbe-382ee9466c83︡{"stdout":"123\n"}︡{"stdout":"123\n"}︡{"stdout":"11\n"}︡{"done":true}
︠4db4d691-0016-46a2-aabc-d9e6bfdc8bdf︠


























