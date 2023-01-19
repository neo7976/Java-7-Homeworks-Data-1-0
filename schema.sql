create schema netology;
create table netology.cars
(
    id   int auto_increment primary key,
    name char(255)
);


insert into netology.cars(name) values ('BMW');
insert into netology.cars(name) values ('Audi');
insert into netology.cars(name) values ('VW');
