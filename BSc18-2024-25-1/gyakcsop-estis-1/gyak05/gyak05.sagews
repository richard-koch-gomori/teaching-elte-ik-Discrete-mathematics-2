︠5157842c-11ad-49c8-9d36-fd931f2e7f68s︠
# gyak05

1 + 1
︡c7638c45-e1d2-4808-afc8-6266a6126294︡{"stdout":"2\n"}︡{"done":true}
︠9f0a2838-d9b4-4d4c-851c-eca718fdb621︠

# fsor05

# fel1

Caesar-rejtjelezéssel (Caesar-titkosításal) titkosítsa a password sztringet a shift=1 eltolással. Fejtse vissza a kapott ciphertext-et.

Írjon Caesar_encrypt(plaintext, shift) és Caesar_decrypt(ciphertext, shift) szignatúrákkal Caesar-rejtjelező függvényeket.

Mutassa be a függvények működését az árvíztűrő tükörfúrógép sztringen, ahol az eltolás legyen 4.


︡283a2a3f-8f44-4aad-88cf-32279460f2a6︡
︠fdb781d0-54b2-4f65-9699-6c00fae2f0cds︠

def Caesar_encrypt(plaintext, shift):
    ciphertext = []
    for ch in plaintext:
        cipher_idx = ord(ch) + shift
        cipher_ch = chr(cipher_idx)
        ciphertext.append(cipher_ch)
    return "".join(ciphertext)

Caesar_encrypt("password", 1)
Caesar_encrypt("password", 4)
Caesar_encrypt("password", 270)
Caesar_encrypt("árvíztűrő tükörfúrógép", 4)

︡2e21e736-22de-43b3-af34-fcd87eab54e2︡{"stdout":"'qbttxpse'\n"}︡{"stdout":"'teww{svh'\n"}︡{"stdout":"'žůƁƁƅŽƀŲ'\n"}︡{"stdout":"'åvzñ~xŵvŕ$xĀoúvjþv÷kít'\n"}︡{"done":true}
︠0f37e440-34f2-4d8e-980d-68ac2ca9ca74s︠
︡f352e351-ed5b-4b2e-96c9-72e535e42da6︡{"done":true}
︠d5e660da-36cd-4a00-9c8b-5e903934a308s︠

ord('A')
︡36a95548-6a50-4a2f-8a11-50a12d1849fb︡{"stdout":"65\n"}︡{"done":true}
︠ae51957c-cd06-4e72-ad07-2d1145d15f88s︠
chr(66)
︡443b5b29-7225-4b5e-b7b8-6e32eabd9da4︡{"stdout":"'B'\n"}︡{"done":true}
︠e6014bea-b2ce-421a-a9f5-b9e18b93aa03s︠
chr(10000000)
︡13eea439-fbc3-45f9-be08-d5e18bcf3e42︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\nValueError: chr() arg not in range(0x110000)\n"}︡{"done":true}
︠13d3a9ee-ff74-4925-bcea-ddc78609beccs︠


def Caesar_decrypt(ciphertext, shift):
    plaintext = []
    for ch in ciphertext:
        plain_idx = ord(ch) - shift
        plain_ch = chr(plain_idx)
        plaintext.append(plain_ch)
    return "".join(plaintext)

Caesar_decrypt("qbttxpse", 1)
Caesar_decrypt("teww{svh", 4)
Caesar_decrypt("žůƁƁƅŽƀŲ", 270)
Caesar_decrypt("åvzñ~xŵvŕ$xĀoúvjþv÷kít", 4)

︡652e3090-8dc1-4d81-8b8f-a8188c05284a︡{"stdout":"'password'\n"}︡{"stdout":"'password'\n"}︡{"stdout":"'password'\n"}︡{"stdout":"'árvíztűrő tükörfúrógép'\n"}︡{"done":true}
︠d84cb14f-3763-42c3-a615-d23dda072f46s︠

# fel2



def ROT_encrypt(plaintext, key):
    ABC="abcdefghijklmnopqrstuvwxyz"
    ciphertext = []
    for ch in plaintext:
        idx = (ABC.index(ch) + key) % len(ABC)
        cipher_ch = ABC[idx]
        ciphertext.append(cipher_ch)
    return "".join(ciphertext)

