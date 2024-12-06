︠bbaf417b-9739-4d87-8317-85a4a490d47fs︠


# gyak10

p = ZZ['x']([1, 2, 3])
print(p)
︡fab0f65b-e801-426f-aabf-ff87ce0e41e5︡{"stdout":"3*x^2 + 2*x + 1\n"}︡{"done":true}
︠746d65a5-890e-49a0-b8a1-163f39192219s︠

p = ZZ['x'](3*x^2 + 2*x + 1)
print(p)
︡eb99274b-d443-4fdb-9e85-32407e0e230c︡{"stdout":"3*x^2 + 2*x + 1\n"}︡{"done":true}
︠51cb5b8e-20fc-4ef6-9007-141c033a2edes︠

# fsor07

# fel1

# 54x^4 + 36x^3 - 102x^2 - 72x - 12

p = ZZ['x'](54*x^4 + 36*x^3 - 102*x^2 - 72*x - 12)
print(p)
︡b592c41e-bd59-4d47-88b0-7061c9fe5083︡{"stdout":"54*x^4 + 36*x^3 - 102*x^2 - 72*x - 12\n"}︡{"done":true}
︠de3e851d-b7b4-4dd1-8335-ed5dce7116d7s︠

p(1)
︡b9daea62-9d44-4adf-a346-0227b6ddb1fd︡{"stdout":"-96\n"}︡{"done":true}
︠0343054a-c85d-4248-a3f7-9b8283fedc18s︠

p(2)
︡39d18330-1a7b-40b4-ae1e-6dc64d18d23c︡{"stdout":"588\n"}︡{"done":true}
︠35cf5949-480d-4d19-abfc-4f940a3a11b9s︠

p(0)
︡b78eb29f-e51d-4859-b4f3-af19f7cacf40︡{"stdout":"-12\n"}︡{"done":true}
︠62c01e84-a231-47db-ab19-7c9990310c70s︠

p.factor()
︡7f26c89d-02f7-4f1a-823c-f0eb8ffe89ae︡{"stdout":"2 * 3 * (3*x + 1)^2 * (x^2 - 2)"}︡{"stdout":"\n"}︡{"done":true}
︠81e35443-d0c6-494b-b0db-7c6bc8581d98s︠


p.roots(RR)
︡b5e3a10f-dacf-465f-b2cb-4c8ee0bfc3ef︡{"stdout":"[(-1.41421356237310, 1), (-0.333333333333333, 2), (1.41421356237310, 1)]\n"}︡{"done":true}
︠1e800e65-bd11-4421-8913-e44e05eb9659s︠

p.roots(QQ)
︡1def8ec7-8c88-45e6-9f96-3e591acd6370︡{"stdout":"[(-1/3, 2)]\n"}︡{"done":true}
︠359a5f47-ae9f-40fa-8e33-6fd70b2cf3b4s︠

p
︡928877b7-0733-4e51-b5ec-2f274c7a666c︡{"stdout":"54*x^4 + 36*x^3 - 102*x^2 - 72*x - 12\n"}︡{"done":true}
︠b6961e85-6300-43e4-b541-809c4c1b0f06s︠

c = p.coefficients()
︡96a02907-3bb6-4523-8238-6da5b9a901d7︡{"done":true}
︠d5cdd860-1048-45da-8ea9-c4015647ad7fs︠

c.append(100)

q = ZZ['x'](c)

q
︡84db7190-6cca-4275-bce5-bdad80379906︡{"stdout":"100*x^5 + 54*x^4 + 36*x^3 - 102*x^2 - 72*x - 12\n"}︡{"done":true}
︠ac96dcf5-43dc-4335-abbf-8d1a271dbe59s︠




# fel2
# Végezze el az 5 + 4 és 5 / 4 műveleteket Z7-ben.

a = GF(7)(4)
a
︡b7db28f5-f027-4e2d-85ce-c680aa6c0cc8︡{"stdout":"4\n"}︡{"done":true}
︠5403eceb-909e-4bdd-91b4-eeeaf5479fb5s︠

b = GF(7)(5)
b
︡c8762393-89b3-4293-a798-649a79b65368︡{"stdout":"5\n"}︡{"done":true}
︠c70c47fa-f2f1-4d46-8796-01aecda16717s︠

