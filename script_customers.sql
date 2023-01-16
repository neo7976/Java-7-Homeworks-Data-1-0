create schema homework2;

create table homework2.CUSTOMERS
(
    id           int auto_increment primary key,
    name         char(20) not null check ( name != ''),
    surname      char(20) not null check ( surname != ''),
    age          smallint check ( age > 0),
    phone_number char(10) check ( phone_number != '')
);


insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Иван', 'Корнеев', 24, '9857851279');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('алексей', 'Захаров', 36, '9857981279');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Петр', 'Грачев', 18, '9898851279');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Алексей', 'Родионов', 27, '9857851479');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Ольга', 'Алексеева', 74, '9857851285');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Светлана', 'Васильева', 25, '9851051279');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Николай', 'Шишкин', 15, '9857851479');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Станислав', 'Яковлев', 16, '9857861279');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Владислав', 'Грачев', 34, '9857852679');
insert into homework2.CUSTOMERS(name, surname, age, phone_number)
values ('Игорь', 'Козлов', 28, '9857851256');



