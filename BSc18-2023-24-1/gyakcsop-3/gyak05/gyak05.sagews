︠71ea3542-3875-4e8f-b277-d7ea8dda895c︠
# gyak05, 3. feladatsor


is_prime(6)

︡78c76861-e7e5-46a4-ac14-4f286f876090︡{"stdout":"False\n"}︡{"done":true}
︠110eec7f-e839-4d51-8965-d774acfba6e1︠

# 3. fel

len(prime_range(10))

︡2c7894a9-5750-4d6f-bad2-74a5c59248b1︡{"stdout":"4\n"}︡{"done":true}
︠0c951656-aa80-4ed7-b277-d302f9b79996s︠

# 4. fel

def sum_of_smaller_divs(n):
    return sum([x for x in [1..(n-1)] if n % x == 0])

def sum_of_smaller_divs(n):
    return sum(divisors(n)) - n

sum_of_smaller_divs(10)




︡a1a8715c-d16c-4b49-85e2-8876990725f2︡{"stdout":"8\n"}︡{"done":true}
︠e26fc213-1cd3-47fb-bd11-2b2fc97a8271︠

# 7 mod 4
7 % 4
︡c66574c2-0709-4b9c-844a-0065e0feab8e︡{"stdout":"3\n"}︡{"done":true}
︠9582216d-6edc-46e1-a1ec-574f5a3a1e62︠

# 5. fel

sum_of_smaller_divs(10)

︡2557e5bf-6213-4fdf-b7da-78ad06e42937︡{"stdout":"8\n"}︡{"done":true}
︠13e28abe-55df-45a5-b031-426db13bf24c︠
sum_of_smaller_divs(8)

︡96f9cf01-891c-4f88-a242-85c6cce96741︡{"stdout":"7\n"}︡{"done":true}
︠fdd3943f-b608-4c8a-b6d1-ba88e0fea4db︠
sum_of_smaller_divs(7)

︡bbaefd63-d64e-4711-82d8-4e3fa75a3368︡{"stdout":"1\n"}︡{"done":true}
︠f286bc23-6a62-4e0e-8606-4cfed5a5798c︠
sum_of_smaller_divs(1)

︡36443ca5-6658-4bd5-a79e-a1753dee146a︡{"stdout":"0\n"}︡{"done":true}
︠0509a0ba-f154-4e0b-87ec-19b02abb5bcd︠


sum_of_smaller_divs(32)

︡08c3cf66-01dc-47a2-88bf-6455a2b8f9ea︡{"stdout":"31\n"}︡{"done":true}
︠047730b7-ec09-422c-9eb5-d21e992fb7e3︠
sum_of_smaller_divs(31)

︡91639bdd-8f86-4260-9347-d583ae9a9ed8︡{"stdout":"1\n"}︡{"done":true}
︠ce6cf254-6d2e-405b-89c7-5e52292b9922︠
sum_of_smaller_divs(1)

︡7be3c49f-cca5-401e-af85-078529dc5d02︡{"stdout":"0\n"}︡{"done":true}
︠1fb33a0f-2edf-4a2b-8a1f-f6313a2bf866︠

sum_of_smaller_divs(2)

︡758ed0bc-4b5d-4d33-9adb-551987b2821e︡{"stdout":"1\n"}︡{"done":true}
︠8e9c42fb-fc3f-4ea8-83ea-fcbe10d7e476︠

sum_of_smaller_divs(1)

︡8eb3f61f-5315-4fbe-a7c6-dbbe7fd1af89︡{"stdout":"0\n"}︡{"done":true}
︠9d3052dc-989e-4d9b-aaa3-211cc1bc3861︠



sum_of_smaller_divs(6)

︡fd2c6009-3779-42c4-b2e1-176b1bf9347d︡{"stdout":"6\n"}︡{"done":true}
︠610d0f60-286c-4cae-a547-e7bb2a102f38︠


sum_of_smaller_divs(220)

︡94c24309-429f-4aeb-8e46-633b7897f354︡{"stdout":"284\n"}︡{"done":true}
︠71581ae0-b7fc-44ba-86c2-32f8a5bdee53︠
sum_of_smaller_divs(284)

︡351aa3eb-8847-443c-a29d-16006edc3bab︡{"stdout":"220\n"}︡{"done":true}
︠e46ddb6a-63b3-4af4-8c5f-4c71dbd38c87s︠



# Nem teljes megoldás:
def Aliquout_seq(n):
    result = [n]
    next_item = sum_of_smaller_divs(n)
    while next_item != 0 and next_item not in result:
        result.append(next_item)
        next_item = sum_of_smaller_divs(next_item)
    return [result, (1 in result, len(result))]

# [10, 8, 7, 1], (True, None)
Aliquout_seq(10)

︡89d07cb9-4dd6-4f73-b265-60c0936b73c0︡{"stdout":"[[10, 8, 7, 1], (True, 4)]\n"}︡{"done":true}
︠0613efca-f70a-49b2-924f-b90b8017c45d︠

# [[6],  (False, 1)]

Aliquout_seq(6)

︡87ee8e4b-a419-4abc-ac0b-dafe21d3034d︡{"stdout":"[[6], (False, 1)]\n"}︡{"done":true}
︠37e9a5e5-da39-4c3f-868c-bd877244d2a8︠


