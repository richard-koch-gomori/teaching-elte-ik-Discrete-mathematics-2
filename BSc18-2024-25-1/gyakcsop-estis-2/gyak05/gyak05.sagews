︠585c13a7-81c9-4bda-a487-1b18b211448bs︠
# gyak05

1+1
︡9f25d50a-1c15-4e81-97ce-85c2b6618cfd︡{"stdout":"2\n"}︡{"done":true}
︠d97198cc-c4ce-41b1-84dc-2660256e5275︠
# fsor05

# fel1

Caesar-rejtjelezéssel (Caesar-titkosításal) titkosítsa a password sztringet a shift=1 eltolással. Fejtse vissza a kapott ciphertext-et.

Írjon Caesar_encrypt(plaintext, shift) és Caesar_decrypt(ciphertext, shift) szignatúrákkal Caesar-rejtjelező függvényeket.

Mutassa be a függvények működését az árvíztűrő tükörfúrógép sztringen, ahol az eltolás legyen 4.

︡ed98cf54-5f67-40eb-a503-ec1773e77f03︡
︠f0cba459-7608-4f6b-9a4b-1a9bc6a1206cs︠


def Caesar_encrypt(plaintext, shift):
    ciphertext = []
    for ch in plaintext:
        ascii_index = ord(ch)
        cipher_ch = chr(ascii_index + shift)
        ciphertext.append(cipher_ch)
    return "".join(ciphertext)

Caesar_encrypt("password", 1)
Caesar_encrypt("password", 4)
Caesar_encrypt("árvíztűrő tükörfúrógép", 4)

︡79c75ed7-af9f-463c-86b5-41d5273ef4d1︡{"stdout":"'qbttxpse'\n"}︡{"stdout":"'teww{svh'\n"}︡{"stdout":"'åvzñ~xŵvŕ$xĀoúvjþv÷kít'\n"}︡{"done":true}
︠d8383150-27e9-4935-ab81-ce2123b7ad05s︠
︡04511ec4-20f7-4aaf-ba6d-d109552b954e︡{"done":true}
︠cc68bb53-4a3a-490b-9a80-d5dd9e0f96b8s︠

ord('A')
︡9a4712e9-5577-4fcc-850e-c9e45297e8d8︡{"stdout":"65\n"}︡{"done":true}
︠e29d93ab-f7f2-4547-be03-c0e98334dbdbs︠
chr(66)
︡b02cff32-ca97-4d0d-9eeb-f60e31f135fa︡{"stdout":"'B'\n"}︡{"done":true}
︠72ae02a3-9cf1-457d-8262-e4cab91a429bs︠

def Caesar_decrypt(ciphertext, shift):
    plaintext = []
    for ch in ciphertext:
        ascii_index = ord(ch)
        plain_ch = chr(ascii_index - shift)
        plaintext.append(plain_ch)
    return "".join(plaintext)

Caesar_decrypt("qbttxpse", 1)
Caesar_decrypt("teww{svh", 4)
Caesar_decrypt("åvzñ~xŵvŕ$xĀoúvjþv÷kít", 4)
︡5c5172a6-30ff-4e47-96e0-398bc2432ea4︡{"stdout":"'password'\n"}︡{"stdout":"'password'\n"}︡{"stdout":"'árvíztűrő tükörfúrógép'\n"}︡{"done":true}
︠6a6b4e8c-64bf-4913-b06a-05d8f9d24c09s︠

Caesar_encrypt("password", 127)
︡511fd2f7-2504-437d-9661-cac0d75a56f9︡{"stdout":"'ïàòòöîñã'\n"}︡{"done":true}
︠3ecc7d4f-78bc-429f-bf35-620414668e86s︠
Caesar_encrypt("password", 255)
︡9dfa5ee6-ce5c-4859-a64b-82493e6e2271︡{"stdout":"'ůŠŲŲŶŮűţ'\n"}︡{"done":true}
︠76c8e553-bc36-4713-9736-8fad4053c6b6s︠
Caesar_decrypt("ůŠŲŲŶŮűţ", 255)
︡d01d0b4c-5195-477c-bdf7-54443847278b︡{"stdout":"'password'\n"}︡{"done":true}
︠be303457-4f30-4843-b20b-ed70df5ba03as︠
chr(70003)
︡d22db7a2-fb6d-4a1a-8f19-66ae9f10a608︡{"stdout":"'𑅳'\n"}︡{"done":true}
︠a64a5026-ea36-42f2-ac27-0a931e816b03s︠