a + b
︡f14d154c-0e58-48c1-9f2b-8b7bc50b7449︡{"stdout":"2\n"}︡{"done":true}
︠e7132e5a-5a98-4e7c-87ff-bd5553648738s︠

a - b
︡7b301be7-ef59-4f0e-9ae0-ab5a4cc55bdb︡{"stdout":"6\n"}︡{"done":true}
︠3a3a1a88-fb56-47b7-9156-8b52f5189b8bs︠

a * b
︡d5186a16-53c4-4628-8b5c-81c9380521fa︡{"stdout":"6\n"}︡{"done":true}
︠96ca2453-241a-4ace-860c-290c543352ads︠

a / b
︡9df90f78-8ed2-460b-bfb5-aecc5606762f︡{"stdout":"5\n"}︡{"done":true}
︠cc329f15-9e92-4189-b111-8c1dd02c1c98s︠


c = GF(6)(1)
︡4488cfdd-261c-4b26-aa7a-3d61e539084b︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1250, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"sage/structure/factory.pyx\", line 373, in sage.structure.factory.UniqueFactory.__call__\n    return self.get_object(version, key, kwds)\n  File \"sage/structure/factory.pyx\", line 417, in sage.structure.factory.UniqueFactory.get_object\n    obj = self.create_object(version, key, **extra_args)\n  File \"/ext/sage/10.4/src/sage/rings/finite_rings/finite_field_constructor.py\", line 760, in create_object\n    raise ValueError(\"the order of a finite field must be a prime power\")\nValueError: the order of a finite field must be a prime power\n"}︡{"done":true}
︠d74bd820-7be5-492d-92da-bd8426deb8bes︠



p = GF(7)['x'](5*x^4 + x^3 + 4*x^2 + 6)
q = GF(7)['x'](5*x^2 + 1)
p
q
︡5bc7f57f-7908-4bd1-aaf5-93017a0143b6︡{"stdout":"5*x^4 + x^3 + 4*x^2 + 6\n"}︡{"stdout":"5*x^2 + 1\n"}︡{"done":true}
︠8509c39b-5e87-413c-9b05-1002a33ce08es︠

p + q
︡681ecf6a-4e42-4994-a45a-8f572f95628b︡{"stdout":"5*x^4 + x^3 + 2*x^2\n"}︡{"done":true}
︠54d881af-01d6-457d-9ea1-25215ca9931as︠

# fel5
# Illesszünk `Z5`-beli interpolációs polinomot a `(2, 4), (1, 0), (4, 3)` pontokra.

p = GF(5)['x'].lagrange_polynomial([(2, 4), (1, 0), (4, 3)])
p
︡9645972e-c8f1-4430-8c4a-349c4e6e6173︡{"stdout":"x^2 + x + 3\n"}︡{"done":true}
︠94b9431b-26cd-48eb-8b47-8bb3c0d0231fs︠

p(2)
︡960b91b5-f741-4c77-89c5-5c5dfc0219aa︡{"stdout":"4\n"}︡{"done":true}
︠046ee204-644d-409f-b1da-029bf95acd68s︠
p(1)
︡cd2162ce-764e-45c7-be4a-f2579c2a49ed︡{"stdout":"0\n"}︡{"done":true}
︠ed019e66-2983-4399-9282-8a1f4f0ac9a2s︠
p(4)
︡3a3aef68-72d4-48a6-bd8d-12f5fee6d7c3︡{"stdout":"3\n"}︡{"done":true}
︠22ca9210-e073-4786-bc4d-6b3554e4003fs︠



p = GF(7)['x'].lagrange_polynomial([(1, 5), (3, 1), (4, 4)])
p
︡fa6872c0-ffd2-4aad-9e28-1921ae014670︡{"stdout":"4*x^2 + 3*x + 5\n"}︡{"done":true}
︠afe39560-f5e6-4e8a-a0b5-786a9f661410s︠
p(0)
︡260f9b32-8da9-476f-90dc-70847161dc59︡{"stdout":"5\n"}︡{"done":true}
︠2ecbeead-0095-45cd-b349-fa7e89a405efs︠


q = GF(7)['x'].lagrange_polynomial([(1, 5), (3, 1)])
q
︡772f26fb-5a4a-4ec5-9af3-1c1c2e9c8cae︡{"stdout":"5*x\n"}︡{"done":true}
︠1d2dfc30-4945-42f5-bd6b-f2c54671a932︠









