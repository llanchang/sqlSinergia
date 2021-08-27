create proc consultarProducto_SP
 @idProducto int
 as
   select tp.id, tp.descripcion ,tp.medidas, tp.cantidad, tp.precio, tm.descripcion as descripcion1, tc.descripcion as descripcion2, tpr.nombre
   from tproducto tp, tmarca tm, tcategoria tc, tproveedor tpr
   where tp.id =  @idProducto
   and tp.marcaid = tm.id
   and tp.categoriaid = tc.id
   and tp.proveedorid = tpr.id;   



create proc consultaProductoTodo_SP
 as
   select tp.id, tp.descripcion ,tp.medidas, tp.cantidad, tp.precio, tm.descripcion as descripcion1, tc.descripcion as descripcion2, tpr.nombre
   from tproducto tp, tmarca tm, tcategoria tc, tproveedor tpr
   where tp.marcaid = tm.id
   and tp.categoriaid = tc.id
   and tp.proveedorid = tpr.id;



create proc consultaCategoria_SP
 as
   select tc.*
   from tcategoria tc;


create proc consultaMarca_SP
 as
   select tm.*
   from tmarca tm;



create proc consultaProveedor_SP
 as
   select tp.*
   from tproveedor tp;