# fel2

# ROTn
# betűk eltolása n db. pozícióval egy fix ABC-ben
# ABC=abcdefghijklmnopqrstuvwxyz

def ROTn_encrypt(plaintext, key):
    ciphertext = []
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@|"
    for ch in plaintext:
        cipher_idx = (ABC.index(ch) + key) % len(ABC)
        cipher_ch = ABC[cipher_idx]
        ciphertext.append(cipher_ch)
    return "".join(ciphertext)

ROTn_encrypt("password", 1)
ROTn_encrypt("password", 4)

︡3ba37581-7960-4921-a3a7-fcbd6e4b314a︡{"stdout":"'qbttxpse'\n"}︡{"stdout":"'teww@svh'\n"}︡{"done":true}
︠a17e0a1e-950d-4497-a6b1-016aa6ddec70︠

s = "abc"
s.index("c")
︡1f562f63-af2a-4926-91bb-5f746b52e36d︡{"stdout":"2\n"}︡{"done":true}
︠099c5f25-741e-4a86-8db9-e0b7e1057fabs︠



def ROTn_decrypt(ciphertext, key):
    plaintext = []
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@|"
    for ch in ciphertext:
        plain_idx = (ABC.index(ch) - key) % len(ABC)
        plain_ch = ABC[plain_idx]
        plaintext.append(plain_ch)
    return "".join(plaintext)

ROTn_decrypt("qbttxpse", 1)
ROTn_decrypt("teww@svh", 4)
︡12b98572-7175-4ef6-ac5f-51ecae2627b2︡{"stdout":"'password'\n"}︡{"stdout":"'password'\n"}︡{"done":true}
︠2fdd4b93-67e7-41bb-9656-7dd0d101a458s︠




# fel3



def ROTn_decrypt(ciphertext, key):
    plaintext = []
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    for ch in ciphertext:
        plain_idx = (ABC.index(ch) - key) % len(ABC)
        plain_ch = ABC[plain_idx]
        plaintext.append(plain_ch)
    return "".join(plaintext)


ciphertext = "JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV"
for key in [0..25]:
    c = ROTn_decrypt(ciphertext, key)
    print("key = " + str(key) + ", c=", c)
