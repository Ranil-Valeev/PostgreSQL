WITH last_currency_rates AS (
    SELECT 
        id,
        name AS currency_name,
        rate_to_usd AS last_rate
    FROM currency c
    WHERE updated = (
        SELECT MAX(updated) 
        FROM currency 
        WHERE id = c.id
    )
)
SELECT
    COALESCE(u.name, 'not defined') AS name,
    COALESCE(u.lastname, 'not defined') AS lastname,
    b.type,
    SUM(b.money) AS volume,
    COALESCE(lcr.currency_name, 'not defined') AS currency_name,
    COALESCE(lcr.last_rate, 1) AS last_rate_to_usd,
    SUM(b.money) * COALESCE(lcr.last_rate, 1) AS total_volume_in_usd
FROM balance b
LEFT JOIN "user" u ON u.id = b.user_id
LEFT JOIN last_currency_rates lcr ON lcr.id = b.currency_id
GROUP BY u.id, u.name, u.lastname, b.type, lcr.currency_name, lcr.last_rate
ORDER BY name DESC, lastname, type;