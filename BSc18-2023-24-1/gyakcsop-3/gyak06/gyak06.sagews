︠1481a595-fd4d-4561-b6a4-cffc14147f6ds︠
# gyak06
# fsor05



1+1

︡6f840e52-5fdb-47e2-85a8-5037b84199c1︡{"stdout":"2"}︡{"stdout":"\n"}︡{"done":true}
︠51809d5c-76cf-4270-bea5-cbab505df96a︠


# x = 10 (4)
# lnko(1, 4) = 1 | 10
# x = 6 (4)
# x = 2 (4)

︡32eae128-bc41-42e6-b07a-60c56f9c1a2b︡
︠07a11739-c8ae-4ff8-bf1b-7cef81a7db2f︠


# fel1

# "password"
def Caesar_encrypt(plaintext, shift):
    ciphertext = ""
    for ch in plaintext:
        ciphertext += chr(ord(ch) + shift)
    return ciphertext

Caesar_encrypt("password", 3)

︡83d337dc-af8f-4395-8706-b482b143d2dc︡{"stdout":"'sdvvzrug'\n"}︡{"done":true}
︠f3be8e70-c88d-4ee5-bce6-d251566b1375︠

def Caesar_decrypt(ciphertext, shift):
    plaintext = ""
    for ch in ciphertext:
        plaintext += chr(ord(ch) - shift)
    return plaintext

Caesar_decrypt("sdvvzrug", 3)

︡e6257323-6ca3-4ef4-91bc-109183caa328︡{"stdout":"'password'\n"}︡{"done":true}
︠e30c7062-cf97-4d4d-97fe-29a400f6986f︠


'p'

︡a0cc08e5-0d82-4056-babd-72e7d060503e︡{"stdout":"'p'\n"}︡{"done":true}
︠a133f9e4-7111-47d8-a0f4-903849f2fa7b︠

ord('p') + 1

︡ee9395e5-bbb7-4d56-9b82-d9a5ef567c2b︡{"stdout":"113\n"}︡{"done":true}
︠481660df-884c-4da9-9abf-6a426396ce82︠



cipher = Caesar_encrypt("árvı́ztűrő tükörfúrógép", 16)
print(cipher)
Caesar_decrypt(cipher, 16)

︡d2b1a764-46f9-41db-8555-95ceef2d2763︡{"stdout":"ñŁ̑Ɓš0Č{ĆvĊăwù\n"}︡{"stdout":"'árvı́ztűrő tükörfúrógép'\n"}︡{"done":true}
︠31bbfa7f-307d-449b-837f-f7234881b8a9︠

# fel2

def ROT_encrypt(plaintext, key):
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    ciphertext = ""
    for ch in plaintext:
        idx = ABC.index(ch)
        new_idx = (idx + key) % len(ABC)
        ciphertext += ABC[new_idx]
    return ciphertext


ROT_encrypt("PASSWORDZ", 1)

def ROT_decrypt(ciphertext, key):
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    plaintext = ""
    for ch in ciphertext:
        idx = ABC.index(ch)
        new_idx = (idx - key) % len(ABC)
        plaintext += ABC[new_idx]
    return plaintext


ROT_decrypt("QBTTXPSEA", 1)

def ROT_decrypt(ciphertext, key):
    return ROT_encrypt(ciphertext, -key)

ROT_decrypt("QBTTXPSEA", 1)

︡70e47cce-3741-4c5c-b01c-42efd29988a0︡{"stdout":"'QBTTXPSE '\n"}︡{"stdout":"'PASSWORD '\n"}︡{"stdout":"'PASSWORD '\n"}︡{"done":true}
︠12021ec1-2c4c-4d50-a8d8-1da152ae507e︠


ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
ABC.index("C")

︡3ab5112a-7dfc-4a10-a7b6-bd22366e3481︡{"stdout":"2\n"}︡{"done":true}
︠42441e4c-016b-49b5-ac6f-d154ef859a29︠


ROT_encrypt("THERE IS A YELLOW TEXT", 1)

︡85263253-52e8-4241-b986-4bdc1c51fd42︡{"stdout":"'UIFSFAJTABAZFMMPXAUFYU'\n"}︡{"done":true}
︠98fea734-8ebf-4f2d-ae7c-0c4571afd965︠


# fel3

ciphertext = "JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV"

for key in [0..27]:
    print(ROT_decrypt(ciphertext, key))

︡e653de23-c00e-47b5-9941-5072d0bba251︡{"stdout":"JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV\nIXUPUCTPDVPQCPUCWAYHXPHUCIUCSU\nHWTOTBSOCUOPBOTBV XGWOGTBHTBRT\nGVSNSARNBTNOANSAUZWFVNFSAGSAQS\nFURMR QMASMN MR TYVEUMER FR PR\nETQLQZPL RLMZLQZSXUDTLDQZEQZOQ\nDSPKPYOKZQKLYKPYRWTCSKCPYDPYNP\nCROJOXNJYPJKXJOXQVSBRJBOXCOXMO\nBQNINWMIXOIJWINWPURAQIANWBNWLN\nAPMHMVLHWNHIVHMVOTQ PH MVAMVKM\n OLGLUKGVMGHUGLUNSPZOGZLU LUJL\nZNKFKTJFULFGTFKTMROYNFYKTZKTIK\nYMJEJSIETKEFSEJSLQNXMEXJSYJSHJ\nXLIDIRHDSJDERDIRKPMWLDWIRXIRGI\nWKHCHQGCRICDQCHQJOLVKCVHQWHQFH\nVJGBGPFBQHBCPBGPINKUJBUGPVGPEG\nUIFAFOEAPGABOAFOHMJTIATFOUFODF\nTHE END OF AN ENGLISH SENTENCE\nSGDZDMCZNEZ MZDMFKHRGZRDMSDMBD\nRFCYCLBYMDYZLYCLEJGQFYQCLRCLAC\nQEBXBKAXLCXYKXBKDIFPEXPBKQBK B\nPDAWAJ WKBWXJWAJCHEODWOAJPAJZA\nOC V IZVJAVWIV IBGDNCVN IO IY \nNBZUZHYUI UVHUZHAFCMBUMZHNZHXZ\nMAYTYGXTHZTUGTYG EBLATLYGMYGWY\nL XSXFWSGYSTFSXFZDAK SKXFLXFVX\nKZWRWEVRFXRSERWEYC JZRJWEKWEUW\nJYVQVDUQEWQRDQVDXBZIYQIVDJVDTV\n"}︡{"done":true}
︠f31610f0-aec2-41e4-8aa2-19fd89a55b30︠

