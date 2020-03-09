--INSERT INTO s_ord (id, customer_id,date_ordered, date_shipped, order_filled, payment_type, total, sales_rep_id) 
 SELECT id, name, phone FROM s_customer WHERE phone=:1


---lista de productos para slaes ----------------------------------------------
SELECT p.id, p.name, p.short_desc, p.suggested_whlsl_price, i.amount_in_stock, w.city, w.state 
FROM s_product p, s_inventory i, s_warehouse w
WHERE p.id=i.product_id AND i.warehouse_id=w.id;

---- generar ordem 
INSERT INTO s_ord (customer_id, date_ordered, date_shipped, order_filled, payment_type, total, sales_rep_id) 
            VALUES( :1,        , system         ,  )

INSERT INTO s_item  (ord_id, item_id, product_id,  price, quantity, quantity_shipped)
            VALUES( )



------v RH empleado 

vista_inicial 
SELECT DISTINCT e.id, e.last_name, e.first_name, e.start_date, e.comments, t.title
FROM s_emp e, s_emp_title et, s_title t
WHERE e.id=et.emp_id AND et.title= t.title;



vista de pagos 
SELECT e.id,   consec, e.first_name, e.commission_pct, e.userid, e.start_date, e.comments, et.title, et.end_date
FROM s_emp e, s_emp_title et, s_title t
WHERE e.id=et.emp_id AND et.title= t.title;

SELECT e.id, e.last_name, e.first_name, e.start_date, e.comments, et.title, 
WHERE e.id=et.emp_id AND et.title= t.title;

/* Representante de Ventas  */
select p.id as Codigo, p.name as Nombre, p.short_desc as Descripcion, 
    p.suggested_whlsl_price as Precio, i.amount_in_stock as Cantidad_Disponble,
    w.city as Ciudad, w.state as Estado 
    from s_product p, s_inventory i, s_warehouse w where p.id=i.product_id and i.warehouse_id=w.id

/* Administrador de Bodega  */
SELECT w.country AS Pais, w.state as Estado, r.name as Region, 
    w.address as Direccion, i.amount_in_stock as N_Stock, 
    i.reorder_point as Pto_Pedido, i.max_in_stock as Max_Stock, 
    i.out_of_stock_explanation as Agotado, i.restock_date as F_Reposicion
FROM s_warehouse w, s_region r, s_inventory i 
WHERE w.region_id = r.id AND i.warehouse_id = w.id;

/* Vicepresidente de RRHH   */


/* Administrador de Usuario */
--- crear el administrador ---
INSERT INTO s_title VALUES ('User administrator');
--- Registro de administrador ---
INSERT INTO s_emp VALUES (26,'Bautista','Oscar','obaut','03/03/08',null,2000,null);
SELECT count(*)
FROM s_emp;

