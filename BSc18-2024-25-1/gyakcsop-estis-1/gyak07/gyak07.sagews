︠9d0f0d52-fae2-455c-81b0-37a743b811e5s︠
1+1
︡14c0d93c-34dc-44b8-a2fd-d90b7e7189a6︡{"stdout":"2\n"}︡{"done":true}
︠451a987c-1f50-489c-a4c1-8edc20673736︠


"hello" -> 5432634634 ??
5432634634 -> "hello"

A 65
AAAAAAAAAAAA
65065656565656565656565128



0x67fa2

16:
    0123456789 abcdef



  210
0x1f2 = 1 * 16^2 + 15 * 16^1 + 2 * 16^0

256:
43210
hello = ord(h) * 256^4 + ... + ord(o) * 256^0

︡5d624d46-f031-4579-b561-ed7208c080cd︡
︠d0f7c073-ef3f-49a2-a791-932c41d99e3fs︠


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

Convert_String_to_Num256("hello")
Convert_String_to_Num256("my favourite string")
︡5bfc5874-d03e-422f-bfeb-a7a06475ef74︡{"stdout":"448378203247\n"}︡{"stdout":"2441332838360632902649094596276598395242114663\n"}︡{"done":true}
︠f28e8bfc-5b51-487b-ad06-80193f8b0ae0︠

kettes
17 : 2 = 8
1

8 : 2 = 4
0

4 : 2 = 2
0

2 : 2 = 1
0

1 : 2 = 0
1

43210
10001 = 2^4 + 2^0 = 16 + 1 = 17

︡0b816554-47b5-4a28-bcd5-8f8da8ac5a21︡
︠836ade78-fdf6-43f6-a604-9e910a43fd89︠

def Convert_Num256_to_String(num):
    res = list()

    while num > 0:
        res.append(chr(num % 256)) # Integer(num % 256))
        num = num // 256

    res.reverse()
    return "".join(res)


Convert_Num256_to_String(448378203247)
Convert_Num256_to_String(2441332838360632902649094596276598395242114663)
︡80a464db-4fe5-4b99-bde5-59b458ec39a5︡{"stdout":"'hello'\n"}︡{"stdout":"'my favourite string'\n"}︡{"done":true}
︠addd737b-ce7b-4c21-b079-7411a8b9f0e5s︠




def Asym_encrypt(plaintext, pub_key):
    plain = Convert_String_to_Num256(plaintext)
    return plain * pub_key

def Asym_decrypt(cipher, priv_key):
    plain = int(cipher * priv_key)
    plaintext = Convert_Num256_to_String(plain)
    return plaintext
︡b8a1dedd-6e4b-40a2-924b-96c9faf293c3︡{"done":true}
︠8b16a0f7-cd98-4d1a-9745-5114cb177c87s︠


Asym_encrypt("my favourite string", 4)
︡689d2043-f888-4918-8673-0610878c9f70︡{"stdout":"9765331353442531610596378385106393580968458652\n"}︡{"done":true}
︠099cd1ff-31f2-4f17-baa8-4219104e9669s︠

Asym_decrypt(9765331353442531610596378385106393580968458652, (1/4))
#Asym_decrypt(9765331353442531610596378385106393580968458652, 0.25)
︡ff4a57cb-3929-4529-8e48-f41dc34a1cae︡{"stdout":"'my favourite string'\n"}︡{"done":true}︡{"done":true}︡
︠bb310ba4-a916-4d6b-bf7d-ba008f57d113s︠




def RSA_encrypt(plaintext, pub_key):
    m = Convert_String_to_Num256(plaintext)
    n = pub_key[0]
    e = pub_key[1]
    return m^e % n

def RSA_decrypt(cipher, priv_key, modulus):
    c = cipher
    d = priv_key
    n = modulus
    plain = c^d % n
    plaintext = Convert_Num256_to_String(plain)
    return plaintext
︡4231bd4a-e70c-4e20-8792-3e1c55297644︡{"done":true}
︠6f18a029-f480-4f5a-b2a3-96d84e161ddds︠



RSA_encrypt("A", (3233, 17))
︡a1d3b525-36e1-4a54-a7c1-cbe8d9a82a6f︡{"stdout":"2790\n"}︡{"done":true}
︠55285319-7ce3-469b-8b61-4e2cd896d1bfs︠

RSA_decrypt(2790, 2753, 3233)
︡84e28126-f12e-473a-9c61-7ff4a83ee65b︡{"stdout":"'A'\n"}︡{"done":true}
︠5dc3e8cf-5889-42e7-ac95-34af573b64f9s︠