freq = dict()
freq['A'] = 1
freq['A'] += 2
print(freq['A'])

︡b09073f8-a9c1-404f-b139-2e68d9e8e2d4︡{"stdout":"3\n"}︡{"done":true}
︠d797891a-ed34-435a-9540-3d6305f55db1︠


freq = dict()
ciphertext = "JYVQVDUQEWQRDQVDXBZIYQIVDJVDTV"

for ch in ciphertext:
    if ch in freq:
        freq[ch] += 1
    else:
        freq[ch] = 1

print(freq)

︡5a32d782-8510-4117-bcf0-763e03525f87︡{"stdout":"{'J': 2, 'Y': 2, 'V': 6, 'Q': 5, 'D': 5, 'U': 1, 'E': 1, 'W': 1, 'R': 1, 'X': 1, 'B': 1, 'Z': 1, 'I': 2, 'T': 1}\n"}︡{"done":true}
︠61a08755-bd02-45fb-b73c-7705e0f1aa3es︠

# 'E' -> 'V'
calculated_key = abs(ABC.index('E') - ABC.index('V'))
ROT_decrypt(ciphertext, calculated_key)
︡4e418c8c-d828-486b-858c-02462be6a4a0︡{"stdout":"'THE END OF AN ENGLISH SENTENCE'\n"}︡{"done":true}
︠a91e107d-e95f-4ede-842c-6434a8101d44︠

# fel4

# AB35 -> 634634
  6566
# 3210
# AB35 = 5 * 16^0 + 3 * 16^1 + 11*16^2 + 10 * 16^3
5 * 16^0 + 3 * 16^1 + 11*16^2 + 10 * 16^3


# 43829 / 16 = 2739
# 5

# 2739 / 16 =  171
# 3
int(2739 % 16)

int(43829 % 16)
︡e6fe01c1-c17a-4203-b3ad-1d9214941fe6︡{"stdout":"6566\n"}︡{"stdout":"43829\n"}︡{"stdout":"3\n"}︡{"stdout":"5\n"}︡{"done":true}
︠433ebf5b-256b-49cf-b7fc-af9237f5cab4︠


password = list("alma")
password.reverse()
i = 0
num = 0
for ch in password:
    num += ord(ch) * 256^i
    i += 1
print(num)
︡d2e491ca-bfce-4942-a1cf-cfd807531ee4︡{"stdout":"1634495841\n"}︡{"done":true}
︠b8709b72-ce72-4f7c-95aa-f1608671ba32s︠

password_list = []
num = 1634495841
while num > 0:
    password_list.append(chr(num % 256))
    num = int(num / 256);

password_list.reverse()
print("".join(password_list))
︡1656b6e0-cbba-4922-93a3-6969db91ac6a︡{"stdout":"alma\n"}︡{"done":true}
︠4072950a-3402-419e-ab52-446a2c074df7s︠

password = list("34fg__#Gfb34226fdsWWQl36lII234i<!%fGZjsdJFEBD77467effO+36{}__IOQsFF&363&ZzOO053")

password.reverse()
i = 0
num = 0
for ch in password:
    num += ord(ch) * 256^i
    i += 1
print(num)
︡59872e2d-533e-4ef9-bf55-c3d47f72f83d︡{"stdout":"3564733067735719071646687286191003377609878724686405481337882898389016373456046506323076878927861827176786281900611822489011829592155079319045973686683531183534466558164788076421842157450547\n"}︡{"done":true}
︠21d703ae-140b-4f01-8d82-465f8fa254fas︠

password_list = []
num = 3564733067735719071646687286191003377609878724686405481337882898389016373456046506323076878927861827176786281900611822489011829592155079319045973686683531183534466558164788076421842157450547
while num > 0:
    password_list.append(chr(num % 256))
    num = int(num / 256);

password_list.reverse()
print("".join(password_list))
︡6a375aad-6205-4b2b-a279-8df9417059c7︡{"stdout":"34fg__#Gfb34226fdsWWQl36lII234i<!%fGZjsdJFEBD77467effO+36{}__IOQsFF&363&ZzOO053\n"}︡{"done":true}
︠135ffaed-8c27-4bed-bc70-c447f146251d︠

# aszimmetrikus kulcsú titkosítás

# Alice -------- Bob


# p = 100

# titkosítás:
# c = 7 * 100

# pub_key = 7
# priv_key = 1/7

# visszafejtés:
# p = (1/7) * 700









