insert into currency values (100, 'EUR', 0.85, '2022-01-01 13:29');
insert into currency values (100, 'EUR', 0.79, '2022-01-08 13:29');

SELECT COALESCE("user".name, 'not defined') name, 
	COALESCE("user".lastname, 'not defined') lastname, 
	COALESCE(cur.name, cur2.name) currency_name,
	CAST(COALESCE(cur.rate_to_usd, cur2.rate_to_usd) * b.money AS FLOAT) currency_in_usd
FROM balance b
FULL JOIN "user" ON "user".id = user_id
LEFT JOIN LATERAL
	(
		SELECT *
		FROM currency c
		WHERE id = currency_id
			AND c.updated < b.updated
		ORDER BY updated DESC
		LIMIT 1
	) cur ON cur.id = currency_id
LEFT JOIN LATERAL
	(
		SELECT *
		FROM currency AS c
		WHERE id = currency_id
			AND c.updated > b.updated
		ORDER BY updated
		LIMIT 1
	) cur2 ON cur2.id = currency_id
WHERE b.currency_id IN (SELECT DISTINCT id FROM currency)
ORDER BY 1 DESC, 2, 3;