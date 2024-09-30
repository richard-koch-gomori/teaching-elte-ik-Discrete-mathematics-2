︠1529c122-88bc-4225-824f-bc148655558fs︠

1+1
5*6
︡edf988d5-bd97-4796-a313-7c1e8cb6447b︡{"stdout":"2\n"}︡{"stdout":"30\n"}︡{"done":true}
︠971ad41d-da74-454e-bf4c-30b67cb2b14bs︠




1+1
A = 12
print(A)

︡c6a5e663-d15a-48fb-9ce9-39eedb672c2a︡{"stdout":"2\n"}︡{"stdout":"12\n"}︡{"done":true}
︠8bc6fb14-feb2-4823-99da-e39bde91cd9c︠


# komment
56^12
︡905dff2c-3028-47c3-bdb5-f8c3cd5fc79b︡{"stdout":"951166013805414055936\n"}︡{"done":true}
︠f920535f-d021-4782-b220-c6ced26dbdb4s︠


factorial(1000)
︡9fd64355-a1d7-4e44-9f5c-b20bf85ab906︡{"stdout":"402387260077093773543702433923003985719374864210714632543799910429938512398629020592044208486969404800479988610197196058631666872994808558901323829669944590997424504087073759918823627727188732519779505950995276120874975462497043601418278094646496291056393887437886487337119181045825783647849977012476632889835955735432513185323958463075557409114262417474349347553428646576611667797396668820291207379143853719588249808126867838374559731746136085379534524221586593201928090878297308431392844403281231558611036976801357304216168747609675871348312025478589320767169132448426236131412508780208000261683151027341827977704784635868170164365024153691398281264810213092761244896359928705114964975419909342221566832572080821333186116811553615836546984046708975602900950537616475847728421889679646244945160765353408198901385442487984959953319101723355556602139450399736280750137837615307127761926849034352625200015888535147331611702103968175921510907788019393178114194545257223865541461062892187960223838971476088506276862967146674697562911234082439208160153780889893964518263243671616762179168909779911903754031274622289988005195444414282012187361745992642956581746628302955570299024324153181617210465832036786906117260158783520751516284225540265170483304226143974286933061690897968482590125458327168226458066526769958652682272807075781391858178889652208164348344825993266043367660176999612831860788386150279465955131156552036093988180612138558600301435694527224206344631797460594682573103790084024432438465657245014402821885252470935190620929023136493273497565513958720559654228749774011413346962715422845862377387538230483865688976461927383814900140767310446640259899490222221765904339901886018566526485061799702356193897017860040811889729918311021171229845901641921068884387121855646124960798722908519296819372388642614839657382291123125024186649353143970137428531926649875337218940694281434118520158014123344828015051399694290153483077644569099073152433278288269864602789864321139083506217095002597389863554277196742822248757586765752344220207573630569498825087968928162753848863396909959826280956121450994871701244516461260379029309120889086942028510640182154399457156805941872748998094254742173582401063677404595741785160829230135358081840096996372524230560855903700624271243416909004153690105933983835777939410970027753472000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\n"}︡{"done":true}
︠c48a5c34-a19a-4c46-8a4f-76ab5e22c043s︠


factor(53463463343461346346777145742734161344763463467374445547745746734673475473253416314643631463454774274575686)
︡a3fc05b8-7eca-43dc-9c29-f3ac4ca24a91︡{"stderr":":1: RuntimeWarning: cypari2 leaked 939304 bytes on the PARI stack\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"/ext/sage/10.4/src/sage/arith/misc.py\", line 2711, in factor\n    return m(proof=proof, algorithm=algorithm, int_=int_,\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File \"sage/rings/integer.pyx\", line 4026, in sage.rings.integer.Integer.factor\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint_pari.pyx\", line 73, in sage.rings.factorint_pari.factor_using_pari\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4364, in cypari2.gen.Gen.factor\n    sig_on()\nKeyboardInterrupt\n"}︡{"done":true}
︠0ddaa4ec-00ce-4cbb-969a-30b68d5175f3s︠


a = 10
print(a)
a
a = "string"
a

str = "hello world"
str
str = 'alma'
str



︡fd05feb0-4400-40c8-95da-9b175aed4ac4︡{"stdout":"10\n"}︡{"stdout":"10\n"}︡{"stdout":"'string'\n"}︡{"stdout":"'hello world'\n"}︡{"stdout":"'alma'\n"}︡{"done":true}
︠f7f5592f-fe47-4f20-9016-cc48f667b245︠

L = [1, 3, 5]
L
L2 = [1..10]
L2
L3 = [x for x in [1..10] if x % 2 == 0] # filter
L3


