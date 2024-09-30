︠88cbe533-9d5e-4614-aaf9-3d5f17bc4635︠
# gyak02


1+1
︡592c3e32-46bd-4bb1-ae29-5da0d343b859︡{"stdout":"2\n"}︡{"done":true}
︠67c523a4-9fe3-4b16-aa26-f3199368ff97s︠

a = 10
a
︡f1324bee-c7bb-4bce-9d00-3a85e06d3ce1︡{"stdout":"10\n"}︡{"done":true}
︠21321e3c-f6f6-4983-8940-5ac294aaa527s︠

# komment

s = "string"
s
s = 'alma'
s
︡91352dd0-2447-48ac-80ff-01ec4c3f743d︡{"stdout":"'string'\n"}︡{"stdout":"'alma'\n"}︡{"done":true}
︠d927acd5-2220-4d9b-b990-ef8ed206158ds︠

s = 20
s
︡9380082c-9ab8-4831-bc72-ef1299e1eb28︡{"stdout":"20\n"}︡{"done":true}
︠ce7ebca0-a809-4b76-a0e4-1ab700db1415︠

L = [1, 3, 5]
L
L = [1..10]
L

︡078e0197-ea81-4374-a4f5-6169ca44ffe8︡{"stdout":"[1, 3, 5]\n"}︡{"stdout":"[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\n"}︡{"done":true}
︠ec610102-0380-46f0-bf08-ea66d2cb8552s︠

L = [x for x in [1..10] if x % 2 == 0]
L
︡26877cbe-88b2-4cc8-85a1-f6906b1c335e︡{"stdout":"[2, 4, 6, 8, 10]\n"}︡{"done":true}
︠5801ee07-2331-4968-922e-140175d723f5s︠

# fel1
# Írassuk ki illetve tároljuk listában az első 100 db köbszámot.

L = [x^3 for x in [1..100]]
L
︡3c6120ba-2cd7-4f05-9b50-dafe5b976630︡{"stdout":"[1, 8, 27, 64, 125, 216, 343, 512, 729, 1000, 1331, 1728, 2197, 2744, 3375, 4096, 4913, 5832, 6859, 8000, 9261, 10648, 12167, 13824, 15625, 17576, 19683, 21952, 24389, 27000, 29791, 32768, 35937, 39304, 42875, 46656, 50653, 54872, 59319, 64000, 68921, 74088, 79507, 85184, 91125, 97336, 103823, 110592, 117649, 125000, 132651, 140608, 148877, 157464, 166375, 175616, 185193, 195112, 205379, 216000, 226981, 238328, 250047, 262144, 274625, 287496, 300763, 314432, 328509, 343000, 357911, 373248, 389017, 405224, 421875, 438976, 456533, 474552, 493039, 512000, 531441, 551368, 571787, 592704, 614125, 636056, 658503, 681472, 704969, 729000, 753571, 778688, 804357, 830584, 857375, 884736, 912673, 941192, 970299, 1000000]\n"}︡{"done":true}
︠b4e58ac5-8dd0-4bf9-bd6d-57dad59ff5e2s︠

# fel2
# Írassuk ki illetve tároljuk listában az első 100 db természetes szám közül a 3-mal oszthatóak köbét.
L = [x^3 for x in [1..100] if x % 3 == 0]
L
︡9ec3e0e3-5b08-481b-b2b4-13bdd7c522a4︡{"stdout":"[27, 216, 729, 1728, 3375, 5832, 9261, 13824, 19683, 27000, 35937, 46656, 59319, 74088, 91125, 110592, 132651, 157464, 185193, 216000, 250047, 287496, 328509, 373248, 421875, 474552, 531441, 592704, 658503, 729000, 804357, 884736, 970299]\n"}︡{"done":true}
︠0d5e9ac4-b08c-4f42-8677-8492c4daa14as︠


s = "helloworld"
s
len(s)
s[0]
s += "alma"
s

︡7b1eadcd-33cb-4beb-a3c2-4a59b81f9cd5︡{"stdout":"'helloworld'\n"}︡{"stdout":"10\n"}︡{"stdout":"'h'\n"}︡{"stdout":"'helloworldalma'\n"}︡{"done":true}
︠9ad1a62d-aef6-4a93-8406-1a85ffebc47as︠

str = "helloworld"
str

︡a8d30175-bf88-4e84-8cd2-bb5bb8ec9fc0︡{"stdout":"'helloworld'\n"}︡{"done":true}
︠f9dee6b5-ebb4-4f49-a91b-fec714fb90b2s︠

str

︡7691dba0-656f-4e60-893f-bd55d6d61062︡{"stdout":"'helloworld'\n"}︡{"done":true}
︠b85e4839-40a7-492b-8f2a-0bf91a8f163cs︠

a = 10
if a % 2 == 0:
    print("paros")
else:
    print("paratlan")
    print("vmi")




︡fcb8432e-7096-49b6-aa12-32977ff46756︡{"stdout":"paros\n"}︡{"done":true}
︠727de9a2-3e9c-4f4a-8a1d-cc0a3af01bdbs︠

for idx in [1..10]:
    print("idx = " + str(idx))

︡cb5d262f-925b-46fa-a1e0-e518f95493bb︡{"stdout":"idx = 1\nidx = 2\nidx = 3\nidx = 4\nidx = 5\nidx = 6\nidx = 7\nidx = 8\nidx = 9\nidx = 10\n"}︡{"done":true}
︠2be5a3ce-35ca-45aa-8017-351ca3cf4b05s︠

x = 10
while x > 5:
    print("x = " + str(x))
    x -= 1


