︠051e6996-be49-48ab-9285-667adc8d10c5︠
# gyak02

1+1

︡d0209aa0-9325-4813-9aef-d3723c35ea87︡{"stdout":"2\n"}︡{"done":true}
︠e65dce54-3299-4037-8b86-3bb33eadaa45︠

2^3

︡9b4e02cb-1c5e-4d45-861e-22c4a107d7cc︡{"stdout":"8\n"}︡{"done":true}
︠4c38053c-3719-4cdd-af93-434f4735a893s︠

x = 2
print(x)
x += 10
print(x)

︡10e15ca1-fc2b-4cc8-b579-28404d91ecee︡{"stdout":"2\n"}︡{"stdout":"12\n"}︡{"done":true}
︠e74ac336-0fee-43db-ba97-308804eca642︠

print(x)

︡14d51eb0-7354-47f7-9489-6e3e1ac7686a︡{"stdout":"12\n"}︡{"done":true}
︠95a89837-7722-451f-a7fd-dac17869bad2︠

print("alma")

︡eff62304-9e68-4016-b52d-c8e6014d5ede︡{"stdout":"alma\n"}︡{"done":true}
︠9d377f5a-cb9e-4530-940f-7f4facad4bbd︠

y = "alma"
y += "_123"
print(y)

︡1f421851-ab17-4633-9aea-89676e42519f︡{"stdout":"alma_123\n"}︡{"done":true}
︠45b75379-b22a-4562-8ff8-b008b01b8496s︠

print(x)
x = "helloworld"
print(x)

︡81893138-6f98-4a08-ade0-f99d374f6e10︡{"stdout":"12\n"}︡{"stdout":"helloworld\n"}︡{"done":true}
︠509827de-12dd-483a-9ffa-e66feb4d8600s︠

print([1, 2, 3])
print([1..10])

︡dc4f8a9a-c6ba-462d-aa8e-283cb754355e︡{"stdout":"[1, 2, 3]\n"}︡{"stdout":"[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\n"}︡{"done":true}
︠7c289a19-a8b0-4601-857e-256bac64f71c︠

L = [1, 2, 3, 10, 20]
print(L)

︡7b534973-ce47-4339-9bf0-1813808773b6︡{"stdout":"[1, 2, 3, 10, 20]\n"}︡{"done":true}
︠e1bc69db-9a30-4c05-8b61-2db27a74c725︠

# lista generálás
L = [x for x in [10..20] if x % 2 == 0]
print(L)

︡fd4ec3e6-6963-4f18-a02a-49b327883b6b︡{"stdout":"[10, 12, 14, 16, 18, 20]\n"}︡{"done":true}
︠316f3b8e-162e-4a07-927e-b74221423de6︠

str = "helloworld"
print(str[1])
print(str[2])
len(str)

︡f3d28af5-f6c1-4164-9649-01200ab3fdb6︡{"stdout":"e\n"}︡{"stdout":"l\n"}︡{"stdout":"10\n"}︡{"done":true}
︠ac3da8a8-0bfc-48ed-b484-77b496632228︠

string = "helloworld"
string
string += 2012

︡370557a4-79ee-46a1-8d53-e1edc6874f17︡{"stdout":"'helloworld'\n"}︡{"stderr":"Error in lines 3-3\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/rings/integer.pyx\", line 1762, in sage.rings.integer.Integer.__add__\n    return coercion_model.bin_op(left, right, operator.add)\n  File \"sage/structure/coerce.pyx\", line 1269, in sage.structure.coerce.CoercionModel.bin_op\n    raise bin_op_exception(op, x, y)\nTypeError: unsupported operand parent(s) for +: '<class 'str'>' and 'Integer Ring'\n"}︡{"done":true}
︠eb12b3d1-9936-4adc-9570-188edfdab341s︠

# string esetében " és ' ugyanaz'"

# korábban az str egy objektumra mutaott
string = "helooworld"
reset('str') # visszaállítja az str név erdeti jelentését
string += str(2012) # az str fv-t szertnénk hívni
print(string)

︡050f7fbb-8ba6-41a3-a44b-351a13f0a2c4︡{"stdout":"helooworld2012\n"}︡{"done":true}
︠900573d9-3951-4a88-80eb-8450cfe599ae︠

# 1. fel
# Írassuk ki illetve tároljuk listában az első 100 db köbszámot.

