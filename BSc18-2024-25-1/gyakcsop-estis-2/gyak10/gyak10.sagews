︠59027fa7-2681-47f9-966f-551332d2e7dfs︠


# gyak10

# x3 − 15x2 + 84x − 170
p = ZZ['x'](x^3 - 15*x^2 + 84*x - 170)
print(p)
︡036442c9-e78f-4726-aa80-d03c262d7401︡{"stdout":"x^3 - 15*x^2 + 84*x - 170\n"}︡{"done":true}
︠55b64c12-fac5-4381-90a4-b7cb48c34644s︠

p(0)
︡f1cfceff-62e7-4afb-b4e0-be978e02a5db︡{"stdout":"-170\n"}︡{"done":true}
︠4bb51fa3-8755-4560-b78b-522af95c0d28s︠

p(2)
︡c9ee0271-1d24-4f0d-b361-68f6946bcac0︡{"stdout":"-54\n"}︡{"done":true}
︠cf11bb6d-cf38-46e5-b76c-1d47bd153fa7s︠


p(5)
︡5741ea3e-3c6e-49f0-bd99-7f290d1c8a62︡{"stdout":"0\n"}︡{"done":true}
︠d679f097-be00-4297-90df-ee5d078674b6s︠


factor(p)
︡8a0ad5fe-368c-400d-8c7b-d51d47d3acb8︡{"stdout":"(x - 5) * (x^2 - 10*x + 34)\n"}︡{"done":true}
︠ba164c0e-0116-4633-a34c-78d126fdf94fs︠

p.roots(CC)
︡88b5ea59-495e-4480-a4a4-4069623d970f︡{"stdout":"[(5.00000000000000, 1), (5.00000000000000 - 3.00000000000000*I, 1), (5.00000000000000 + 3.00000000000000*I, 1)]\n"}︡{"done":true}
︠6e5184ed-f64e-443a-90b9-9ee35c1ff147s︠


# fel1

# p(x) = 54x^4 + 36x^3 - 102x^2 - 72x - 12

q = ZZ['x'](54*x^4 + 36*x^3 - 102*x^2 - 72*x - 12)
q(2)
︡1fa0a94c-94df-46ca-b566-b9c2c8311a24︡{"stdout":"588\n"}︡{"done":true}
︠932f54db-6264-4df3-bf86-5b1fb1542bb4s︠

q(10)
︡8b68199e-2ae8-4466-8ffa-ab21c8ae2d2b︡{"stdout":"565068\n"}︡{"done":true}
︠5778c1e8-775d-4e9b-8550-0879affadd75s︠



q(0)
︡a89a5afe-47dd-4fc6-8566-b20c74a5c6e8︡{"stdout":"-12\n"}︡{"done":true}
︠31e06695-b41a-4e45-9b51-ae49b3dcac95s︠


a = GF(7)(4)
a
︡805f4aa2-ac49-4653-8442-5c24755de9c5︡{"stdout":"4\n"}︡{"done":true}
︠fa2f29f7-0d9f-4fe4-863b-71d2fb3c0bbbs︠

b = GF(7)(5)
b

︡8f800677-7203-4fc4-a427-a1aa263abd23︡{"stdout":"5\n"}︡{"done":true}
︠75e37b49-b680-4f7d-b136-9b7373789ce0s︠

a + b
︡93b179d7-a2ce-4c32-bb7c-56f0f53e39b0︡{"stdout":"2\n"}︡{"done":true}
︠94b6f686-498c-4ff0-84e9-d8efcbdf61d2s︠

GF(6)(2)
︡09b6d140-bcf1-4471-a004-bdc62db60bbb︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/structure/factory.pyx\", line 373, in sage.structure.factory.UniqueFactory.__call__\n    return self.get_object(version, key, kwds)\n  File \"sage/structure/factory.pyx\", line 417, in sage.structure.factory.UniqueFactory.get_object\n    obj = self.create_object(version, key, **extra_args)\n  File \"/ext/sage/10.4/src/sage/rings/finite_rings/finite_field_constructor.py\", line 760, in create_object\n    raise ValueError(\"the order of a finite field must be a prime power\")\nValueError: the order of a finite field must be a prime power\n"}︡{"done":true}
︠380c19cd-5288-4404-96ee-84abf421490bs︠

a - b
a * b
a / b
5 * a
︡fc353a8f-0122-438b-bdb3-dc77a7b092fc︡{"stdout":"6\n"}︡{"stdout":"6\n"}︡{"stdout":"5\n"}︡{"stdout":"6\n"}︡{"done":true}
︠6e9e22fd-37e7-4012-b4e2-5530abe65b79s︠


# fel2

# Végezze el az `5 + 4` és `5 / 4` műveleteket `Z7`-ben.

a = GF(7)(5)
b = GF(7)(4)
a + b
a / b
︡9e692391-b64c-4011-a94a-a3cd867fc682︡{"stdout":"2\n"}︡{"stdout":"3\n"}︡{"done":true}
︠eb8dd0e4-7d08-45ba-bed7-ca665be6ab0bs︠


