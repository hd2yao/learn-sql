SELECT DISTINCT
    user_id,
    product_id
FROM
    (
        SELECT
            su.user1 as user_id,
            o.product_id
        FROM
            (
                SELECT
                    a.user_id AS user1,
                    b.user_id AS user2
                FROM
                    orders a
                        JOIN
                    orders b ON a.product_id = b.product_id AND a.user_id <> b.user_id
                GROUP BY
                    a.user_id, b.user_id
                HAVING
                        COUNT(DISTINCT a.product_id) >= 2
            ) su
                JOIN
            orders o ON su.user2 = o.user_id
                LEFT JOIN
            orders o1 ON su.user1 = o1.user_id AND o.product_id = o1.product_id
        where
            o1.product_id is null
    ) recommendations
ORDER BY
    user_id, product_id;