︡4c53bbc2-b027-4820-8b07-a2f3dab4c310︡{"stdout":"[1, 3, 5]\n"}︡{"stdout":"[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\n"}︡{"stdout":"[2, 4, 6, 8, 10]\n"}︡{"done":true}
︠dc6defd5-5bc6-4ac2-918a-7984897cdff8s︠





# fsor02

# fel1
# Írassuk ki illetve tároljuk listában az első 100 db köbszámot.

L = [x^3 for x in [1..100]]
L

︡21dd005e-9c5c-43d5-be55-fecdf5b5c2ff︡{"stdout":"[1, 8, 27, 64, 125, 216, 343, 512, 729, 1000, 1331, 1728, 2197, 2744, 3375, 4096, 4913, 5832, 6859, 8000, 9261, 10648, 12167, 13824, 15625, 17576, 19683, 21952, 24389, 27000, 29791, 32768, 35937, 39304, 42875, 46656, 50653, 54872, 59319, 64000, 68921, 74088, 79507, 85184, 91125, 97336, 103823, 110592, 117649, 125000, 132651, 140608, 148877, 157464, 166375, 175616, 185193, 195112, 205379, 216000, 226981, 238328, 250047, 262144, 274625, 287496, 300763, 314432, 328509, 343000, 357911, 373248, 389017, 405224, 421875, 438976, 456533, 474552, 493039, 512000, 531441, 551368, 571787, 592704, 614125, 636056, 658503, 681472, 704969, 729000, 753571, 778688, 804357, 830584, 857375, 884736, 912673, 941192, 970299, 1000000]\n"}︡{"done":true}
︠c298bbac-8d9e-4de2-96a9-683a19e898ads︠

# fel2
# Írassuk ki illetve tároljuk listában az első 100 db természetes szám közül a 3-mal oszthatóak köbét.

L = [x^3 for x in [1..100] if x % 3 == 0]
L
︡1998bcf4-e51f-4b2f-9c53-eba69344ebe0︡{"stdout":"[27, 216, 729, 1728, 3375, 5832, 9261, 13824, 19683, 27000, 35937, 46656, 59319, 74088, 91125, 110592, 132651, 157464, 185193, 216000, 250047, 287496, 328509, 373248, 421875, 474552, 531441, 592704, 658503, 729000, 804357, 884736, 970299]\n"}︡{"done":true}
︠41d1dd1f-e5ed-4624-9e6f-b83d2206d074s︠

reset('str')

︡8421eda1-cd35-4d1a-8794-b0846738982e︡{"done":true}
︠37584294-0558-41e5-8e78-738403df397d︠

# sztring


x = 3
if x % 2 == 0:
    print("paros")
else:
    print("paratlan")
    print("a")


for i in [1..10]:
    print("i=" + str(i))


︡86f7e9b5-da38-4c8b-a445-1b85a9d0b950︡{"stdout":"paratlan\na\n"}︡{"stdout":"i=1\ni=2\ni=3\ni=4\ni=5\ni=6\ni=7\ni=8\ni=9\ni=10\n"}︡{"done":true}
︠cd8076da-6a4f-4454-b2b5-78793d444bbas︠

x = 10
while x > 5:
    x -= 1
    print("x = ", x)

︡130943b1-713d-49eb-965a-6d2c741ddca5︡{"stdout":"x =  9\nx =  8\nx =  7\nx =  6\nx =  5\n"}︡{"done":true}
︠05e9a16a-cebb-48dc-a4b8-9a6439b848c5︠


ch = 'A'
ch

# s = ch + ch
s = "alma"
print("s = ", s)
print("len(s) = ", len(s))
print("s[0] = "  , s[0])

︡5e16aa89-f7b7-47f9-a883-c054fd2d066f︡{"stdout":"'A'\n"}︡{"stdout":"s =  alma\n"}︡{"stdout":"len(s) =  4\n"}︡{"stdout":"s[0] =  a\n"}︡{"done":true}
︠241ccd8b-ac68-40b8-988d-cbabca163a88s︠



# fel3
# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring egy olyan másolatával, ahol a páros indexű karakterek duplán szerepelnek. Például az alma sztringre a helyes eredmény aalmma.


s = "alma"
res = ""

for idx,ch in enumerate(s):
    #print(idx)
    #print(ch)
    if idx % 2 == 0:
        res += ch + ch
    else:
        res += ch

print(res)
︡987f203e-d04e-4958-8ad2-588584d11609︡{"stdout":"aalmma\n"}︡{"done":true}
︠08085afc-561b-4210-9a78-5772b418b5b6s︠

s = "alma"
res = ""

