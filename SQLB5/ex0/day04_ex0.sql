CREATE VIEW v_persons_female AS
    SELECT * FROM person
        WHERE person.gender = 'female';

CREATE VIEW v_persons_male AS
    SELECT * FROM person
        WHERE person.gender = 'male';

SELECT * FROM v_persons_female
SELECT * FROM v_persons_male
-- DROP VIEW v_persons_female, v_persons_male;