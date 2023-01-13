create table homework2.PRODUCT(
    id int auto_increment,
    product char(25) primary key,

    foreign key(product) references homework2.ORDERS(product_name)
);