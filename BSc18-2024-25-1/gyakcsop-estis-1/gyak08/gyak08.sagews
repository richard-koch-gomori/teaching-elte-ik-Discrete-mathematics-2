︠3692c8f5-9d77-4cc6-ab50-69bb75de4a37s︠


xgcd(2004, 56)
︡e87c2c78-33d7-48b9-a15f-c6cea057b7c2︡{"stdout":"(4, -5, 179)\n"}︡{"done":true}
︠b2216dd5-8be7-4c8a-9833-f0446212b100s︠

# lnko=4
# U=-5
# V=179

2004 * (-5) + 56 * 179
︡38edf53e-bcf6-440c-80fb-340c4f7fd8a7︡{"stdout":"4\n"}︡{"done":true}
︠96b2d464-f3d1-44e9-b76e-1065440e136bs︠


# fsor 06, fel 4

def Convert_String_to_Num256(string):
    idx = 0
    res = 0
    rev_string = list(string)
    rev_string.reverse()
    for ch in rev_string:
        #print(ch)
        res += ord(ch) * 256^idx
        idx += 1

    return res

def Convert_Num256_to_String(num):
    res = list()

    while num > 0:
        res.append(chr(num % 256)) # Integer(num % 256))
        num = num // 256

    res.reverse()
    return "".join(res)

︡5e41d2ed-f987-4d1d-b822-18148dfac047︡{"done":true}
︠dcb978ba-09d6-4aeb-8c7d-42ca34cd2cb3s︠


Convert_String_to_Num256("Süllyed a harossz")
︡016962a0-4b2f-4ac3-b00c-88f5c519d46e︡{"stdout":"28578964877554636918903437890140983489402\n"}︡{"done":true}
︠23afd3e2-4ba3-4c42-9cb2-60cae651f14f︠

m = 28578964877554636918903437890140983489402

︡c33556b9-dc7c-4b40-ac21-e2086da13bdc︡
︠6f779c1d-2da9-4649-8103-47e15285cfb1s︠
︡839473ed-66be-4346-adec-85525ae1b3e0︡{"done":true}
︠a1a2ede1-f1a4-483f-9870-3ef044bd5c9cs︠


next_prime(5465475272525762856824751632565765884567456)
︡f3f0b2fb-d0ff-4c14-9f67-24fa94c567fe︡{"stdout":"5465475272525762856824751632565765884567503\n"}︡{"done":true}
︠15382288-788e-481e-b60d-a9befd8c279cs︠

next_prime(5465475272525762856824751632565765884567503)
︡008b912d-d268-499f-b7a3-803c481e82f6︡{"stdout":"5465475272525762856824751632565765884567599\n"}︡{"done":true}
︠1c517b12-1f4f-477b-b931-93fa4f4eccf5s︠

5465475272525762856824751632565765884567503 * 5465475272525762856824751632565765884567599
︡6d8d1d15-238b-4dc3-8ee4-525e55ed0598︡{"stdout":"29871419954590561770099939552276170996027407422212843974945425639126967442782282135297\n"}︡{"done":true}
︠d3a17f8a-d3cb-4f66-a96b-26ffc7902c83s︠