# a^b mod c
# power_mod(a, b, c)

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

︡81ae5dc4-a0e5-488d-91cf-0c23351f5ef7︡{"done":true}
︠ae9b820e-66c7-4898-bf77-078013b7cbd5s︠

RSA_encrypt("This is a plaintext", (2737761589089748594790007149346373275182007419519011, 5))
︡6971a811-7da9-445f-9483-93e4a71c939a︡{"stdout":"1818951705505375546861715905342308841543735888770062\n"}︡{"done":true}
︠207595c2-d703-4a19-914f-efde2857ea09s︠

RSA_decrypt(1818951705505375546861715905342308841543735888770062, 3832866224725648032706009862578776439560195767108789, 2737761589089748594790007149346373275182007419519011)
︡3552af2a-c848-4a9d-af4b-d5e9c01e40ff︡{"stdout":"'This is a plaintext'\n"}︡{"done":true}
︠37fde634-43f6-4687-bbff-368a46aac65fs︠







factor(532461236432562547453654274527843625474582876425742831461347474257452724)
︡f865e8de-4d20-4fee-bc8d-a5a79b1472e9︡{"stdout":"2^2 * 11 * 18127 * 12412507 * 53783601279153496552559260832981784559869334509437537505739"}︡{"stdout":"\n"}︡{"done":true}
︠71e58b3f-ca8a-4cfb-9795-cc94d45ae557s︠


euler_phi(532461236432562547453654274527843625474582876425742831461347474257452724)
︡0a820b98-2ae4-408e-b2ec-2967226a217b︡{"stdout":"242014463457895495452880255834103781071255785967196465966577564251838560\n"}︡{"done":true}
︠19f82cab-9427-40f9-b082-d1bb849cf301s︠


next_prime(54376245745272457532463464257457245786342673)
︡be9f7d59-190a-4050-a5fd-022febae6e57︡{"stdout":"54376245745272457532463464257457245786342711\n"}︡{"done":true}
︠b9ebc365-7725-459e-9bd8-3885343ca828s︠


next_prime(54376245745272457532463464257457245786342711)
︡173b1721-b4a5-4504-b60d-6c22f507140d︡{"stdout":"54376245745272457532463464257457245786342717\n"}︡{"done":true}
︠4d962e7d-0f24-4adc-ba88-d15112dc19d6s︠

54376245745272457532463464257457245786342711 * 54376245745272457532463464257457245786342717
︡cd73691b-158b-4e2f-92e8-e0fc5d89b827︡{"stdout":"2956776101350261040505693528502034371097803189191372926531720183091875162860723860885787\n"}︡{"done":true}
︠d668fb7d-bbe2-45c7-80c2-b168a06f5021s︠


factor(2956776101350261040505693528502034371097803189191372926531720183091875162860723860885787)
︡7a699504-cb5e-4214-99ec-f69e2b66f83b︡{"stderr":":1: RuntimeWarning: cypari2 leaked 828760 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠a821eab9-3b72-4a45-af54-436c6b26fbdfs︠


euler_phi(2956776101350261040505693528502034371097803189191372926531720183091875162860723860885787)
︡d3bc17cd-9a9f-448a-b9f9-f384074bc721︡{"stderr":":1: RuntimeWarning: cypari2 leaked 848752 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 3138, in __call__\n    return ZZ(pari(n).eulerphi())\n              ^^^^^^^^^^^^^^^^^^\n  File \"cypari2/auto_gen.pxi\", line 10675, in cypari2.gen.Gen_base.eulerphi\nKeyboardInterrupt\n"}︡{"done":true}
︠0d5989b1-0196-4581-bbcd-3171c0d9a0b6s︠





factor(34643643745854853853835735735734643625343242352362462464262462362624624662)
︡fe3dc3dc-b0e0-46ff-8fcf-399878c835c6︡{"stdout":"2 * 557 * 2467 * 11242237 * 8082039001 * 4373142401843 * 31725021552632605824622267154977386739"}︡{"stdout":"\n"}︡{"done":true}
︠f6d05bcd-d00d-4eaf-b12e-ca7c3287796as︠


factor(10577795823851879016615591732095183350836585707548354280149683226062077461)
︡688804ab-4701-42c4-84d6-f6810ee27dfe︡{"stderr":":1: RuntimeWarning: cypari2 leaked 8726696 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠de1c3ad8-1fe1-4b61-8864-9ff89c894669︠









