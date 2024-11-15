︠06340448-614e-4f78-89ea-8420c5e89887s︠

factor(532461236432562547453654274527843625474582876425742831461347474257452724)
︡f5690ea4-54b3-4895-b2ac-a04e48518694︡{"stdout":"2^2 * 11 * 18127 * 12412507 * 53783601279153496552559260832981784559869334509437537505739"}︡{"stdout":"\n"}︡{"done":true}
︠d2a2c801-970d-46c0-a598-4b3e1b3b66e3s︠

euler_phi(532461236432562547453654274527843625474582876425742831461347474257452724)
︡ae795117-d753-451d-83c9-af433b40652d︡{"stdout":"242014463457895495452880255834103781071255785967196465966577564251838560\n"}︡{"done":true}
︠63a88c44-8c30-4311-b3dc-fe629a84b6cbs︠

next_prime(54376245745272457532463464257457245786342673)
︡41b4d0c9-0350-462f-b037-ac23ce26434e︡{"stdout":"54376245745272457532463464257457245786342711\n"}︡{"done":true}
︠7acbea2e-8112-4517-ac2a-9f2f4e670b10s︠


next_prime(54376245745272457532463464257457245786342711)
︡5f0fae76-a081-4f70-b2dd-ba82b5929172︡{"stdout":"54376245745272457532463464257457245786342717\n"}︡{"done":true}
︠f506ed3e-94db-4ec2-8b0e-5fbfea4ccf4ds︠


54376245745272457532463464257457245786342711 * 54376245745272457532463464257457245786342717
︡39bdf468-f120-459f-a31a-dd97b996fea1︡{"stdout":"2956776101350261040505693528502034371097803189191372926531720183091875162860723860885787\n"}︡{"done":true}
︠e9fbad48-f529-4198-9e20-1efa9f4b6c89s︠