ROT_encrypt("password", 1)
ROT_encrypt("password", 4)
ROT_encrypt("password", 13)

︡08033f38-ee0b-4532-bff7-13fe1a2ade5a︡{"stdout":"'qbttxpse'\n"}︡{"stdout":"'tewwasvh'\n"}︡{"stdout":"'cnffjbeq'\n"}︡{"done":true}
︠cdaf62ee-e9cc-4f64-a31d-ba3d1c96e11as︠
︡2ae29125-d4bb-4e51-a86f-aba5dbad2144︡{"done":true}
︠6899f7bd-9265-4815-a6c5-40b40c46dec7s︠

ABC="abcdefghijklmnopqrstuvwxyz"
ABC.index("f")
︡c9210360-c838-4607-94af-6026835b6d70︡{"stdout":"5\n"}︡{"done":true}
︠86d54e2d-8e1b-4271-bb2c-c68dc6d48517s︠

def ROT_decrypt(ciphertext, key):
    ABC="abcdefghijklmnopqrstuvwxyz"
    plaintext = []
    for ch in ciphertext:
        idx = (ABC.index(ch) - key) % len(ABC)
        plain_ch = ABC[idx]
        plaintext.append(plain_ch)
    return "".join(plaintext)

ROT_decrypt("qbttxpse", 1)
ROT_decrypt("tewwasvh", 4)
ROT_decrypt("cnffjbeq", 13)

︡3893aa67-9e41-4473-b717-f863fbed62ad︡{"stdout":"'password'\n"}︡{"stdout":"'password'\n"}︡{"stdout":"'password'\n"}︡{"done":true}
︠abe21b27-0914-4cc2-ac7e-5a1ce6c8ac7cs︠



ROT_encrypt("password", 13)
ROT_encrypt("cnffjbeq", 13)
︡a1707e4c-2124-4381-842d-2801c3c75f4b︡{"stdout":"'cnffjbeq'\n"}︡{"stdout":"'password'\n"}︡{"done":true}
︠4db21562-e0b9-4377-920c-f7eba2f30c9as︠

# fel3

def ROT_encrypt(plaintext, key):
    ABC="ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    ciphertext = []
    for ch in plaintext:
        idx = (ABC.index(ch) + key) % len(ABC)
        cipher_ch = ABC[idx]
        ciphertext.append(cipher_ch)
    return "".join(ciphertext)

def ROT_decrypt(ciphertext, key):
    ABC="ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    plaintext = []
    for ch in ciphertext:
        idx = (ABC.index(ch) - key) % len(ABC)
        plain_ch = ABC[idx]
        plaintext.append(plain_ch)
    return "".join(plaintext)


ABC="ABCDEFGHIJKLMNOPQRSTUVWXYZ "
cipher = "JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV"

for key in [0..len(ABC) - 1]:
    result = ROT_decrypt(cipher, key)
    print("key=" + str(key) + ", res = " + result)