factor(29871419954590561770099939552276170996027407422212843974945425639126967442782282135297)
︡c56fe45a-d031-4af0-b16d-7c7b3cea2392︡{"stderr":":1: RuntimeWarning: cypari2 leaked 811072 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠7c26b84c-729d-4ecc-b7af-736cbcaf5b4fs︠


n = 29871419954590561770099939552276170996027407422212843974945425639126967442782282135297
print(n)
︡19006fad-ea4f-44cf-a22b-6ab7950281a7︡{"stdout":"29871419954590561770099939552276170996027407422212843974945425639126967442782282135297\n"}︡{"done":true}
︠ad7c2585-4484-496e-a9e9-9ef05434761bs︠

phi_n = (5465475272525762856824751632565765884567503 - 1) * (5465475272525762856824751632565765884567599 - 1)
print(phi_n)
︡12663bbd-d917-4eea-85ea-5db400754711︡{"stdout":"29871419954590561770099939552276170996027396491262298923419711989623702311250513000196\n"}︡{"done":true}
︠18ef1aa0-9197-4a71-bb09-93df46d3309es︠

gcd(3, 29871419954590561770099939552276170996027396491262298923419711989623702311250513000196)
︡f135ba5b-1cd1-44a0-9b07-7ec03d940ed1︡{"stdout":"3\n"}︡{"done":true}
︠2c94b5fa-0bbb-4928-9958-7d8843014b5bs︠

gcd(4, 29871419954590561770099939552276170996027396491262298923419711989623702311250513000196)
︡00a33364-e29e-4402-802d-fcb5992d4679︡{"stdout":"4\n"}︡{"done":true}
︠3215d895-dd59-4cf4-be07-9a41595cae91s︠


gcd(5, 29871419954590561770099939552276170996027396491262298923419711989623702311250513000196)
︡da0d7cd6-7659-4008-a693-f9e6ba3f7ab4︡{"stdout":"1\n"}︡{"done":true}
︠6bcf3960-ecdb-4f20-bf68-8a2aab1f3f19s︠


e = 5
print(e)
︡067e6130-e16a-4e57-adb2-8560ed42204f︡{"stdout":"5\n"}︡{"done":true}
︠f7aba3a4-879b-46c4-961a-9683ba5d82af︠


# d = (k * 29871419954590561770099939552276170996027396491262298923419711989623702311250513000196 + 1) / 5
# 5*d = k * 29871419954590561770099939552276170996027396491262298923419711989623702311250513000196 + 1
# 5*d - k * 29871419954590561770099939552276170996027396491262298923419711989623702311250513000196 = 1
# 5*d - 29871419954590561770099939552276170996027396491262298923419711989623702311250513000196*k = 1

# a = 5
# b = -29871419954590561770099939552276170996027396491262298923419711989623702311250513000196

︡43d65e27-d6b0-4a48-abde-d3e51558d159︡
︠e517565a-6aa8-4588-8c3a-401ab3d64c16s︠
︡43343bd4-d431-478e-ad5d-26585cab2f4d︡{"done":true}
︠40d72b25-a349-4a3d-bcf6-8822802e5e6ds︠

xgcd(5, -29871419954590561770099939552276170996027396491262298923419711989623702311250513000196)
︡d11ff910-caa5-4432-9e43-09c4d2ab6885︡{"stdout":"(1, -5974283990918112354019987910455234199205479298252459784683942397924740462250102600039, -1)\n"}︡{"done":true}
︠ff66b1c3-3644-4ba4-8cc3-1f2fd5d06e98s︠

# lnko=1
# U=-5974283990918112354019987910455234199205479298252459784683942397924740462250102600039
# V=-1

# d =  * t - 5974283990918112354019987910455234199205479298252459784683942397924740462250102600039

t = 1
d = -(-29871419954590561770099939552276170996027396491262298923419711989623702311250513000196) * t - 5974283990918112354019987910455234199205479298252459784683942397924740462250102600039
print(d)

︡fed9f3c4-f1c8-4a6a-8b96-fa656facfe0d︡{"stdout":"23897135963672449416079951641820936796821917193009839138735769591698961849000410400157\n"}︡{"done":true}
︠94be92f4-7a13-4d8e-91ad-0fbbbf5d443a︠

pub_key = (29871419954590561770099939552276170996027407422212843974945425639126967442782282135297, 5)
priv_key = 23897135963672449416079951641820936796821917193009839138735769591698961849000410400157

︡cfd1258f-5732-4194-82d2-5dae6615f591︡{"done":true}
︠89fa5d16-a2bb-4248-aa10-30ee3caae16ds︠


def RSA_encrypt(plaintext, pub_key):
    m = Convert_String_to_Num256(plaintext)
    n = pub_key[0]
    e = pub_key[1]
    return power_mod(m, e, n)

def RSA_decrypt(cipher, priv_key, modulus):
    c = cipher
    d = priv_key
    n = modulus
    plain = power_mod(c, d, n)
    plaintext = Convert_Num256_to_String(plain)
    return plaintext
︡0596f16c-884d-460d-8441-4a8298392d00︡{"done":true}
︠19251f09-c9ea-4b8b-aa24-2b060c137937s︠


RSA_encrypt("Süllyed a harossz", (29871419954590561770099939552276170996027407422212843974945425639126967442782282135297, 5))
︡37694d52-fcd1-4d05-8569-2d292c213574︡{"stdout":"1550302551735257917770195144386087338274605937160372641075133295208638188647933754723\n"}︡{"done":true}
︠36c35b58-e60b-40dd-9697-8d9fbde5f173s︠

RSA_decrypt(1550302551735257917770195144386087338274605937160372641075133295208638188647933754723, 23897135963672449416079951641820936796821917193009839138735769591698961849000410400157, 29871419954590561770099939552276170996027407422212843974945425639126967442782282135297)
︡9463a5f4-b65f-48b9-85eb-fd75a45121c6︡{"stdout":"'Süllyed a harossz'\n"}︡{"done":true}
︠c74d8a4c-98ad-4596-9363-dde4517fe170s︠


factor(29871419954590561770099939552276170996027407422212843974945425639126967442782282135297)
︡54cf6c9b-cb3a-46b8-a510-a186f1eb4624︡{"stderr":":1: RuntimeWarning: cypari2 leaked 809560 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠93334ab0-338f-4343-a179-f6601f35e3b4s︠


RSA_decrypt(1550302551735257917770195144386087338274605937160372641075133295208638188647933754723, 23897135963672449416079951641820936796821917193009839138735769591698961849000410400157 + 1, 29871419954590561770099939552276170996027407422212843974945425639126967442782282135297)
︡0699c595-8798-4302-abfc-bead745c30b8︡{"stdout":"'\\táPvò>>\\x84\\x93ÕzÈêC\\x1fî\\x11\\x9c¤\\x133\\x90t\\x0e-Þ·elW\\x99¦ÐõóÇ'\n"}︡{"done":true}
︠4ebb550e-505d-4d92-8cbc-87a83be84892︠

# mintazh/5

p1
p2 = n/p1











