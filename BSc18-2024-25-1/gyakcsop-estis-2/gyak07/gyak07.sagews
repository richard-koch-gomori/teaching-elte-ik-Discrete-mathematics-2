︠a2c7ddab-b37f-49a5-9c86-7c4606f126efs︠
1+1
︡68e6a565-54d5-443c-921a-efdb4258456b︡{"stdout":"2\n"}︡{"done":true}
︠4c53fcf0-1a03-42c1-90d9-547edad068das︠


def Convert_String_to_Num256(string):
    res = 0
    idx = 0
    string_rev = list(string)
    string_rev.reverse()
    for ch in string_rev:
        #print(idx, ch)
        res += 256^idx * ord(ch)
        idx += 1

    return res

Convert_String_to_Num256("hello")
︡91eac312-bb47-4254-a944-9628142ee743︡{"stdout":"448378203247\n"}︡{"done":true}
︠5c1a7c09-6298-4f14-8322-b91ccc7faa7b︠
        
 43210
"hello" -> 645374537

   3210
almg325 = 5 * 256^0 + 2 * 256^1 + ...

645374537 -> "hello"


0123456789ABCDEF

hexa

  210
0x1f2 = 2 * 16^0 + 15 * 16^1 + 1 * 16^2

   3210
almg325 = 5 * 256^0 + 2 * 256^1 + ...

︡0acdc99d-b6e5-4354-85d3-df3e068cbc01︡
︠5d9c068f-c5c0-410e-ab97-f0db71e46409s︠
︡d957418a-3c4f-4d02-869e-73baf5819af5︡{"done":true}
︠dc4d71ae-1bef-41bf-b0a1-d50e58676253s︠
#num=17
# 2-esbe:
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
10001 = 2^4 + 2^0 = 17

︡d0ba7368-c68e-402e-bf61-cff70bd5667a︡
︠6cf4e91d-006c-4d98-aebe-da7f747137acs︠

def Convert_Num256_to_String(num):
    res_list = list()

    while num > 0:
        res_list.append(chr(num % 256))
        num = num // 256
    res_list.reverse()
    return "".join(res_list)

Convert_Num256_to_String(448378203247)
︡0062a52d-3e00-4acc-8df8-c4f18269ada7︡{"stdout":"'hello'\n"}︡{"done":true}
︠a569584f-9c13-4b31-83de-40d642d086bes︠


def Asym_encrypt(plaintext, pub_key):
    plain = Convert_String_to_Num256(plaintext)
    return plain * pub_key

def Asym_decrypt(cipher, priv_key):
    plain = int(cipher * priv_key)
    plaintext = Convert_Num256_to_String(plain)
    return plaintext


Asym_encrypt("appofdiscretemodels", 4)
︡8f7965b0-1b9a-4bfd-9dd1-3b95b0382250︡{"stdout":"8691868479931524579143751717046813713304498636\n"}︡{"done":true}
︠b0dac4d9-4ff8-492a-a82f-1997bf7e5a34︠

#Asym_decrypt(8691868479931524579143751717046813713304498636, 0.25)
Asym_decrypt(8691868479931524579143751717046813713304498636, 1/4)
︡ae2ef14e-9e63-44b8-a4c1-f2564b2f9c73︡{"stdout":"'appofdh\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00\\x00'\n"}︡{"stdout":"'appofdiscretemodels'\n"}︡{"done":true}
︠9e204686-17a3-4116-ba5f-ce6c8c02880bs︠



def RSA_encrypt(plaintext, pub_key):
    m = Convert_String_to_Num256(plaintext)
    n = pub_key[0]
    e = pub_key[1]
    return m^e % n

def RSA_decrypt(cipher, priv_key, modulus):
    d = priv_key
    n = modulus
    m = cipher ^ d % n
    return Convert_Num256_to_String(m)


RSA_encrypt("A", (3233, 17))
︡85305b89-2de9-4c64-aed2-ca7e0ec4d51b︡{"stdout":"2790\n"}︡{"done":true}
︠b707771d-242e-4a36-bce1-b6285b936e34︠

RSA_decrypt(2790, euler_phi, 3233)
︡5d25e06e-d93c-45ee-847e-60d25edd60f0︡{"stdout":"'A'\n"}︡{"done":true}
︠2a12207e-5adc-4fc6-b99e-8b549f8163aes︠


euler_phi(150)
︡318f10cf-15dd-44d3-979d-24ef9487f68b︡{"stdout":"40"}︡{"stdout":"\n"}︡{"done":true}
︠e567d1f8-d44c-4da8-a649-4e90e00752fes︠

factor(34643643745854853853835735735734643625343242352362462464262462362624624662)
︡c41e56c8-4e99-43cc-a8eb-cfe02be43916︡{"stdout":"2 * 557 * 2467 * 11242237 * 8082039001 * 4373142401843 * 31725021552632605824622267154977386739"}︡{"stdout":"\n"}︡{"done":true}
︠e056de1f-aa7c-4b6a-9f6c-7a375b689e86s︠

euler_phi(34643643745854853853835735735734643625343242352362462464262462362624624662)
︡f0bb74a9-bbc8-4842-a150-195f24a8d891︡{"stdout":"17283713104309749324637302460518508016000093805299235033527831583867264000"}︡{"stdout":"\n"}︡{"done":true}
︠ae72b618-ab58-4d85-83b2-851796f78203s︠

factor(10577795823851879016615591732095183350836585707548354280149683226062077461)
︡affb7404-1eb4-48fc-939a-994027eb66b3︡{"stderr":":1: RuntimeWarning: cypari2 leaked 564864 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n"}︡{"stderr":"  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠c67d0702-32da-4f86-9350-23878326be42s︠


euler_phi(10577795823851879016615591732095183350836585707548354280149683226062077461)
︡6421a414-0da7-4f58-8bc3-66820334c20b︡{"stderr":":1: RuntimeWarning: cypari2 leaked 564688 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 3138, in __call__\n    return ZZ(pari(n).eulerphi())\n              ^^^^^^^^^^^^^^^^^^\n  File \"cypari2/auto_gen.pxi\", line 10675, in cypari2.gen.Gen_base.eulerphi\nKeyboardInterrupt\n"}︡{"done":true}
︠f8f4bc7c-e245-46ba-8b3d-3c22ee9baf39︠









