-- Inserção de dados e queries

use ecommerce;
show tables;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into Clients(Fname, Minit, Lname, CPF, Address)
values
	('Maria','M','Silva',12346789,'rua silva de prata 29','Carangola - Cidade das flores'),
	('Matheus','O','Pimentel',987654321,'rua alemeda 289','Centro - Cidade das flores'),
    ('Ricardo','F','Silva',45678913,'avenida alemeda vinha 1009','Centro - Cidade das flores'),
    ('Julia','S','França',789123456,'rua lareijras 861','Centro - Cidade das flores'),
    ('Roberta','G','Assis',98745631,'Avenida de Koller 19','Centro - Cidade das flores'),
    ('Isabela','M','Cruz',654789123,'Rua Alameda das Flores 28','Centro - Cidade das flores')
;
desc product;
-- idProduct, Pname, Classification_kids, Category, Avaliação, Size
insert into Product(Pname, Classification_kids, Category, Avaliação, Size)
	values
		('Fone de ouvido',false,'Eletrônico','4',null),
        ('Barbie Elsa',true,'Brinquedos','3',null),
		('Body Carters',true,'Vestimenta','5',null),
        ('Microfone Vedo - Youtuber',false,'Eletrônico','4',null),
        ('Sofá retrátil',false,'Móveis','3','3x57x80'),
        ('Farinha de Arroz',false,'Alimentos','2',null),
        ('Fire Stick Amazon',false,'Eletrônico','3',null)
;

-- desc orders;
-- IdOrderClient,OrderStatus,OrderDescription,SendValue,PaymentCash

insert into Orders(IdOrderClient, OrderStatus, OrderDescription, SendValue, PaymentCash)
	values
    (1,default,'compra via aplicativo',null,1),
    (2,default,'compra via aplicativo',50,0),
    (3,'Confirmado',null,null,1),
    (4,default,'compra via web site',150,0)
;

desc productOrder;
-- idPOproduct,idPOorder,poQuantity,poStatus
insert into productOrder(idPOproduct,idPOorder,poQuantity,poStatus)
	values
    (1,1,2,null),
    (2,1,1,null),
    (3,2,1,null)
;

desc ProductStorage;
-- IdProdStorage,Location,Quantity
insert into ProductStorage (Location,Quantity)
	values
    ('Rio de Janeiro',1000),
    ('Rio de Janeiro',500),
    ('São Paulo',10),
    ('São Paulo',100),
    ('São Paulo',10),
    ('Brasília',60);

desc StorageLocation;
-- idLproduct,idLstorage,location
insert into StorageLocation(idLproduct,idLstorage,location)
	values
    (1,2,'RJ'),
    (1,6,'GO');

desc supplier;
-- IdSupplier,SocialName,CNPJ,Contact
insert into Supplier(IdSupplier,SocialName,CNPJ,Contact)
	values
    ('Almeida e filhos',123456789123456,'21985474'),
    ('Eletrônicos Silva',854519649143457,'21985484'),
    ('Eletrônicos Valma',934567893934695,'21975474');
    
desc productSupplier;
-- idPsSupplier,idPsProduct,Quantity
insert into ProductSupplier(idPsSupplier,idPsProduct,Quantity)
	values
    (1,1,500),
    (1,2,400),
    (2,4,633),
    (3,3,5),
    (2,5,10);
    
desc Seller;
-- IdSeller,SocialName,AbstName,CNPJ,CPF,Location,Contact
insert into Seller(SocialName,AbstName,CNPJ,CPF,Location,Contact)
	values
	('Tech eletronics',null,123456789456321,null,'Rio de Janeiro',219946287),
    ('Botique Durgas',null,null,123456783,'Rio de Janeiro',219567895),
    ('Kids World',null,456789123654485,null,'São Paulo',1198657484);
    
desc ProductSeller;
-- idPseller,idPproduct,prodQuantity
insert into ProductSeller(idPseller,idPproduct,prodQuantity)
	values
    (1,6,80),
    (2,7,10);




