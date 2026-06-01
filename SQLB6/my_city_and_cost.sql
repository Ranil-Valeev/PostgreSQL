
DROP Table my_city;

CREATE TABLE my_city 
(
city_1 varchar not null,
city_2 varchar not null,
cost INTEGER
);

insert into my_city values ('a','b', 10);
insert into my_city values ('a','c', 15);
insert into my_city values ('a','d', 20);
insert into my_city values ('b','a', 10);
insert into my_city values ('b','c', 35);
insert into my_city values ('b','d', 25);
insert into my_city values ('c','a', 15);
insert into my_city values ('c','b', 35);
insert into my_city values ('c','d', 30);
insert into my_city values ('d','a', 20);
insert into my_city values ('d','b', 25);
insert into my_city values ('d','c', 30);
