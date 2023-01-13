select product_name Продукт, name Покупатель
from homework2.ORDERS O
         join homework2.CUSTOMERS C on C.id = O.customers_id
where lower(name) = 'Алексей';

select name, product_name ,date
from homework2.ORDERS O
         join homework2.CUSTOMERS C on C.id = O.customers_id
where lower(name) = 'Алексей';

