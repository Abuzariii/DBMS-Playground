alter table pgtest
drop column testval

drop table pgtest;

create table products(
product_name varchar(200),
price integer
);

select * from products;

insert into products (product_name)
values ('lipstick');

insert into products (price)
values (200);

drop table products;

insert into products (product_name, price)
values ('lipgloss', 500);

select * from products;






-- CREATE TABLE pgtest(
-- testval VARCHAR(10)
-- );

-- INSERT INTO pgtest (testval)
-- VALUES ('Hello');

-- SELECT testval
-- FROM pgtest;