factor(2956776101350261040505693528502034371097803189191372926531720183091875162860723860885787)
︡ceb54bff-9a90-467c-9444-e7d3847d096e︡{"stderr":":1: RuntimeWarning: cypari2 leaked 847936 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠f1ff588d-915c-4a3a-9fff-bab52deeb7e9s︠

euler_phi(2956776101350261040505693528502034371097803189191372926531720183091875162860723860885787)
︡f5906352-a2e2-47f0-8b3c-a95b0b54ef83︡{"stderr":":1: RuntimeWarning: cypari2 leaked 846856 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 3138, in __call__\n    return ZZ(pari(n).eulerphi())\n              ^^^^^^^^^^^^^^^^^^\n  File \"cypari2/auto_gen.pxi\", line 10675, in cypari2.gen.Gen_base.eulerphi\nKeyboardInterrupt\n"}︡{"done":true}
︠34dee911-8761-4bf3-a3af-b20e88279569s︠



phi_n = (54376245745272457532463464257457245786342711 - 1) * ( 54376245745272457532463464257457245786342717 - 1)
print(phi_n)
︡c54a294a-4e5b-4845-bcb2-02f76fbadec7︡{"stdout":"2956776101350261040505693528502034371097803080438881435986805118164946647946232288200360\n"}︡{"done":true}
︠e0bebd7d-fa32-4c32-95d2-7173a345ae6bs︠

xgcd(2004, 56)
︡9b63b365-4d5b-4da1-8bfb-cb7ec7032f10︡{"stdout":"(4, -5, 179)\n"}︡{"done":true}
︠202f8685-2a5d-4480-a20a-f8630112d14bs︠
# lnko=4, U=-5, V=179


2004*(-5) + 56*179
︡4cd575a7-f9e4-4e34-a1b6-ce913fc2c2f1︡{"stdout":"4\n"}︡{"done":true}
︠ef250457-1056-4fe5-9deb-ba4f99870e73s︠


xgcd(2, 5)
︡cb952abf-fbd1-4c40-85a6-7bcd8abdb6c6︡{"stdout":"(1, -2, 1)\n"}︡{"done":true}
︠65d38eb5-5873-499e-b053-ee66c220e600︠

# U=-2, V=1




︡c74f2780-e17b-4d6b-9588-ac732019a136︡
︠e156821f-e41b-42f9-a384-854c39fe3c84s︠


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

︡66c2f27b-8f63-4d92-86ed-39e04a741045︡{"done":true}
︠9e2e1ca6-5287-4da3-a20a-4fcc24f4c15fs︠


Convert_String_to_Num256("Süllyed a harossz")


# fsor06
# fel3
︡41226811-3507-4d14-8a39-0e62df1d6679︡{"stdout":"28578964877554636918903437890140983489402\n"}︡{"done":true}
︠551af2fc-6308-4c35-bbcb-d64b6bfbd9a6s︠

next_prime(65743467341631474761347147143747)
︡31f1566b-671e-46f5-81b4-5cce11ae8540︡{"stdout":"65743467341631474761347147143829\n"}︡{"done":true}
︠b19b82a8-9332-4bf0-a26b-25a425083a83s︠

next_prime(65743467341631474761347147143829)
︡9afe9ed7-65d3-4ac8-bfac-dae0e003b11e︡{"stdout":"65743467341631474761347147143847\n"}︡{"done":true}
︠633867d0-fb40-4d13-ad99-c1828e04f074s︠


p1 = 65743467341631474761347147143829
p2 = 65743467341631474761347147143847
n = p1 * p2
print(n)
︡419865ac-0b15-4a9d-b789-75840b9bff84︡{"stdout":"4322203498100164290979982635203088401230010378484910881061370163\n"}︡{"done":true}
︠8bc47f78-fb79-4579-89f9-267becf84093s︠

factor(4322203498100164290979982635203088401230010378484910881061370163)
︡f85e2420-3780-4ce7-b35d-228811b012c6︡{"stderr":":1: RuntimeWarning: cypari2 leaked 4231208 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠cfd0e28f-0734-4ec9-baad-e4a1b0b9a008s︠


phi_n = (p1-1)*(p2-1)
print(phi_n)
︡f72f9589-a848-49d1-bccf-66db42e58f84︡{"stdout":"4322203498100164290979982635202956914295327115535388186767082488\n"}︡{"done":true}
︠fe4f4ec2-980c-4246-8724-913b35aded92s︠


gcd(3, phi_n)
︡85ba8818-8334-4c6b-9ca8-a0819377a4f4︡{"stdout":"3\n"}︡{"done":true}
︠4e5754e2-807a-44d8-893a-9069173cb41bs︠

gcd(5, phi_n)
︡495908b3-e4ce-4cee-85e4-0d20befe2c08︡{"stdout":"1\n"}︡{"done":true}
︠2a99c3bc-8c71-4c6d-8801-978d53566434s︠


e = 5
print(e)
︡e3e9817c-db24-4679-8e69-2a2509028a09︡{"stdout":"5\n"}︡{"done":true}
︠8aae0462-78ff-4767-b311-7a8065528f7a︠

# d = (k * phi_n + 1) / e
# d = (k * 4322203498100164290979982635202956914295327115535388186767082488 + 1) / 5
# 5*d = k * 4322203498100164290979982635202956914295327115535388186767082488 + 1
# 5*d - 4322203498100164290979982635202956914295327115535388186767082488*k = 1

# a = 5
# b = -4322203498100164290979982635202956914295327115535388186767082488

︡0cb73538-f266-4643-8d32-c21a2c95e500︡
︠92ae8f73-8949-47e1-b626-dde50301d8ecs︠
︡0b0d1ee9-25cc-4d3f-8780-a3e74bdaaaf3︡{"done":true}
︠882bdf30-bec5-4d96-871f-be76f9e53bc1s︠

xgcd(5, -4322203498100164290979982635202956914295327115535388186767082488)
︡29fcfac0-69ef-4aa4-9c22-4165ceb5e0d8︡{"stdout":"(1, -1728881399240065716391993054081182765718130846214155274706832995, -2)\n"}︡{"done":true}
︠18ddade3-4938-464a-9505-d8721e3c2528s︠

# U = -1728881399240065716391993054081182765718130846214155274706832995
# V = -2

# d = -(-4322203498100164290979982635202956914295327115535388186767082488) * t + (-1728881399240065716391993054081182765718130846214155274706832995)
# d = 4322203498100164290979982635202956914295327115535388186767082488 * t - 1728881399240065716391993054081182765718130846214155274706832995

# pl.
t = 1
︡4360ae27-3338-413f-aa4f-a739470c6b16︡{"done":true}
︠6def535d-14ca-4259-91fb-7b23d554e872s︠

d = 4322203498100164290979982635202956914295327115535388186767082488 * t - 1728881399240065716391993054081182765718130846214155274706832995
print(d)
︡bd8e77c2-f686-45b2-93b8-e902529d5cb5︡{"stdout":"2593322098860098574587989581121774148577196269321232912060249493\n"}︡{"done":true}
︠cb3189ff-913e-4b3a-bc17-6d2438604f52︠

pub_key = (n, e) = (4322203498100164290979982635203088401230010378484910881061370163, 5)
priv_key = d = 2593322098860098574587989581121774148577196269321232912060249493

︡712753b3-a05a-4340-b206-af1b389f8bb2︡
︠1a59147e-fd2a-4cbe-983e-58b5625d0233s︠
︡b54474f6-4b2c-4732-92b4-6a432d21fa88︡{"done":true}
︠30358ce3-a76e-4f5d-9997-cda048ab9a88s︠


def RSA_encrypt(plaintext, pub_key):
    m = Convert_String_to_Num256(plaintext)
    n = pub_key[0]
    e = pub_key[1]
    # a^b mod n
    # power_mod(a, b, n)
    return power_mod(m, e, n)

def RSA_decrypt(cipher, priv_key, modulus):
    c = cipher
    d = priv_key
    n = modulus
    plain = power_mod(c, d, n)
    plaintext = Convert_Num256_to_String(plain)
    return plaintext
︡6255b4b0-a70e-49d7-ab53-24dbb15b4792︡{"done":true}
︠82f74507-6972-4a20-8199-053f10903ae4s︠


RSA_encrypt("Süllyed a harossz", (4322203498100164290979982635203088401230010378484910881061370163, 5))
︡96719730-3ead-43a9-acb7-572c3202d6a9︡{"stdout":"970960519047213389802866550455205753220278595322188487707673493\n"}︡{"done":true}
︠b57b8c4d-ac8f-4b0d-8a71-0a6e3b8e1748s︠


RSA_decrypt(970960519047213389802866550455205753220278595322188487707673493, 2593322098860098574587989581121774148577196269321232912060249493, 4322203498100164290979982635203088401230010378484910881061370163)
︡57f3589e-1688-49ec-93bc-bc83ce1a0cc8︡{"stdout":"'Süllyed a harossz'\n"}︡{"done":true}
︠4c407607-2c85-4778-8ddf-ddba50d782f7︠



# mintazh/5

c = ...
(n, e)
p1

n = p1 * p2










