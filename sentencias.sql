-- 1
--insert into s_ord (id, customer_id,date_ordered, date_shipped, order_filled, payment_type, total, sales_rep_id) 


 select id, name, phone from s_customer where phone=:1


---lista de productos para slaes ----------------------------------------------
select p.id, p.name, p.short_desc, p.suggested_whlsl_price, i.amount_in_stock, w.city, w.state 
from s_product p, s_inventory i, s_warehouse w
where p.id=i.product_id and i.warehouse_id=w.id;

---- generar ordem 
insert into s_ord (customer_id, date_ordered, date_shipped, order_filled, payment_type, total, sales_rep_id) 
            values( :1,        , system         ,  )

insert into s_item  (ord_id, item_id, product_id,  price, quantity, quantity_shipped)
            values( )



------v RH empleado 

vista_inicial 
select DISTINCT e.id, e.last_name, e.first_name, e.start_date, e.comments, t.title
from s_emp e, s_emp_title et, s_title t
where e.id=et.emp_id and et.title= t.title;



vista de pagos 
select e.id,   consec, e.first_name, e.commission_pct, e.userid, e.start_date, e.comments, et.title, et.end_date
from s_emp e, s_emp_title et, s_title t
where e.id=et.emp_id and et.title= t.title;

select e.id, e.last_name, e.first_name, e.start_date, e.comments, et.title, 
where e.id=et.emp_id and et.title= t.title;