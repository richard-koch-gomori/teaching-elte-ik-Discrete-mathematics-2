︠9bf23a79-5591-4d93-8bef-1d7f5b383245s︠
# gyak06

1+1
︡0ddb572c-f6bd-4cd4-bb16-92125e3b625c︡{"stdout":"2\n"}︡{"done":true}
︠f5a2e259-dc3b-4fe0-a37d-7773b1918257s︠


# fsor05
# fel4

def gen_V_key(pwd, length):
    #q = int(len(pwd) / length)
    q = length // len(pwd)
    r = length % len(pwd)
    return q * pwd + pwd[0:r]


plaintext = "ATTACKATDOWN"
gen_V_key("LEMON", len(plaintext))

︡fc91cf5b-661a-4798-9927-63bd7404626f︡{"stdout":"'LEMONLEMONLE'\n"}︡{"done":true}
︠6c913fd8-2d6d-4162-b185-e5271eec2bcds︠
︡d74af770-2e0e-4008-a59b-69970664c439︡{"done":true}
︠d5e8141a-403c-4f29-9867-10a36d3f8e51s︠


2 * "hello"
q = 2
pwd = "hello"
2 * pwd
︡a64633b9-af06-4e88-b5de-d9ff2695668d︡{"stdout":"'hellohello'\n"}︡{"stdout":"'hellohello'\n"}︡{"done":true}
︠6b344cc6-66e0-4d7a-91fe-9e72d3b7f9efs︠


"hello"[1:3]
︡f247aadd-70fc-4120-9143-2329b1822e59︡{"stdout":"'el'\n"}︡{"done":true}
︠644d1ba5-66aa-41ee-be7d-0e478994a89es︠


def V_encrypt(plaintext, key):
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "

    if len(plaintext) != len(key):
        raise ValueError("len(plaintext) != len(key)")

    ciphertext = []
    for idx in [0..len(plaintext)-1]:
        ch = plaintext[idx]
        cipher_idx = (ABC.index(ch) + ABC.index(key[idx])) % len(ABC)
        cipher_ch = ABC[cipher_idx]
        ciphertext.append(cipher_ch)
    return "".join(ciphertext)

V_encrypt(plaintext, "LEMONLEMONLE")
︡0b6824e3-2e04-4746-b39e-c6b55a5f6195︡{"stdout":"'LXEOPVEERAGR'\n"}︡{"done":true}
︠e29a9c88-0eed-4e6e-8f3d-1056599e5af9s︠


def V_encrypt(plaintext, key):
    if len(plaintext) != len(key):
        raise ValueError("Key is not proper length")

    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "

    result = list()
    for i in [0..len(plaintext) - 1]:
        result.append( ABC[(ABC.index(plaintext[i]) + ABC.index(key[i])) % len(ABC)] )
    return "".join(result)

V_encrypt("ATTACKATDOWN", "LEMONLEMONLE")
︡b7c52e8b-eab5-47eb-85c4-bd2b3de59997︡{"stdout":"'LXEOPVEERAGR'\n"}︡{"done":true}
︠ab30cdb7-e732-477e-8bc9-3fe1a892a45fs︠


def V_decrypt(ciphertext, key):
    ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "

    if len(ciphertext) != len(key):
        raise ValueError("len(ciphertext) != len(key)")

    plaintext = []
    for idx in [0..len(ciphertext)-1]:
        ch = ciphertext[idx]
        plain_idx = (ABC.index(ch) - ABC.index(key[idx])) % len(ABC)
        plain_ch = ABC[plain_idx]
        plaintext.append(plain_ch)
    return "".join(plaintext)

V_decrypt("LXEOPVEERAGR", "LEMONLEMONLE")
︡d951395f-3eca-450e-a67a-cecab8e688dc︡{"stdout":"'ATTACKATDOWN'\n"}︡{"done":true}
︠af945eb9-c80f-4530-b4d4-358ac0faeaecs︠


# röpzh

freq1 = {'A': 3, 'B': 10, 'C': 1, 'D': 5}
freq2 = {'A': 2, 'B': 20, 'D': 5, 'E': 7}

freq2['C']

︡d1edc5d9-4ac2-40ea-a607-4f174a15fc0f︡{"stderr":"Error in lines 3-3\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\nKeyError: 'C'\n"}︡{"done":true}
︠6a4118fc-bc9a-4d73-a085-1a0e6b720459s︠

def SubtractFreq(freq1, freq2):
    res = dict()
    for key, value in freq1.items():
        if key in freq2:
            res[key] = value - freq2[key]
        if key not in freq2:
            res[key] = value
    return res

SubtractFreq(freq1, freq2)
︡47d2036f-ae42-48f9-88ff-3f6c70a629f0︡{"stdout":"{'A': 1, 'B': -10, 'C': 1, 'D': 0}\n"}︡{"done":true}
︠b4ee33fb-413b-4230-a341-52883ac83629s︠

def SubtractFreq(freq1, freq2):
    res = dict()
    for key, value in freq1.items():
        res[key] = value - freq2.get(key, 0)
    return res

SubtractFreq(freq1, freq2)
︡538752ba-99ef-437d-9930-5f2befe7840a︡{"stdout":"{'A': 1, 'B': -10, 'C': 1, 'D': 0}\n"}︡{"done":true}
︠9654cbe6-d026-4acf-8573-7d1c2cccb9a1s︠

def SubtractFreq(freq1, freq2):
    return {key : freq1[key] - freq2.get(key, 0) for key in freq1}

SubtractFreq(freq1, freq2)
︡4ffe527b-458d-4fbb-b137-710a37668681︡{"stdout":"{'A': 1, 'B': -10, 'C': 1, 'D': 0}\n"}︡{"done":true}
︠5aac624d-2527-4d21-8ba8-8ac8ee154a5d︠

# fel6


"hello world" -> 436234636
436234636 -> "hello world"


# aszimmetrikus titkosítás

plain = 100
pub_key = 2
titkosítás: cipher := plain * pub_key = 200

priv_key = 0.5
visszafejtés: plain := cipher * priv_key = 200 * 0.5 = 100


Alice                   -------------------------------- Bob
aki szeretne nekem titkos
üzenet küldeni, az titkosítsa
a pub_key=2-vel
priv_key=0.5

                                                         pub_key=2
                                                         cipher=200

cipher=200
plain=100


︡cbce6b4f-53ab-4a87-99bc-506a09f800df︡
︠f2960292-0515-42f0-a5a6-3a64b2366e7fs︠
︡5792e434-0064-4759-8738-a3904d4ff5a1︡{"done":true}
︠97013ded-4cff-4bd6-a0b4-e5d7d6e3f2e0s︠


def Asym_encrypt(plain, pub_key):
    return plain * pub_key



def Asym_decrypt(cipher, priv_key):
    return int(cipher * priv_key)



Asym_encrypt(100, 2)
Asym_decrypt(200, 0.5)
︡7917a8c9-bdfa-47ac-9898-5c7c16a8df68︡{"stdout":"200\n"}︡{"stdout":"100\n"}︡{"done":true}
︠28f2db31-e667-4e75-b0e1-aa6a17ff478b︠