110 % 7
︡445dd68c-7723-4b99-a671-21d2a465dbfb︡{"stdout":"5\n"}︡{"done":true}
︠e6cdd745-8666-4797-9ec5-37e7ff458d01︠

# fel3
# Legyenek `p(x) = 5x^4 + x^3 + 4x^2 + 6` és `q(x) = 5x^2 + 1` `Z7` feletti polinomok. Számítsa ki `p` `0`, `2` és `1000` helyen vett helyettesítési értékét. Mennyi lesz `p + q`?

p = GF(7)['x'](5*x^4 + x^3 + 4*x^2 + 6)
q = GF(7)['x'](5*x^2 + 1)

p
q
︡e60d870a-a460-4bb7-9e90-080914c6d8d0︡{"stdout":"5*x^4 + x^3 + 4*x^2 + 6\n"}︡{"stdout":"5*x^2 + 1\n"}︡{"done":true}
︠9c8dafef-52cd-48af-91bd-e99275743feas︠


p(0)
p(2)
p(1000)
︡7c3f1852-d251-4ef8-afeb-ff99437977ff︡{"stdout":"6\n"}︡{"stdout":"5\n"}︡{"stdout":"0\n"}︡{"done":true}
︠e62aad8c-9abe-4d30-98fa-f1f1dad54670s︠

p + q
︡686b9575-e0d3-48d8-b843-c58facf1b957︡{"stdout":"5*x^4 + x^3 + 2*x^2\n"}︡{"done":true}
︠8e8e032f-03e3-4a06-8b91-ddf3d5c88f3c︠


# fel5
# Illesszünk `Z5`-beli interpolációs polinomot a `(2, 4), (1, 0), (4, 3)` pontokra.

# interpoláció
p = GF(5)['x'].lagrange_polynomial([(2, 4), (1, 0), (4, 3)])
p
︡7d50f1ed-8d6a-4d8f-97fd-af170899ca63︡{"stdout":"x^2 + x + 3\n"}︡{"done":true}
︠ed54b52a-ca78-4df5-8cbe-774a4edbb597s︠

p(2)
p(1)
p(4)
︡e5855a50-3405-449f-bb96-46c8488cec4c︡{"stdout":"4\n"}︡{"stdout":"0\n"}︡{"stdout":"3\n"}︡{"done":true}
︠8515f506-6165-4c20-b03e-596a3f5a7e65s︠


# n = 4
# m = 3
# S = 5   "string" -> int

# p = 7

# Z7-beli maradékosztályok
# a1 = 3
# a2 = 4

# p = 3 * x^2 + 4 * x^1 + 5 (7)

p = GF(7)['x'](3 * x^2 + 4 * x^1 + 5)
p
︡1eb1b2d1-f30c-41a2-b2e0-d35b674cd5ef︡{"stdout":"3*x^2 + 4*x + 5\n"}︡{"done":true}
︠d38a2939-0620-4884-b365-bea85afa51bas︠

p(1)
p(2)
p(3)
p(4)
︡852ebc17-eb3b-40cf-8efc-d976009db4d0︡{"stdout":"5\n"}︡{"stdout":"4\n"}︡{"stdout":"2\n"}︡{"stdout":"6\n"}︡{"done":true}
︠8d56682a-6853-4fe6-bc68-6c6847c5855a︠

# az 1. embernek odaadjuk az (1, 5) titokrészletet
# az 2. embernek odaadjuk az (2, 4) titokrészletet
# az 3. embernek odaadjuk az (3, 2) titokrészletet
# az 4. embernek odaadjuk az (4, 6) titokrészletet



# visszakeresés
# tfh. pl. hogy 3 ember hozza az (1, 5), (3, 2) és (4, 6) titokrészleteket

# interpolálunk ezekre a pontokra egy polinomot

p = GF(7)['x'].lagrange_polynomial([(1, 5), (3, 2), (4, 6)])
p
p(0) # S = 5
︡66fe98a4-747a-46d1-b058-48946a6732ef︡{"stdout":"3*x^2 + 4*x + 5\n"}︡{"stdout":"5\n"}︡{"done":true}
︠dcb877d7-6cd5-4525-9f9f-d24a214db634s︠

p = GF(7)['x'].lagrange_polynomial([(1, 5), (3, 2)])
p
︡745a420d-dc57-4b89-8542-d41b5dd7e76a︡{"stdout":"2*x + 3\n"}︡{"done":true}
︠cfb8f52b-d918-4771-81a9-a18af8b64d12s︠

p = GF(7)['x'].lagrange_polynomial([(1, 5), (2, 4), (3, 2), (4, 6)])
p
︡974a29c9-ce01-4387-86df-056445a621b8︡{"stdout":"3*x^2 + 4*x + 5\n"}︡{"done":true}
︠c077abda-3ce8-4a37-b2c0-69314ca016f1︠









