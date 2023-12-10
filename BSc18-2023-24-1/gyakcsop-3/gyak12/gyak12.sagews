︠b6d51b45-2984-4851-b747-3cfdd03ed75ds︠
1+1
︡850ac823-01cf-4981-a9f4-ecc7d1e8175c︡{"stdout":"2"}︡{"stdout":"\n"}︡{"done":true}
︠2cf5d601-9ce8-40f0-8104-8b1ec19afed1︠

# röpzh

def SSS_secret_pieces_from_primenum_and_coeffs(num_of_people, secret, primenum, coeff):
    list_of_coeff = coeff
    list_of_coeff.append(secret)
    list_of_coeff.reverse()
    poly = GF(primenum)['x'](list_of_coeff)
    result = []
    i = 1
    while len(result) < num_of_people:
        pi = poly(i)
        print((i, pi))
        if i != secret and pi != secret:
            result.append((i, poly(i)))
        i += 1
        if i > primenum:
            raise ValueError("Cannot generate secret pieces")
    return result

SSS_secret_pieces_from_primenum_and_coeffs(4, 5, 7, [4, 3])

︡27ea5c2d-81cb-4305-9c3e-f884aeaf8780︡{"stdout":"(1, 5)\n(2, 6)\n(3, 1)\n(4, 4)\n(5, 1)\n(6, 6)\n[(2, 6), (3, 1), (4, 4), (6, 6)]\n"}︡{"done":true}
︠abfc46ea-407f-4ac1-97bf-a6874c95eada︠


SSS_secret_pieces_from_primenum_and_coeffs(6, 5, 7, [4, 3, 2])

︡efebc238-c6ea-47ab-a6d0-96f8fa1139c1︡{"stdout":"(1, 0)\n(2, 4)\n(3, 6)\n(4, 2)\n(5, 2)\n(6, 2)\n(7, 5)\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"\", line 15, in SSS_secret_pieces_from_primenum_and_coeffs\nValueError: Cannot generate secret pieces\n"}︡{"done":true}
︠6502e0ad-ab10-4338-960b-bde8cefec33as︠



def SSS_secret_pieces_from_primenum_and_coeffs(num_of_people, secret, primenum, coeff):
    list_of_coeff = coeff
    list_of_coeff.append(secret)
    list_of_coeff.reverse()
    poly = GF(primenum)['x'](list_of_coeff)
    result = []
    for i in [1..num_of_people]:
        result.append((i, poly(i)))
    return result

SSS_secret_pieces_from_primenum_and_coeffs(4, 5, 7, [4, 3])


︡628d468a-1e9a-4127-823c-ab7ade11ca77︡{"stdout":"[(1, 5), (2, 6), (3, 1), (4, 4)]\n"}︡{"done":true}
︠9c21e826-9e37-4b81-bc7b-44c4e9a7bc28︠


# Írjon get_possible_secrets(primenum) szignatúrával függvényt, amely egy Shamir titokmegosztáskor használt prímszámot kap paraméterként, és visszatér a lehetséges titok listájával.

def get_possible_secrets(primenum):
    return [previous_prime(primenum)..primenum]

get_possible_secrets(7)
get_possible_secrets(19)

︡2f9a63fe-6ef8-4f03-85c9-6da12650dd79︡{"stdout":"[5, 6, 7]\n"}︡{"stdout":"[17, 18, 19]\n"}︡{"done":true}
︠6bbb9b2c-f422-4471-967d-fc4761851979︠


def SSS_secret_pieces_fix(required_num_of_people, num_of_people, secret):
    primenum = next_prime(randint(1, 100) * max(num_of_people, secret))
    coeff = [ randint(1, primenum-1) for i in [1..required_num_of_people-1]]
    return primenum, SSS_secret_pieces_from_primenum_and_coeffs(num_of_people, secret, primenum, coeff)

SSS_secret_pieces_fix(3, 4, 5)

︡1ce5295f-21cf-441f-83be-2d39b047ba10︡{"stdout":"(197, [(1, 157), (2, 138), (3, 145), (4, 178)])\n"}︡{"done":true}
︠44f8d421-025f-44bc-87c3-ee9d415b0fb2︠

# kínai maradéktétel (Chinese remainder theorem)

CRT([-2, 1, 3], [4, 3, 7])

︡d25c6213-9560-4312-b5b5-80642d2343cb︡{"stdout":"10\n"}︡{"done":true}
︠7e524f80-c9fd-44c2-86fc-6bd2584cd5a3︠









