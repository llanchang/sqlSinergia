--marca
select * from tmarca;
insert into tmarca( descripcion) values('NIKE');
insert into tmarca( descripcion) values('POLO');
insert into tmarca( descripcion) values('ADIDAS');
insert into tmarca( descripcion) values('LACOSTE');
 
--categoria

select * from categoria;
insert into tcategoria( descripcion) values('ZAPATOS');   
insert into tcategoria( descripcion) values('CAMISAS');
insert into tcategoria( descripcion) values('PANTALONES');

--tproveedor

select * from tproveedor;
insert into tproveedor( nombre, direccion) values('CAMISAS EL', '9 de octube y malecon');
insert into tproveedor( nombre, direccion) values('Kao Sports', '6 de ENERO y alpallana');
insert into tproveedor( nombre, direccion) values('El Rosado', 'Milagro');
insert into tproveedor( nombre, direccion) values('Tia', 'Loja y quisquis');
insert into tproveedor( nombre, direccion) values('RM', 'Quito y colon');


--tproducto
select * from tproducto;

insert into tproducto 
				values(1,'zapatos', '40',5,4,1,3,1);


insert into tproducto
values(2,'camisas','M',3,6,1,4,3);

--acualizando
update  tproducto 
set descripcion = 'cambie el dato'
where id =5;