L = [x^3 for x in [1..100]]
print(L)

︡e1f889af-1077-440e-8a42-37a66dff8e62︡{"stdout":"[1, 8, 27, 64, 125, 216, 343, 512, 729, 1000, 1331, 1728, 2197, 2744, 3375, 4096, 4913, 5832, 6859, 8000, 9261, 10648, 12167, 13824, 15625, 17576, 19683, 21952, 24389, 27000, 29791, 32768, 35937, 39304, 42875, 46656, 50653, 54872, 59319, 64000, 68921, 74088, 79507, 85184, 91125, 97336, 103823, 110592, 117649, 125000, 132651, 140608, 148877, 157464, 166375, 175616, 185193, 195112, 205379, 216000, 226981, 238328, 250047, 262144, 274625, 287496, 300763, 314432, 328509, 343000, 357911, 373248, 389017, 405224, 421875, 438976, 456533, 474552, 493039, 512000, 531441, 551368, 571787, 592704, 614125, 636056, 658503, 681472, 704969, 729000, 753571, 778688, 804357, 830584, 857375, 884736, 912673, 941192, 970299, 1000000]\n"}︡{"done":true}
︠3268cee3-37b2-4abe-87eb-c30720333873︠


L = [x^3 for x in [1..100] if x % 3 == 0]
print(L)

︡72bd36a2-e372-49a5-a87b-2aaa517b57fb︡{"stdout":"[27, 216, 729, 1728, 3375, 5832, 9261, 13824, 19683, 27000, 35937, 46656, 59319, 74088, 91125, 110592, 132651, 157464, 185193, 216000, 250047, 287496, 328509, 373248, 421875, 474552, 531441, 592704, 658503, 729000, 804357, 884736, 970299]\n"}︡{"done":true}
︠c3d5e5b9-a498-4520-9cb2-3bae71d44d38︠

# 3. fel

string = "world"
for ch in string:
    print(ch)

︡c954868c-a52b-4f5f-858a-cf95bbf83f3b︡{"stdout":"w\no\nr\nl\nd\n"}︡{"done":true}
︠98869de1-2a69-4204-b2f1-f295b025a24a︠


def foo(p):
    return p + 1

foo(2)

︡192fe92f-8e55-47a1-bffa-dd8eac7d1e3c︡{"stdout":"3\n"}︡{"done":true}
︠9bb32eab-8439-4bd1-8ce0-7b1e785b82c2︠

# 3. fel
# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring egy olyan másolatával, ahol a páros indexű karakterek duplán szerepelnek. Például az alma sztringre a helyes eredmény aalmma.

def foo(string):
    result = ""
    for idx in [0..(len(string)-1)]:
        if idx % 2 == 0:
            result += string[idx] + string[idx]
        else:
            result += string[idx]
    return result

foo("alma")

︡b3ad63a9-2fdb-4c95-bf53-d1b394bd66dd︡{"stdout":"'aalmma'\n"}︡{"done":true}
︠2e83ca3e-4873-4ded-98f0-e6fd0e75ad39︠

def foo(string):
    result = ""
    for idx in [0..(len(string)-1)]:
        result += string[idx]
        if idx % 2 == 0:
            result += string[idx]
    return result

foo("alma")

︡57e56a19-0de3-46af-8da4-e96174fb99d3︡{"stdout":"'aalmma'\n"}︡{"done":true}
︠085b502c-f0f8-4e2c-bff3-c1fb6f3d5541︠

def foo(string):
    result = ""
    tmp = 0
    for ch in string:
        result += ch
        if tmp % 2 == 0:
            result += ch
        tmp += 1
    return result

foo("alma")

︡10896393-685c-4610-97bf-db56b2f3fa23︡{"stdout":"'aalmma'\n"}︡{"done":true}
︠ebb951ff-5d8c-4327-b221-330b273e2c87︠

s = "a"
s += "b"

︡086ca8ce-d4e6-4a09-844b-afcb370c7910︡{"done":true}
︠3f2de134-5aeb-4ec2-9f1e-260bb80751c9︠

def foo(string):
    result = []
    tmp = 0
    for ch in string:
        result.append(ch)
        if tmp % 2 == 0:
            result.append(ch)
        tmp += 1
    return "".join(result)

foo("alma")

︡17e61824-acb8-4664-b453-32f6b0840748︡{"stdout":"'aalmma'\n"}︡{"done":true}
︠8c029145-c654-4b12-adf3-d31b8ce71214︠

