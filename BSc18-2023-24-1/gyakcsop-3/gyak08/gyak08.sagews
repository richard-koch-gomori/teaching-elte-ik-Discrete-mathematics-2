︠bee8e741-311e-4db3-91d7-669e07049b85s︠
# gyak08

# fsor 5 fel 7



def Convert_String_to_Num256(string):
    password = list(string)
    #print(password)
    password.reverse()
    num = 0
    i = 0
    for ch in password:
        #print(ch)
        num += ord(ch) * 256^i
        i += 1
    return num

def Convert_Num256_to_String(num):
    password_list = []
    while num > 0:
        password_list.append(chr(num % 256))
        #num = num // 256
        num //= 256

    password_list.reverse()
    #print(password_list)
    password = "".join(password_list)
    return password

︡f288514c-85c9-4c4f-acfa-bd1c3bf0b490︡{"done":true}
︠9e8aa6af-ab9f-40e4-af2a-738c9898b18d︠

def RSA_encrypt(plaintext, pub_key):
    m = Convert_String_to_Num256(plaintext)
    #print(m)
    #return m^(pub_key[1]) % pub_key[0] # nagy inputra sokáig tart a hatványozást a^b mod c kiszámolni
    return power_mod(m, pub_key[1], pub_key[0])

RSA_encrypt("This is a plaintext", (2737761589089748594790007149346373275182007419519011, 5))

︡7d10cced-0130-423a-aeaf-7e9c2bc1b43b︡{"stdout":"1818951705505375546861715905342308841543735888770062\n"}︡{"done":true}
︠060bfae0-0a83-4069-9391-6c3462e45888︠

def RSA_decrypt(ciphertext, private_key, n):
    c = power_mod(ciphertext, private_key, n)
    return Convert_Num256_to_String(c)

RSA_decrypt(1818951705505375546861715905342308841543735888770062, 3832866224725648032706009862578776439560195767108789, 2737761589089748594790007149346373275182007419519011)

︡9d2ea205-e83c-4e71-81db-5aa5c2d4f22b︡{"stdout":"'This is a plaintext'\n"}︡{"done":true}
︠c5eda0c4-9393-4c40-9a1b-03a29c98a0d4︠



# Euler féle phi függvény


factor(34643643745854853853835735735734643625343242352362462464262462362624624662)

︡3ac8741d-fcf9-41d9-96b2-bc79758ecae1︡{"stdout":"2 * 557 * 2467 * 11242237 * 8082039001 * 4373142401843 * 31725021552632605824622267154977386739"}︡{"stdout":"\n"}︡{"done":true}
︠379bd735-61d1-417a-804f-acfa0a134eb6︠

phi_n = 34643643745854853853835735735734643625343242352362462464262462362624624662 * (1 - 1/2) * (1 - 1/557) * (1 - 1/2467) * (1 - 1/11242237) * (1 - 1/8082039001) * (1 - 1/4373142401843) * (1 - 1/31725021552632605824622267154977386739)
print(phi_n)

︡3b2ed48a-3e95-48da-ada9-bc5397acbbf0︡{"stdout":"17283713104309749324637302460518508016000093805299235033527831583867264000\n"}︡{"done":true}
︠93a5206d-0ddd-4477-a307-e270fb2d6c75︠

euler_phi(34643643745854853853835735735734643625343242352362462464262462362624624662)

︡915bbaaa-0ab6-44a6-8a69-ece341ba5e18︡{"stdout":"17283713104309749324637302460518508016000093805299235033527831583867264000"}︡{"stdout":"\n"}︡{"done":true}
︠0bebffa3-130b-4886-a9ec-a9b2cbc3c7d6s︠

factor(34643643745854853853835735735734643625343242352362462464262462362624624662)

︡e1497ba2-6342-4dfa-b57e-8946749c088c︡{"stdout":"2 * 557 * 2467 * 11242237 * 8082039001 * 4373142401843 * 31725021552632605824622267154977386739"}︡{"stdout":"\n"}︡{"done":true}
︠2170158c-2042-488f-9586-7132aedf1f19︠

# Nem számolja ki értelmes időn belül, a FEKETE négyzet "Stop" feliratú gombbal állítsuk le ennek a kódnak a futtatását
factor(10577795823851879016615591732095183350836585707548354280149683226062077461)