# [[220, 284], (False, 2)]
Aliquout_seq(220)

︡893f772e-9755-460d-9608-b106f00ba33c︡{"stdout":"[[220, 284], (False, 2)]\n"}︡{"done":true}
︠00ce6609-46ac-457e-8e06-bfe2a6af128bs︠

a = (2, 3)
a
a[0]
a[1]

︡9ab800e4-30f7-4dad-8b88-b4df17258714︡{"stdout":"(2, 3)\n"}︡{"stdout":"2\n"}︡{"stdout":"3\n"}︡{"done":true}
︠12bc0cd5-f14a-4a70-a101-c3b0f6f0f088s︠

# lehetséges olyan sorozat, hogy csak az utolsó valahány szám ismétlődik, ilyenkor nem
# helyes eredményt ad ha a lista hosszával térünk vissza
# pl.

Aliquout_seq(1336) # nem helyes output: 1336 után a [1184, 1210] ismétlődik periodikusan, NEM [1336, 1184, 1210]
Aliquout_seq(1184)

︡c7a45a7a-ae71-46e7-8c21-5fc6e9565f5e︡{"stdout":"[[1336, 1184, 1210], (False, 3)]\n"}︡{"stdout":"[[1184, 1210], (False, 2)]\n"}︡{"done":true}
︠7b8df54a-d8e2-4656-92f7-1635cda3a32as︠

L = [1336, 1184, 1210]

# L.index(a) visszatér az `a` indexével az L listában:
L.index(1336)

# amikor az 1184 elkezd ismétlődni, az ismétlődő szakasz hossza a lista teljes hossza minusz az első ismétlődő elem indexe:
len(L) - L.index(1184)

︡ecd799c2-8861-4519-bc38-e5a3897cbdc2︡{"stdout":"0\n"}︡{"stdout":"2\n"}︡{"done":true}
︠bd614b91-eabd-4fb4-88eb-81f6b096b4das︠


def Aliquout_seq_2(n):
    result = list([n])
    next_item = sum_of_smaller_divs(n)
    while next_item != 0 and next_item not in result:
        result.append(next_item)
        next_item = sum_of_smaller_divs(next_item)
    if next_item == 0:
        return [result, (True, None)]
    else:
        return [result, (False, len(result) - result.index(next_item))]

Aliquout_seq_2(1336)
Aliquout_seq_2(1184)

︡05f4dabe-2080-4bbe-bc99-3c22ed994fbc︡{"stdout":"[[1336, 1184, 1210], (False, 2)]\n"}︡{"stdout":"[[1184, 1210], (False, 2)]\n"}︡{"done":true}
︠dbf13712-c3ab-47af-a7ca-4b9425deac7bs︠


# 6. fel

idx = 1
while True:
    Aliquot = Aliquout_seq(idx)
    seq =  Aliquot[0]
    if Aliquot[1][0] and 179931895322 in seq:
        print("Num: ", idx)
        print("Len: ", len(seq))
        print("sequence: ", seq)
        break
    idx += 1

︡a7b91455-3628-4134-b840-1e6daa0fcb1b︡{"stdout":"Num:  138\nLen:  178\nsequence:  [138, 150, 222, 234, 312, 528, 960, 2088, 3762, 5598, 6570, 10746, 13254, 13830, 19434, 20886, 21606, 25098, 26742, 26754, 40446, 63234, 77406, 110754, 171486, 253458, 295740, 647748, 1077612, 1467588, 1956812, 2109796, 1889486, 953914, 668966, 353578, 176792, 254128, 308832, 502104, 753216, 1240176, 2422288, 2697920, 3727264, 3655076, 2760844, 2100740, 2310856, 2455544, 3212776, 3751064, 3282196, 2723020, 3035684, 2299240, 2988440, 5297320, 8325080, 11222920, 15359480, 19199440, 28875608, 25266172, 19406148, 26552604, 40541052, 54202884, 72270540, 147793668, 228408732, 348957876, 508132204, 404465636, 303708376, 290504024, 312058216, 294959384, 290622016, 286081174, 151737434, 75868720, 108199856, 101437396, 76247552, 76099654, 42387146, 21679318, 12752594, 7278382, 3660794, 1855066, 927536, 932464, 1013592, 1546008, 2425752, 5084088, 8436192, 13709064, 20563656, 33082104, 57142536, 99483384, 245978376, 487384824, 745600776, 1118401224, 1677601896, 2538372504, 4119772776, 8030724504, 14097017496, 21148436904, 40381357656, 60572036544, 100039354704, 179931895322, 94685963278, 51399021218, 28358080762, 18046051430, 17396081338, 8698040672, 8426226964, 6319670230, 5422685354, 3217383766, 1739126474, 996366646, 636221402, 318217798, 195756362, 101900794, 54202694, 49799866, 24930374, 17971642, 11130830, 8904682, 4913018, 3126502, 1574810, 1473382, 736694, 541162, 312470, 249994, 127286, 69898, 34952, 34708, 26038, 13994, 7000, 11720, 14740, 19532, 16588, 18692, 14026, 7016, 6154, 3674, 2374, 1190, 1402, 704, 820, 944, 916, 694, 350, 394, 200, 265, 59, 1]\n"}︡{"done":true}
︠b1bc0f57-4f41-4057-9072-ba5554ceaf5c︠









