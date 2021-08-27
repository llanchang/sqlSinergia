create trigger tr_productoHistorico
 on tproducto
   for update
    as
	  begin
	    set nocount on
	   insert into tproductohistorico 
	      (id, descripcion, medidas, cantidad, precio, marcaid, proveedorid,categoriaid)

		  select id, descripcion, medidas, cantidad, precio, marcaid, proveedorid,categoriaid from inserted

	  end 
  