︡13aab501-a4b1-4a7c-921f-da80ff83409c︡{"stdout":"key = 0, c= JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV\nkey = 1, c= IXUPUCTPDVPQCPUCWAYHXPHUCIUCSU\nkey = 2, c= HWTOTBSOCUOPBOTBV XGWOGTBHTBRT\nkey = 3, c= GVSNSARNBTNOANSAUZWFVNFSAGSAQS\nkey = 4, c= FURMR QMASMN MR TYVEUMER FR PR\nkey = 5, c= ETQLQZPL RLMZLQZSXUDTLDQZEQZOQ\nkey = 6, c= DSPKPYOKZQKLYKPYRWTCSKCPYDPYNP\nkey = 7, c= CROJOXNJYPJKXJOXQVSBRJBOXCOXMO\nkey = 8, c= BQNINWMIXOIJWINWPURAQIANWBNWLN\nkey = 9, c= APMHMVLHWNHIVHMVOTQ PH MVAMVKM\nkey = 10, c=  OLGLUKGVMGHUGLUNSPZOGZLU LUJL\nkey = 11, c= ZNKFKTJFULFGTFKTMROYNFYKTZKTIK\nkey = 12, c= YMJEJSIETKEFSEJSLQNXMEXJSYJSHJ\nkey = 13, c= XLIDIRHDSJDERDIRKPMWLDWIRXIRGI\nkey = 14, c= WKHCHQGCRICDQCHQJOLVKCVHQWHQFH\nkey = 15, c= VJGBGPFBQHBCPBGPINKUJBUGPVGPEG\nkey = 16, c= UIFAFOEAPGABOAFOHMJTIATFOUFODF\nkey = 17, c= THE END OF AN ENGLISH SENTENCE\nkey = 18, c= SGDZDMCZNEZ MZDMFKHRGZRDMSDMBD\nkey = 19, c= RFCYCLBYMDYZLYCLEJGQFYQCLRCLAC\nkey = 20, c= QEBXBKAXLCXYKXBKDIFPEXPBKQBK B\nkey = 21, c= PDAWAJ WKBWXJWAJCHEODWOAJPAJZA\nkey = 22, c= OC V IZVJAVWIV IBGDNCVN IO IY \nkey = 23, c= NBZUZHYUI UVHUZHAFCMBUMZHNZHXZ\nkey = 24, c= MAYTYGXTHZTUGTYG EBLATLYGMYGWY\nkey = 25, c= L XSXFWSGYSTFSXFZDAK SKXFLXFVX\n"}︡{"done":true}
︠dd4b30e1-d67d-46cd-b1ac-0786cf40c1fe︠


d = dict()
d['A'] = 1
d['B'] = 6
d['A'] += 1
print(d)
︡cb3e04b7-83ac-4cfa-86f6-876f683564d7︡{"stderr":"Error in lines 4-4\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\nKeyError: 'C'\n"}︡{"done":true}
︠f8b76e7a-0068-4c35-9073-94e5cf7d260as︠

'C' in d

︡7353d3a0-24f3-4f97-9b5c-a2bf1aa92147︡{"stdout":"False\n"}︡{"done":true}
︠13105f41-9fc0-43c8-9a35-97154f8bbb93s︠


# frekvenciaanalízis

freq = dict()
for ch in ciphertext:
    if ch in freq:
        freq[ch] += 1
    else:
        freq[ch] = 1

print(freq)
︡5cca8322-7a2e-4e18-820c-a7dcd13a7cc8︡{"stdout":"{'J': 2, 'Y': 2, 'V': 6, 'Q': 5, 'D': 5, 'U': 1, 'E': 1, 'W': 1, 'R': 1, 'X': 1, 'B': 1, 'Z': 1, 'I': 2, 'T': 1}\n"}︡{"done":true}
︠f488674b-605f-46ff-b64b-3944cb2e3c0as︠

max(freq, key = freq.get)
︡f10d61ea-3fbe-4410-b50d-550a5acaf145︡{"stdout":"'V'\n"}︡{"done":true}
︠0e80ecf3-f211-496a-a2b3-666b6cbfe790s︠

max_value = max(freq.values())
max_value
[key for key in freq if freq[key] == max_value][0]
︡374340ab-bff0-4e08-85d6-4396e004daf8︡{"stdout":"6\n"}︡{"stdout":"'V'\n"}︡{"done":true}
︠fd4354a7-448a-4c97-8342-e2661fb1a183s︠

m = -1
m_ch = ''
for key,value in freq.items():
    #print(key, value)
    if value > m:
        m_ch = key
        m = value
m
m_ch
︡d1a005fb-ef78-45b3-b948-8e51a23efd8c︡{"stdout":"6\n"}︡{"stdout":"'V'\n"}︡{"done":true}
︠84786c2b-17ea-4e0e-ab87-501f841e0555s︠

ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
calculated_key = ABC.index(m_ch) - ABC.index('E')
ROTn_decrypt(ciphertext, calculated_key)
︡42fefaf4-0f48-4bc6-a730-12bd351dbb73︡{"stdout":"'THE END OF AN ENGLISH SENTENCE'\n"}︡{"done":true}
︠7b359196-b9d9-45cd-93cf-e7a07202d678︠









