create schema homework;

create table homework.PERSONS
(
    name           char(20) not null check (name != ''),
    surname        char(20) not null check (surname != ''),
    age            int check (age > 0),
    phone_number   char(10) not null,
    city_of_living char(20) not null check (city_of_living != ''),

    primary key (name, surname, age)
);

insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Иван', 'Корнеев', 24, '9857851279', 'SPB');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Василий', 'Захаров', 36, '9857981279', 'MOSCOW');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Петр', 'Грачев', 18, '9898851279', 'SPB');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Федя', 'Родионов', 27, '9857851479', 'MOSCOW');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Ольга', 'Алексеева', 74, '9857851285', 'MOSCOW');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Светлана', 'Васильева', 25, '9851051279', 'MOSCOW');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Николай', 'Шишкин', 15, '9857851479', 'SPB');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Станислав', 'Яковлев', 16, '9857861279', 'MOSCOW');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Владислав', 'Грачев', 34, '9857852679', 'EKB');
insert into homework.PERSONS(name, surname, age, phone_number, city_of_living)
values ('Игорь', 'Козлов', 28, '9857851256', 'EKB');