# 4. fel
# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring Mocking Spongebob Squarepants egy véletlenszerű példányával. Írja meg a függvény olyan változatát is, amely garantálja, hogy a mondatkezdő betű mindig nagybetű.

def MockingSpongebob(string):
    result = []
    for ch in string:
        if randint(0, 1) == 0:
            result.append(ch.upper())
        else:
            result.append(ch.lower())
    return "".join(result)

MockingSpongebob("Python is an easy to learn, powerful programming language.")

︡25342ac3-e01d-4cc9-855f-3c73809432fc︡{"stdout":"'pYThON IS AN eAsY TO learN, PoWERful pRoGramMing LAnguagE.'\n"}︡{"done":true}
︠fd2b369c-d2f7-4d3c-bc6a-b7f4540b2443︠


randint(0, 10)

︡72397f18-924d-460a-998b-6b3c88c27521︡{"stdout":"1\n"}︡{"done":true}
︠dffd9724-2c8b-4072-878a-f8ad28c7fbc4︠

ch = "a"
print(ch.upper()) # lower

︡6eea91b5-d46c-4262-bf05-ff5e9a4ff5b5︡{"stdout":"A\n"}︡{"done":true}
︠dcd807aa-129b-49b1-9ed7-8fd002c28142s︠

def MockingSpongebobB(string):
    result = []
    for (idx, ch) in enumerate(string):
        if idx == 0 or randint(0, 1) == 0:
            result.append(ch.upper())
        else:
            result.append(ch.lower())
    return "".join(result)

MockingSpongebobB("Python is an easy to learn, powerful programming language.")

︡82f65f3d-007f-4408-9ad9-6ed0390c0d7e︡{"stdout":"'PYTHoN iS aN EaSY to LEarn, POwErful progRAMMing lAnGuaGE.'\n"}︡{"done":true}
︠866091b5-9c2d-43ca-8393-b9db7bdcfc51︠

'A'.upper()

︡03693f9e-8e36-4e63-b9fe-ced90381c972︡{"stdout":"'A'\n"}︡{"done":true}
︠6f5386f8-ee9c-476e-bc43-d65154e01c4fs︠

def MockingSpongebobB(string):
    result = []
    for ch in string:
        if len(result) == 0 or randint(0, 1):
            result.append(ch.upper())
        else:
            result.append(ch.lower())
    return "".join(result)

MockingSpongebobB("Python is an easy to learn, powerful programming language.")

︡46c062c6-1eaa-412d-afaa-34851dbd6fdb︡{"stdout":"'PYtHoN iS An EASY To learN, poweRFUl PrograMmING lAnguaGe.'\n"}︡{"done":true}
︠8f0c3484-7473-4504-a461-f2408d2e99bfs︠




# 5. fel

# reláció
# A = {1, 2}
# rendezett pár : (1, 2)
# A kereszt A , A x A = {(1, 1), (1, 2), (2, 1), (2, 2)}
# R részhalmaza A x A : A-n értelmezett reláció, R részhalmaaza A x A -nak
# R = {(1, 2), (2, 1), (2, 2)}
# (2, 1) eleme R -nek -- a 2 R relációban áll 1-gyel -- 2R1  (ez azt jelenti h (2, 1) eleme R-nek)

# R reflexív: minden a eleme A-nak: aRa

# pl. A = {1, 2, 3} R = {(1, 1), (2, 2)}

def Is_Reflexive(A, R):
    for a in A:
        if (a, a) not in R:
            return False
    return True

Is_Reflexive({1, 2, 3, 4}, [(1, 1), (2, 2), (3, 3), (4, 4)])
Is_Reflexive({1, 2, 3, 4}, [(1, 1), (2, 2), (3, 3), (4, 4), (2, 4)])
Is_Reflexive({1, 2, 3}, [(1, 1), (1, 2), (2, 2)])

︡8c406c2d-37ef-4090-abec-5e1f77d8c237︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠6cd0aef7-ca82-4831-882a-7e8ba345cc2as︠


A = {1, 2}
print(A)

︡1b38b2c8-63ae-4aea-9535-82c689f7b9a1︡{"stdout":"{1, 2}\n"}︡{"done":true}
︠cb35a0ab-7063-49a7-88ed-c2d21f71e3a7︠









