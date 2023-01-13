create table ORDERS
(
    id           int auto_increment primary key,
    date         timestamp not null,
    customers_id int,
    product_name char(100) check ( product_name != ''),
    amount       smallint check ( amount > 0),

    foreign key (customers_id) references homework2.CUSTOMERS (id)
);

insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.10 10.15.10', 7, 'Молоко', 4);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.10 10.16.10', 5, 'Хлеб', 1);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.11 10.17.15', 4, 'Сыр', 4);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.11 10.18.20', 1, 'Батончик', 10);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.11 10.19.10', 2, 'Сыр', 5);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.12 11.16.10', 8, 'Молоко', 4);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.12 12.17.10', 10, 'Хлеб', 2);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.12 13.54.25', 3, 'Кола', 10);
insert into homework2.ORDERS(date, customers_id, product_name, amount)
values ('2023.01.12 13.58.54', 7, 'Кола', 5);

update homework2.ORDERS
set date='2023.01.11 10.17.15',
    customers_id=4,
    product_name='Печеньки',
    amount=25
where homework2.ORDERS.id = 5;


