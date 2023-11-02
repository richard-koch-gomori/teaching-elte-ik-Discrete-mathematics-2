︠3bf5c88b-a1af-45dc-9659-70ac71ecfe8fs︠
# röpzh


1+1
︡cef0e7e6-5790-44c7-a43a-6860923c6d30︡{"stdout":"2"}︡{"stdout":"\n"}︡{"done":true}
︠17a33a4d-8543-446e-a8bf-f4440c3dd0e0s︠


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


︡6a28bdf1-dc87-4c08-bd0a-9488adb25fd3︡{"stdout":"'QBTTXPSE '\n"}︡{"stdout":"'PASSWORD '\n"}︡{"done":true}
︠f017ae6e-3613-4600-9910-0ca87bcd4890︠

freq = dict()
ciphertext = "URYYAIADYQ"

for ch in ciphertext:
    if ch in freq:
        freq[ch] += 1
    else:
        freq[ch] = 1

print(freq)

︡5b8f62d0-03d6-4c61-939c-ecdeac4b59ed︡{"stdout":"{'U': 1, 'R': 1, 'Y': 3, 'A': 2, 'I': 1, 'D': 1, 'Q': 1}\n"}︡{"done":true}
︠6f8766ae-6875-4c0e-b4cd-f6732a8a68f2︠


ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "

calculated_key = abs(ABC.index('L') - ABC.index('Y'))
print(calculated_key)

︡68b95baf-115a-4491-b2a9-1a1470d09e60︡{"stdout":"13\n"}︡{"done":true}
︠0013d91f-bd94-4991-823a-597de7546e9f︠

ROT_decrypt("URYYAIADYQ", 13)

︡0188687e-19db-4610-9512-727deb8b10a7︡{"stdout":"'HELLOWORLD'\n"}︡{"done":true}
︠68e08ea4-88d7-40a7-b0f4-f5552c0df5a6︠


# 5. fsor


# Vigenère cipher


def gen_V_key(password, length):
    if len(password) >= length:
        return password[0:length]

    result = ""
    q = length // len(password)
    r = length % len(password)
    print(q)
    print(r)
    for i in [1..q]:
        result += password
    result += password[0 : r]
    return result

gen_V_key("LEMON", 13)

︡29b13d8d-a2e7-44d4-9482-92e5c0666358︡{"stdout":"2\n3\n'LEMONLEMONLEM'\n"}︡{"done":true}
︠48a36919-4456-4c13-9b51-e3aafed2bafb︠


"hello"[2:4]
︡bd76b563-cf14-42ff-b7e8-11b398433b7d︡{"stdout":"'ll'\n"}︡{"done":true}
︠59b8dac7-7d36-41d1-a711-08e76892ed3a︠


len("ATTACKATDOWN")
gen_V_key("LEMON", 12)

def V_encrypt(plaintext, key):
    if len(plaintext) != len(key):
        raise ValueError("Key is not proper length")

    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "

    result = list()
    for i in [0..len(plaintext) - 1]:
        result.append( ABC[(ABC.index(plaintext[i]) + ABC.index(key[i])) % len(ABC)] )
    return "".join(result)

V_encrypt("ATTACKATDOWN", "LEMONLEMONLE")

︡c47fa94b-0876-45b9-ba44-28359d3e98f5︡{"stdout":"12\n"}︡{"stdout":"2\n2\n'LEMONLEMONLE'\n"}︡{"stdout":"'LXEOPVEERAGR'\n"}︡{"done":true}
︠28816b67-f6b6-4e5e-a6de-07284747be2a︠

def V_decrypt(plaintext, key):
    if len(plaintext) != len(key):
        raise ValueError("Key is not proper length")

    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "

    result = list()
    for i in [0..len(plaintext) - 1]:
        result.append( ABC[(ABC.index(plaintext[i]) - ABC.index(key[i])) % len(ABC)] )
    return "".join(result)

V_decrypt("LXEOPVEERAGR", "LEMONLEMONLE")

︡997994e4-c872-4bb0-969d-2936744f5717︡{"stdout":"'ATTACKATDOWN'\n"}︡{"done":true}
︠bbc406b7-e433-4b86-b6ea-408b7e6621efs︠

# 5. feladat

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


Convert_String_to_Num256("helloworld")
Convert_String_to_Num256("süllyed a harossz")

︡02b5bbc6-054d-4af8-8070-66793ece99ed︡{"stdout":"492997048111900109466724\n"}︡{"stdout":"39468000619024667749731425327957566255994\n"}︡{"done":true}
︠4ed5de5d-b77b-4728-8e6f-79d9064c5350s︠

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


Convert_Num256_to_String(39468000619024667749731425327957566255994)

︡348aeef9-00aa-41b2-9e40-11511a4c4cae︡{"stdout":"'süllyed a harossz'\n"}︡{"done":true}
︠560a6e55-8311-491c-a14b-0cc4e126dbc3s︠

# szorzás/osztás aszimmetrikus titkosítás (6. feladat)

pub_key = 7
priv_key = 1/7
plaintext = 39468000619024667749731425327957566255994
cipher = plaintext * pub_key
print(cipher)
decrypted = cipher * priv_key
print(decrypted)
Convert_Num256_to_String(39468000619024667749731425327957566255994)

︡7018b172-27b9-4bfa-b901-3071494fc7db︡{"stdout":"276276004333172674248119977295702963791958\n"}︡{"stdout":"39468000619024667749731425327957566255994\n"}︡{"stdout":"'süllyed a harossz'\n"}︡{"done":true}
︠8153c87b-de46-4bd2-8eb9-39358007a68bs︠

def asym_encrypt(plaintext, pub_key):
    return Convert_String_to_Num256(plaintext) * pub_key

def asym_decrypt(cipher, priv_key):
    return Convert_Num256_to_String(int(cipher * priv_key))

asym_encrypt("hello", 7)
asym_decrypt(3138647422729, 1/7)

︡1128a3cc-fc1e-4529-99bb-68da277b93be︡{"stdout":"3138647422729\n"}︡{"stdout":"'hello'\n"}︡{"done":true}
︠6d206dc4-c149-4fd4-9a61-0a13402807a8︠