︡3af2172c-5513-4f84-979d-2bdbc11c2ae6︡{"stderr":":1: RuntimeWarning: cypari2 leaked 573336 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.1/src/sage/arith/misc.py\", line 2685, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 3984, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4362, in cypari2.gen.Gen.factor\nKeyboardInterrupt\n"}︡{"done":true}
︠ea01051f-ad97-4d00-b3be-b6bd269312d8︠

# Nem számolja ki értelmes időn belül, a FEKETE négyzet "Stop" feliratú gombbal állítsuk le ennek a kódnak a futtatását
euler_phi(10577795823851879016615591732095183350836585707548354280149683226062077461)

︡380e7efb-6d9c-489e-a8e8-137b43b69bae︡{"stderr":":1: RuntimeWarning: cypari2 leaked 570208 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.1/src/sage/arith/misc.py\", line 3110, in __call__\n    return ZZ(pari(n).eulerphi())\n              ^^^^^^^^^^^^^^^^^^\n  File \"cypari2/auto_gen.pxi\", line 10675, in cypari2.gen.Gen_base.eulerphi\nKeyboardInterrupt\n"}︡{"done":true}
︠0dd45671-acc5-4f9d-bffb-cd6a7efe5532s︠

next_prime(65725457241423363147475171362341634167341713700)

︡5e64b870-1a93-40ce-a268-5f16ffd807c6︡{"stdout":"65725457241423363147475171362341634167341713719\n"}︡{"done":true}
︠ca3b32c5-c474-4a68-a63b-112a876ef85a︠

is_prime(65725457241423363147475171362341634167341713719)

︡b901314b-3570-4c3d-8455-90cc9c5956d3︡{"stdout":"True\n"}︡{"done":true}
︠8f0ef815-d4e2-43dd-8ae9-c66745fb97f3︠


next_prime(65725457241423363147475171362341634167341713719)

︡8be7d137-c04a-423d-9b38-850b242685bb︡{"stdout":"65725457241423363147475171362341634167341713791\n"}︡{"done":true}
︠b8067b14-3828-4e87-830f-226d0797b2f5︠

# 65725457241423363147475171362341634167341713719, 65725457241423363147475171362341634167341713791

n = 65725457241423363147475171362341634167341713719 * 65725457241423363147475171362341634167341713791
print(n)

︡9698012c-14e2-4da9-a145-ee7190d90e18︡{"stdout":"4319835729594170804974768341324105671895241142963834729618699683963050234697200502460356198729\n"}︡{"done":true}
︠6400e336-fcfa-4801-aa16-7497cfc1318b︠

# Nem számolja ki értelmes időn belül, a FEKETE négyzet "Stop" feliratú gombbal állítsuk le ennek a kódnak a futtatását
factor(4319835729594170804974768341324105671895241142963834729618699683963050234697200502460356198729)

︡dc7bdbca-4fa1-4e31-9fb4-e00cf70d6dda︡{"stderr":":1: RuntimeWarning: cypari2 leaked 829880 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.1/src/sage/arith/misc.py\", line 2685, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 3984, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4362, in cypari2.gen.Gen.factor\nKeyboardInterrupt\n"}︡{"done":true}
︠f7cff78b-80d3-4dc6-b5df-01cd99b7952d︠

# Nem számolja ki értelmes időn belül, a FEKETE négyzet "Stop" feliratú gombbal állítsuk le ennek a kódnak a futtatását
euler_phi(n)

︡6cc6b84a-c951-4cf0-a83c-9fe2443f7c02︡{"stderr":":1: RuntimeWarning: cypari2 leaked 829672 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.1/src/sage/arith/misc.py\", line 3110, in __call__\n    return ZZ(pari(n).eulerphi())\n              ^^^^^^^^^^^^^^^^^^\n  File \"cypari2/auto_gen.pxi\", line 10675, in cypari2.gen.Gen_base.eulerphi\nKeyboardInterrupt\n"}︡{"done":true}
︠f89b9263-0239-4856-a3ba-f05e3938d70d︠


phi_n =  (65725457241423363147475171362341634167341713719 - 1) * (65725457241423363147475171362341634167341713791 - 1)
print(phi_n)

︡363b61d3-f0e1-470a-8bb2-beade9385618︡{"stdout":"4319835729594170804974768341324105671895241142832383815135852957668099891972517234125672771220\n"}︡{"done":true}
︠e26ea8b1-afba-4ccf-8b6e-b53457edda9d︠


def foo(n):
    return 2*euler_phi(n) + 1

︡abd64636-aeff-4faf-a23d-1c3dcecc9008︡{"done":true}
︠8e3e9a43-4ee0-40d2-ab09-d5ae04ae3d5f︠











