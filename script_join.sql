select product_name Продукт, name Покупатель
from homework2.ORDERS O
         join homework2.CUSTOMERS C on C.id = O.customers_id
where lower(name) = 'Алексей';

select name, product_name, date
from homework2.ORDERS O
         join homework2.CUSTOMERS C on C.id = O.customers_id
where lower(name) = 'Алексей';

select name, surname, age, product_name, amount
from homework2.CUSTOMERS
         left join ORDERS O on CUSTOMERS.id = O.customers_id
where age <= (select avg(age) from homework2.CUSTOMERS);


select name, surname, age, product_name, amount
from homework2.CUSTOMERS
        left join ORDERS O on CUSTOMERS.id = O.customers_id
where amount <= (select avg(amount) from homework2.ORDERS);

select product_name, count(*)
from homework2.CUSTOMERS
         join ORDERS O on CUSTOMERS.id = O.customers_id
where amount <= (select avg(amount) from homework2.ORDERS)
group by product_name
order by product_name;









