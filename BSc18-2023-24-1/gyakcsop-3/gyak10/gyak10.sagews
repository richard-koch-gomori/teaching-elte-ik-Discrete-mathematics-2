︠4d3fc205-4601-4a51-94e1-7f746f394271︠
# fel 2
# Végezze el az 5 + 4 és 5 / 4 műveleteket Z7-ben.

a = GF(7)(5)
b = GF(7)(4)

a
b
a + b
a / b

︡d821470b-8d3c-463c-8e4c-9e2f7a3f0522︡{"stdout":"5\n"}︡{"stdout":"4\n"}︡{"stdout":"2\n"}︡{"stdout":"3\n"}︡{"done":true}
︠64b69914-1cba-418a-bbc1-36b00dc2bc5e︠

a = GF(6)(5)

︡f1cc9098-0bc4-4726-90b5-754c1380050c︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/structure/factory.pyx\", line 371, in sage.structure.factory.UniqueFactory.__call__\n    return self.get_object(version, key, kwds)\n  File \"sage/structure/factory.pyx\", line 415, in sage.structure.factory.UniqueFactory.get_object\n    obj = self.create_object(version, key, **extra_args)\n  File \"/ext/sage/10.1/src/sage/rings/finite_rings/finite_field_constructor.py\", line 760, in create_object\n    raise ValueError(\"the order of a finite field must be a prime power\")\nValueError: the order of a finite field must be a prime power\n"}︡{"done":true}
︠b51bc1c3-132d-4b77-b09f-55453fab761f︠

# fel 3
# Legyenek p(x) = 5x^4 + x^3 + 4x^2 + 6 és q(x) = 5x^2 + 1 Z7 feletti polinomok. Számítsa ki p 0, 2 és 1000 helyen vett helyettesítési értékét. Mennyi lesz p + q?

p = GF(7)['x'](5*x^4 + x^3 + 4*x^2 + 6)
print(p)
q = GF(7)['x'](5*x^2 + 1)
print(q)

︡9f737e29-7c1e-41b3-b643-dab934e96af7︡{"stdout":"5*x^4 + x^3 + 4*x^2 + 6\n"}︡{"stdout":"5*x^2 + 1\n"}︡{"done":true}
︠c72b5e49-9963-45ef-8fd4-8c95b67a14b3︠

p(0)

︡0fab5cd2-8a0a-4f6f-9e5c-1790790a7820︡{"stdout":"6\n"}︡{"done":true}
︠dc91d3a9-4b9f-414b-a050-453aea9b63de︠

p(2)

︡8c5f668c-fc58-4780-a5cd-d20989a673f7︡{"stdout":"5\n"}︡{"done":true}
︠98acf256-8c78-49be-a0bd-f8efd4d75c34︠

p(1000)

︡b49064eb-939f-46bc-b460-0cd8fd35cd27︡{"stdout":"0\n"}︡{"done":true}
︠3352e575-0f47-4e15-ad72-58382e7c3731︠

p+q

︡a2ce86a1-e979-41f2-b59f-39de8dc00648︡{"stdout":"5*x^4 + x^3 + 2*x^2\n"}︡{"done":true}
︠a96c935c-f61a-457f-81bc-d2819be064ec︠


# interpoláció

# fel 4
# Interpoláljon 3-adfokú valós együtthatós polinomot, amely átmegy a (0, 3), (1, 3), (4, 7), (-1, 0) pontokon.

p = RR['x'].lagrange_polynomial([(0, 3), (1, 3), (4, 7), (-1, 0)])
print(p)

︡96f5fa0d-8a3c-421c-ae5d-8de767e3c1a9︡{"stdout":"0.366666666666667*x^3 - 1.50000000000000*x^2 + 1.13333333333333*x + 3.00000000000000\n"}︡{"done":true}
︠312b0a68-e7c0-4a1f-96fb-355c763507a0︠

print(p(0))
print(p(1))
print(p(4))
print(p(-1))

︡312caa2c-75b5-45ca-9a2e-0d7262cf4979︡{"stdout":"3.00000000000000\n"}︡{"stdout":"3.00000000000000\n"}︡{"stdout":"7.00000000000000\n"}︡{"stdout":"5.55111512312578e-17\n"}︡{"done":true}
︠62148524-5eac-4c6b-9649-95d5e68d30b2︠


# fel 5
# Illesszünk Z5-beli interpolációs polinomot a (2, 4), (1, 0), (4, 3) pontokra.

p = GF(5)['x'].lagrange_polynomial([ (2, 4), (1, 0), (4, 3)])
print(p)

︡00f05469-92e1-459c-8633-a9f08fc68493︡{"stdout":"x^2 + x + 3\n"}︡{"done":true}
︠cdd0c5db-c548-4cca-bd7e-cf5ac04959cb︠
print(p(2))
print(p(1))
print(p(4))

︡c708d31e-f0d8-4037-89c4-11e7a664f5b5︡{"stdout":"4\n"}︡{"stdout":"0\n"}︡{"stdout":"3\n"}︡{"done":true}
︠68e898d9-3031-44c1-a31c-87c52001aaf8︠









