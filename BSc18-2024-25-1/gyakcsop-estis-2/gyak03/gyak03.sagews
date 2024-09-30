︠cde6a380-24d8-4f49-9683-236ce12c61c0︠
# gyak03

# röpzh
# Írjon függvényt, amely paraméterként egy sztringet fogad, és hozzáfűzi a sztringhez a nagybetűs másolatát; az eredmény sztringet visszatérési értékként juttassa vissza a hívóhoz. Például `foo("heElLo WorLd")` eredménye `heElLo WorLdHEELLO WORLD`.

def foo(s):
    return s + s.upper()

foo("heElLo WorLd")

︡1878ccf2-e202-45af-8b3b-715014e18644︡{"stdout":"'heElLo WorLdHEELLO WORLD'\n"}︡{"done":true}
︠f53c7274-0e9b-4fbd-a8a2-8406bd6294e5︠


relációk

X = {1, 2, 3}
rendezett pár:
(1, 2)

R = {(1, 1), (1, 2), (2, 1), (2, 3)} az X halmazon
az 1 R relációban áll a 2-vel
az 1-hez 2-őt rendel
R nem reflexiv
R nem tranz

R2 = {(1, 1), (1, 2), (2, 1), (2, 2), (2, 3), (3, 3)} az X halmazon
R2 reflexiv: mert minden X-beli a elemre igaz: aRa


egy rel tranz: ha minden a, b, c eleme X: aRb és bRc akkor aRc



︡1fc78868-a270-4789-8b89-1cc2a3a8a1bd︡
︠0d289cb0-803d-4d0e-9cbc-064c5c5d95bc︠

X = {1, 2, 3}
print(X)
2 in X
4 in X


︡15c92ab7-b1bf-4e99-aad4-3e814b9d3c42︡{"stdout":"{1, 2, 3}\n"}︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠87b427bb-abd9-4c72-a96e-d0f3be8d19b6︠

# fsor02/fel5

def Is_Reflexive(X, R):
    res = True
    for a in X:
        res = res and ((a, a) in R)
    return res

Is_Reflexive({1, 2, 3, 4}, [(1, 1), (2, 2), (3, 3), (4, 4)])
Is_Reflexive({1, 2, 3}, [(1, 1), (1, 2), (2, 2)])
︡f2b5ae3d-9f05-4ef8-9369-6c577bcf9e73︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠382c3a88-1010-42b9-a906-775111787198s︠


def Is_Reflexive(X, R):
    for a in X:
        if (a, a) not in R:
            return False
    return True

Is_Reflexive({1, 2, 3, 4}, [(1, 1), (2, 2), (3, 3), (4, 4)])
Is_Reflexive({1, 2, 3}, [(1, 1), (1, 2), (2, 2)])
︡aa04f8d7-c007-4ff8-ab0c-b0ccc9c01995︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠e203dd7a-0fea-47e0-84e7-a5e8b42bc165s︠


def Is_Transitive(X, R):
    for a in X:
        for b in X:
            for c in X:
                if (a, b) in R and (b, c) in R and (a, c) not in R:
                    return False
    return True

Is_Transitive({1, 2, 3}, [(1,1), (1,2), (1,3), (2,1), (2,2), (2,3), (3,1), (3,2), (3,3)])
Is_Transitive({1, 2, 3, 4}, [(1, 2), (2, 3), (1, 4), (2, 2)])
︡ffad8f1c-404d-408b-8692-ad07f705d5fb︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠f8751825-8bcf-4ae3-bb7c-a97e5645da27︠



# 3. fsor

# fel1

N = 2
[8, 9]
idx = 6
[4, ]


N = 3
[8, 9, 10]






︡6f1385f8-718c-4693-a2b8-761bedba3856︡
︠22260c84-734c-4dd7-a368-02e7a916d4a2s︠


def Compound_List(N):
    comp = []
    idx = N
    while len(comp) < N:
        if is_prime(idx):
            comp = []
        else:
            comp.append(idx)
        idx += 1
    return comp

Compound_List(2)
Compound_List(3)
Compound_List(4)
Compound_List(5)
Compound_List(8)
Compound_List(10)
Compound_List(40)
Compound_List(100)
Compound_List(200)