︡49c58bbb-7247-46ba-a826-25cc118b0945︡{"stdout":"x = 10\nx = 9\nx = 8\nx = 7\nx = 6\n"}︡{"done":true}
︠d6f9f898-6197-4f97-a76c-fee3702f6332s︠


# fel3
# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring egy olyan másolatával, ahol a páros indexű karakterek duplán szerepelnek. Például az alma sztringre a helyes eredmény aalmma.
︡83e4ed27-489e-41ac-9a33-5a93b1a345d8︡{"done":true}
︠52867835-ae00-488a-b34b-b8a1c2989023s︠

s = "alma"
res = ""

for idx in [0..len(s)-1]:
    res += s[idx]
    if idx % 2 == 0:
        res += s[idx]

print(res)
︡a7eff343-77f6-4d64-aa11-579697148413︡{"stdout":"aalmma\n"}︡{"done":true}
︠53ca67e3-80ac-4b64-b8c3-6a75f06460e8s︠

s = "alma"
res = ""

for idx,ch in enumerate(s):
    #print(idx)
    #print(ch)
    if idx % 2 == 0:
        res += ch + ch
    else:
        res += ch

print(res)
︡0191a041-eedd-4ed2-8c31-41eccfd03b61︡{"stdout":"aalmma\n"}︡{"done":true}
︠527ab71a-2346-40b3-8f38-ba5779532a5d︠

res = ""
res += "a"
res += "a"
res += "l"
res += "m"
...

# "", "a", "aa", "aal", "aalm"

︡b7a68629-5e9d-4a21-846e-e6b23a7d8d31︡
︠34e7ea85-553a-4710-8678-34f62ad946dbs︠
︡a0d742f8-9e18-4e54-828c-3ca487a898e6︡{"done":true}
︠ec95955d-c921-476c-b3a3-14c5a3aa8f9bs︠

s = "alma"
res = []

for idx,ch in enumerate(s):
    #print(idx)
    #print(ch)
    if idx % 2 == 0:
        res.append(ch)
    res.append(ch)

print(res)
res_str = "".join(res)
res_str
︡d696ff4e-79db-4d00-86cc-5724817b1be1︡{"stdout":"['a', 'a', 'l', 'm', 'm', 'a']\n"}︡{"stdout":"'aalmma'\n"}︡{"done":true}
︠50e6808c-8da7-47cb-82d8-6eb7605a2079s︠

def foo(a, b):
    x = a + 1
    return x + b

res = foo(1, 2)
res
︡41402151-e11c-4043-b2b8-30f4ac2e2597︡{"stdout":"4\n"}︡{"done":true}
︠39410075-0404-41dd-9209-812cfcdbdff9s︠


def sol3(s):
    res = []

    for idx,ch in enumerate(s):
        #print(idx)
        #print(ch)
        if idx % 2 == 0:
            res.append(ch)
        res.append(ch)

    #print(res)
    res_str = "".join(res)
    return res_str

sol3("hello world")
︡5f06a81a-2185-4189-96c8-982e58ce6e81︡{"stdout":"'hhellloo wworrldd'\n"}︡{"done":true}
︠c948361c-494b-4f42-88ae-61c9666fcf72s︠

randint(1, 3)

︡c5f518fd-c350-450b-b977-dd6936b63511︡{"stdout":"1\n"}︡{"done":true}
︠b12f339a-5f02-4caa-b885-150298ac4330s︠

'a'.upper()
'B'.lower()

︡d7d3776d-ec5a-4f76-8b1c-fd7763b39e0f︡{"stdout":"'A'\n"}︡{"stdout":"'b'\n"}︡{"done":true}
︠67f9bebc-76b6-464b-bad5-06a127dde852s︠


# fel4
# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring Mocking Spongebob Squarepants egy véletlenszerű példányával. Írja meg a függvény olyan változatát is, amely garantálja, hogy a mondatkezdő betű mindig nagybetű.
︡141563ba-10fb-454f-9759-7c933dcc42be︡{"done":true}
︠668fa4cb-17bf-4f37-bbc7-9399482d6906s︠

def Mocking_Spongebob(s):
    res = []
    for idx in [0..len(s)-1]:
        ch = s[idx]
        if randint(1, 2) == 1:
            res.append(ch.upper())
        else:
            res.append(ch.lower()) # vagy csak res.append(ch)
    return "".join(res)

Mocking_Spongebob("this is a demo string")
︡1bb99139-757a-4fb9-88fc-e130bc56bc0e︡{"stdout":"'tHis Is A dEmo StrING'\n"}︡{"done":true}
︠c69cc7df-01a2-426e-933b-25c8abbb7c28s︠

def Mocking_Spongebob_b(s):
    res = []
    res.append(s[0].upper())
    for idx in [1..len(s)-1]:
        ch = s[idx]
        if randint(1, 2) == 1:
            res.append(ch.upper())
        else:
            res.append(ch.lower()) # vagy csak res.append(ch)
    return "".join(res)

Mocking_Spongebob_b("this is a demo string")

︡3e474851-9d96-4508-84c4-9332b437eda5︡{"stdout":"'THIs IS a demo stRING'\n"}︡{"done":true}
︠2c61ac1b-6e36-4398-9f2e-ba48ae87e7e2s︠

reset("str")

︡caac0f4f-bd5d-4f9e-a3d9-403c39b661ca︡{"done":true}
︠49907b67-06f6-4f84-a4ec-06741e18de5bs︠


a = 10
print("the value of a=" + str(a))
print("the value of a=", a)
︡fc416a47-597d-4058-86e1-9335920c1eff︡{"stdout":"the value of a=10\n"}︡{"stdout":"the value of a= 10\n"}︡{"done":true}
︠6f085f9d-5b44-48e6-9d22-d457cf43283d︠









