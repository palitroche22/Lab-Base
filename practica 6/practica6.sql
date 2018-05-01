SELECT venta.id_venta, Inventario.nombre_art, venta.total
FROM venta
INNER JOIN Inventario ON venta.articulo=inventario.modelo ;

SELECT venta.id_venta, venta.articulo, Inventario.precio
FROM venta
INNER JOIN Inventario ON venta.total=Inventario.modelo; 

SELECT venta.id_venta, Usuario.usr
FROM venta
INNER JOIN Usuario ON venta.vendedor=Usuario.id_usr; 

SELECT apartado.id_apartado, cliente.nombre ,apartado.total_abonado , apartado.total_a_pagar
FROM apartado
INNER JOIN cliente ON apartado.cliente=cliente.id_cliente; 

SELECT apartado.id_apartado, cliente.apellido ,apartado.total_abonado , apartado.total_a_pagar
FROM apartado
INNER JOIN cliente ON apartado.cliente=cliente.id_cliente; 

SELECT venta.id_venta, Inventario.nombre_art, Inventario.precio 
FROM venta 
CROSS JOIN Inventario;

SELECT venta.id_venta, Usuario.usr 
FROM venta 
CROSS JOIN Usuario;

SELECT apartado.id_apartado, cliente.nombre
FROM apartado 
CROSS JOIN cliente;

SELECT venta.id_venta, cliente.nombre 
FROM venta 
CROSS JOIN cliente;

SELECT venta.id_venta, Usuario.correo
FROM venta 
CROSS JOIN Usuario;