︡ca3676b3-5803-462b-8a8c-2a6cd7606f96︡{"stdout":"[8, 9]\n"}︡{"stdout":"[8, 9, 10]\n"}︡{"stdout":"[24, 25, 26, 27]\n"}︡{"stdout":"[24, 25, 26, 27, 28]\n"}︡{"stdout":"[114, 115, 116, 117, 118, 119, 120, 121]\n"}︡{"stdout":"[114, 115, 116, 117, 118, 119, 120, 121, 122, 123]\n"}︡{"stdout":"[15684, 15685, 15686, 15687, 15688, 15689, 15690, 15691, 15692, 15693, 15694, 15695, 15696, 15697, 15698, 15699, 15700, 15701, 15702, 15703, 15704, 15705, 15706, 15707, 15708, 15709, 15710, 15711, 15712, 15713, 15714, 15715, 15716, 15717, 15718, 15719, 15720, 15721, 15722, 15723]\n"}︡{"stdout":"[370262, 370263, 370264, 370265, 370266, 370267, 370268, 370269, 370270, 370271, 370272, 370273, 370274, 370275, 370276, 370277, 370278, 370279, 370280, 370281, 370282, 370283, 370284, 370285, 370286, 370287, 370288, 370289, 370290, 370291, 370292, 370293, 370294, 370295, 370296, 370297, 370298, 370299, 370300, 370301, 370302, 370303, 370304, 370305, 370306, 370307, 370308, 370309, 370310, 370311, 370312, 370313, 370314, 370315, 370316, 370317, 370318, 370319, 370320, 370321, 370322, 370323, 370324, 370325, 370326, 370327, 370328, 370329, 370330, 370331, 370332, 370333, 370334, 370335, 370336, 370337, 370338, 370339, 370340, 370341, 370342, 370343, 370344, 370345, 370346, 370347, 370348, 370349, 370350, 370351, 370352, 370353, 370354, 370355, 370356, 370357, 370358, 370359, 370360, 370361]"}︡{"stdout":"\n"}︡{"stderr":"Error in lines 19-19\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"\", line 5, in Compound_List\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 560, in is_prime\n    if R.is_field():\n       ^^^^^^^^^^^^\n  File \"src/cysignals/signals.pyx\", line 341, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}
︠990b8512-97c6-4d28-98e8-166e2a4ef670s︠

is_prime(10)
is_prime(11)
︡0a2147b9-7ffd-4d66-a488-dd34a774d8a9︡{"stdout":"False\n"}︡{"stdout":"True\n"}︡{"done":true}
︠a17b3fdc-aaa4-446b-94d7-4fe06c921c0cs︠


# N = 3
# pl. 4! = 1*2*3*4
#          4
#          3
#          2

# [4! + 2, 4! + 3, 4! + 4]

def Compound_List(N):
    return [ factorial(N + 1) + 2 .. factorial(N+1) + N + 1 ]


Compound_List(2)
Compound_List(3)
Compound_List(4)
Compound_List(5)
Compound_List(8)
Compound_List(10)
Compound_List(40)

︡a19e989c-60df-4bd1-b881-9e749f928820︡{"stdout":"[8, 9]\n"}︡{"stdout":"[26, 27, 28]\n"}︡{"stdout":"[122, 123, 124, 125]\n"}︡{"stdout":"[722, 723, 724, 725, 726]\n"}︡{"stdout":"[362882, 362883, 362884, 362885, 362886, 362887, 362888, 362889]\n"}︡{"stdout":"[39916802, 39916803, 39916804, 39916805, 39916806, 39916807, 39916808, 39916809, 39916810, 39916811]\n"}︡{"stdout":"[33452526613163807108170062053440751665152000000002, 33452526613163807108170062053440751665152000000003, 33452526613163807108170062053440751665152000000004, 33452526613163807108170062053440751665152000000005, 33452526613163807108170062053440751665152000000006, 33452526613163807108170062053440751665152000000007, 33452526613163807108170062053440751665152000000008, 33452526613163807108170062053440751665152000000009, 33452526613163807108170062053440751665152000000010, 33452526613163807108170062053440751665152000000011, 33452526613163807108170062053440751665152000000012, 33452526613163807108170062053440751665152000000013, 33452526613163807108170062053440751665152000000014, 33452526613163807108170062053440751665152000000015, 33452526613163807108170062053440751665152000000016, 33452526613163807108170062053440751665152000000017, 33452526613163807108170062053440751665152000000018, 33452526613163807108170062053440751665152000000019, 33452526613163807108170062053440751665152000000020, 33452526613163807108170062053440751665152000000021, 33452526613163807108170062053440751665152000000022, 33452526613163807108170062053440751665152000000023, 33452526613163807108170062053440751665152000000024, 33452526613163807108170062053440751665152000000025, 33452526613163807108170062053440751665152000000026, 33452526613163807108170062053440751665152000000027, 33452526613163807108170062053440751665152000000028, 33452526613163807108170062053440751665152000000029, 33452526613163807108170062053440751665152000000030, 33452526613163807108170062053440751665152000000031, 33452526613163807108170062053440751665152000000032, 33452526613163807108170062053440751665152000000033, 33452526613163807108170062053440751665152000000034, 33452526613163807108170062053440751665152000000035, 33452526613163807108170062053440751665152000000036, 33452526613163807108170062053440751665152000000037, 33452526613163807108170062053440751665152000000038, 33452526613163807108170062053440751665152000000039, 33452526613163807108170062053440751665152000000040, 33452526613163807108170062053440751665152000000041]\n"}︡{"done":true}
︠163377d2-618e-43e8-b03f-e81b33dd95af︠

Compound_List(100)
Compound_List(200)
Compound_List(1000)

︡bea981d3-5d21-4a8b-b578-4d26a8aaa72b︡
︠cba1ae3e-02b4-4afa-9d20-830d6459e79ds︠


# fel2

# x = 8, (3, 5)

def Even_Goldbach(x):
    if x % 2 == 1 or x <= 2:
        raise ValueError("invalid x")

    for idx in [2..x]:
        if is_prime(idx):
            #(idx, other)
            other = x - idx
            if is_prime(other):
                return (idx, other)
    return None


Even_Goldbach(8)
Even_Goldbach(10)
Even_Goldbach(122)
︡5d5bc473-7b92-4023-b871-6d93c51d9119︡{"stdout":"(3, 5)\n"}︡{"stdout":"(3, 7)\n"}︡{"stdout":"(13, 109)\n"}︡{"done":true}
︠2320a028-26a0-4939-b530-d1dd27c99323s︠

Even_Goldbach(121)
︡ff9b3f0d-65d2-4299-bbe0-9c83a76383eb︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"\", line 3, in Even_Goldbach\nValueError: invalid x\n"}︡{"done":true}
︠89d40e6b-5811-432f-aa93-225e785046ce︠