for idx,ch in enumerate(s):
    #print(idx)
    #print(ch)
    if idx % 2 == 0:
        res += ch
    res += ch

print(res)
︡a3fda198-2569-404f-a30a-3a74fb1868af︡{"stdout":"aalmma\n"}︡{"done":true}
︠7acf732e-09ca-467a-ae37-126ec42b9963s︠

s = "alma"
res = ""

for idx in [0..len(s)-1]:
    #print(idx)
    #print(ch)
    if idx % 2 == 0:
        res += s[idx]
    res += s[idx]

print(res)
︡8149a782-55bc-4db0-b5de-c094c2d7625d︡{"stdout":"aalmma\n"}︡{"done":true}
︠8e69ec33-9613-4739-ad24-950ced1a5d9a︠



s = ""
s += 'a'
s += 'a'
s += 'l'
s += 'm'
...

# 'a', 'aa', 'aal', 'aalm', ...



︡f333d143-14f7-4bbe-b1ae-3fa2cd1124f8︡
︠0c7ff727-fe0d-4a68-927b-29b2c9d4a862s︠


s = "alma"
res = []

for idx in [0..len(s)-1]:
    #print(idx)
    #print(ch)
    if idx % 2 == 0:
        res.append(s[idx])
    res.append(s[idx])
res_str = "".join(res)

print(res_str)
︡d05156e1-a554-4f3b-b49f-cd3557d20bbc︡{"stdout":"aalmma\n"}︡{"done":true}
︠d94a83f6-4de9-4b4b-bf00-033e2a5fe4a4s︠


def foo(x, y):
    x = 10
    y += 20 + x
    print(x)
    print(y)
    return y

z = foo(1, 2)
z
︡b1c24d0b-07dc-4bfc-b596-830dd5378850︡{"stdout":"10\n32\n"}︡{"stdout":"32\n"}︡{"done":true}
︠b7e9eb4b-1797-475a-878a-f523299a6bc0s︠

def sol3(s):
    res = []

    for idx in [0..len(s)-1]:
        #print(idx)
        #print(ch)
        if idx % 2 == 0:
            res.append(s[idx])
        res.append(s[idx])
    res_str = "".join(res)

    #print(res_str)
    return res_str


sol3("almakorte")
︡9eafa71b-ec68-4b55-8751-d652c0608ed6︡{"stdout":"'aalmmakkorrtee'\n"}︡{"done":true}
︠4c2c0ad1-af8a-4be5-8f66-a3e8380d903cs︠

# fel4
# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring Mocking Spongebob Squarepants egy véletlenszerű példányával. Írja meg a függvény olyan változatát is, amely garantálja, hogy a mondatkezdő betű mindig nagybetű.


def Mocking_Spongebob(s):
    res = []

    for ch in s:
        r = randint(1, 2)
        if r == 1:
            res.append(ch.upper())
        else:
            res.append(ch.lower())

    return "".join(res)

Mocking_Spongebob("helloworld")
Mocking_Spongebob("helloworld")
Mocking_Spongebob("helloworld")

︡4f51d421-0fcd-48c4-a321-0c3f5a85a318︡{"stdout":"'HElLOWorld'\n"}︡{"stdout":"'HElLOwORLD'\n"}︡{"stdout":"'HEllOworld'\n"}︡{"done":true}
︠8fb9c440-f479-4f25-bcc4-4635b4fd52ces︠

def Mocking_Spongebob_b(s):
    res = []

    for ch in s:
        r = randint(1, 2)
        if r == 1:
            res.append(ch.upper())
        else:
            res.append(ch.lower())

    res[0] = res[0].upper()
    return "".join(res)

Mocking_Spongebob_b("helloworld")
Mocking_Spongebob_b("helloworld")
Mocking_Spongebob_b("helloworld")

︡f0119be7-b9b0-4dfe-8fe8-1c6e65aa617a︡{"stdout":"'HELlOWoRlD'\n"}︡{"stdout":"'HElLOwORLD'\n"}︡{"stdout":"'HeLLOWOrLd'\n"}︡{"done":true}
︠3e753a1d-01b1-4c21-a596-f7bb81ca3818s︠



randint(1, 3)
︡3ad1da5e-ab51-4331-88ec-80d6a4a41657︡{"stdout":"2\n"}︡{"done":true}
︠4f50aa1b-3ebc-4f45-a569-76dbc0259af5s︠


'A'.lower()
'a'.upper()
︡7810e8ef-d884-4fc9-b53f-d5069089f5c2︡{"stdout":"'a'\n"}︡{"stdout":"'A'\n"}︡{"done":true}
︠9438d6f7-0664-4275-ad56-dd27827ddeb6︠









