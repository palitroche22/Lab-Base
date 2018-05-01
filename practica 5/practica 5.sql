select  precio from inventario where id_art = 1
select  precio from inventario where id_art = 2
select  precio from inventario where id_art = 3
select  precio from inventario where id_art = 4
select  precio from inventario where id_art = 5

select top 3  * from usuario where usr = 'alex2230';
select top 3  * from cliente where nombre = 'carlos';
select top 3  * from inventario where precio = 100;
select top 3  * from venta where id_venta = 1000;
select top 3  * from venta where vendedor = 3;

select Count (precio) from Inventario  where precio != 100 group by precio
select Count (precio) from Inventario  where precio = 100 group by precio
select Count (precio) from Inventario  where precio = 350 group by precio
select Count (precio) from Inventario  where precio = 200 group by precio
select Count (precio) from Inventario  where precio = 250 group by precio

SELECT COUNT(precio) Precio FROM Inventario GROUP BY precio HAVING COUNT(precio) > 0;
SELECT COUNT(precio) Precio FROM Inventario GROUP BY precio HAVING COUNT(precio) > 1;
SELECT COUNT(precio) Precio FROM Inventario GROUP BY precio HAVING COUNT(precio) > 5;
SELECT COUNT(correo) Correo FROM Usuario GROUP BY usr HAVING COUNT(correo) > 0;
SELECT COUNT(nombre) nombre FROM cliente GROUP BY nombre HAVING COUNT(nombre) > 1;


