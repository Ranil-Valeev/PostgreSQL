CREATE TABLE person_discounts (
    id bigint PRIMARY KEY,
    person_id bigint,
    pizzeria_id bigint,
    constraint fk_person_discounts_person_id foreign key  (person_id) references person(id),
    constraint fk_person_discounts_pizzeria_id foreign key  (pizzeria_id) references pizzeria(id),
    discount numeric(8,1)
);

SELECT count(*) = 1 AS check
FROM pg_tables
WHERE tablename = 'person_discounts'