︡90099106-8aa8-4aa7-82f8-6e53c139e431︡{"stdout":"key=0, res = JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV\nkey=1, res = IXUPUCTPDVPQCPUCWAYHXPHUCIUCSU\nkey=2, res = HWTOTBSOCUOPBOTBV XGWOGTBHTBRT\nkey=3, res = GVSNSARNBTNOANSAUZWFVNFSAGSAQS\nkey=4, res = FURMR QMASMN MR TYVEUMER FR PR\nkey=5, res = ETQLQZPL RLMZLQZSXUDTLDQZEQZOQ\nkey=6, res = DSPKPYOKZQKLYKPYRWTCSKCPYDPYNP\nkey=7, res = CROJOXNJYPJKXJOXQVSBRJBOXCOXMO\nkey=8, res = BQNINWMIXOIJWINWPURAQIANWBNWLN\nkey=9, res = APMHMVLHWNHIVHMVOTQ PH MVAMVKM\nkey=10, res =  OLGLUKGVMGHUGLUNSPZOGZLU LUJL\nkey=11, res = ZNKFKTJFULFGTFKTMROYNFYKTZKTIK\nkey=12, res = YMJEJSIETKEFSEJSLQNXMEXJSYJSHJ\nkey=13, res = XLIDIRHDSJDERDIRKPMWLDWIRXIRGI\nkey=14, res = WKHCHQGCRICDQCHQJOLVKCVHQWHQFH\nkey=15, res = VJGBGPFBQHBCPBGPINKUJBUGPVGPEG\nkey=16, res = UIFAFOEAPGABOAFOHMJTIATFOUFODF\nkey=17, res = THE END OF AN ENGLISH SENTENCE\nkey=18, res = SGDZDMCZNEZ MZDMFKHRGZRDMSDMBD\nkey=19, res = RFCYCLBYMDYZLYCLEJGQFYQCLRCLAC\nkey=20, res = QEBXBKAXLCXYKXBKDIFPEXPBKQBK B\nkey=21, res = PDAWAJ WKBWXJWAJCHEODWOAJPAJZA\nkey=22, res = OC V IZVJAVWIV IBGDNCVN IO IY \nkey=23, res = NBZUZHYUI UVHUZHAFCMBUMZHNZHXZ\nkey=24, res = MAYTYGXTHZTUGTYG EBLATLYGMYGWY\nkey=25, res = L XSXFWSGYSTFSXFZDAK SKXFLXFVX\nkey=26, res = KZWRWEVRFXRSERWEYC JZRJWEKWEUW\n"}︡{"done":true}
︠b141a846-4195-4e98-8921-c895413e313ds︠


d = dict()
d['A'] = 1
d['B'] = 2
d['B'] += 1
d
'C' in d
'A' in d
︡1976821c-b930-45fc-9884-aeadad1b7ddd︡{"stdout":"{'A': 1, 'B': 3}\n"}︡{"stdout":"False\n"}︡{"stdout":"True\n"}︡{"done":true}
︠19ac03de-098e-47e6-abfb-3aa88beeab11s︠

freq = dict()
for idx in [0..len(cipher) - 1]:
    ch = cipher[idx]
    if ch in freq:
        freq[ch] += 1
    else:
        freq[ch] = 1

print(freq)
︡d91200d9-581d-49f6-b2bf-8fdb616e2f29︡{"stdout":"{'J': 2, 'Y': 2, 'V': 6, 'Q': 5, 'D': 5, 'U': 1, 'E': 1, 'W': 1, 'R': 1, 'X': 1, 'B': 1, 'Z': 1, 'I': 2, 'T': 1}\n"}︡{"done":true}
︠2eea5915-32df-449e-9928-dfcb22b31c80s︠

max_value = max(freq.values())
print(max_value)
︡5b9a1b79-4650-4e0f-af6c-bf8e6b487195︡{"stdout":"6\n"}︡{"done":true}
︠368f00cb-3a5a-4ff6-8422-0f4c95671017s︠

max_key = [ch for ch in freq if freq[ch] == max_value][0]
print(max_key)
︡8a335394-ef6c-4f32-b251-9be98d00c587︡{"stdout":"V\n"}︡{"done":true}
︠e95594d3-cfe8-4d71-9afb-129c57412612︠

# E -> V
ord('V') - ord('E')

︡8ea4ffa9-22d5-4b2f-89a0-23a829f1f63d︡{"stdout":"17\n"}︡{"done":true}
︠56844cee-b175-472f-afbf-040a7d325ef4s︠


calculated_key = ABC.index(max_key) - ABC.index('E')
print(calculated_key)

︡5c912648-e487-4077-a87b-9548ee037cdc︡{"stdout":"17\n"}︡{"done":true}
︠8e537e88-be3e-455e-b5f2-0d3350ada07as︠


ROT_decrypt(cipher, calculated_key)
︡1ba82881-b2cd-4ba1-be79-5cc0d20f2569︡{"stdout":"'THE END OF AN ENGLISH SENTENCE'\n"}︡{"done":true}
︠7cdf81bb-a71c-419f-b83c-1650245b28d1︠









