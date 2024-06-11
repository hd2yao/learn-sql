-- 方法一: left join
SELECT
    DISTINCT t1.id,
    CASE
        WHEN t1.p_id IS NULL THEN 'Root'
        WHEN t2.id IS NOT NULL THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM tree t1
LEFT JOIN tree t2 ON t1.id = t2.p_id;

-- 方法二：not in
SELECT
    t1.id,
    CASE
        WHEN t1.p_id IS NULL THEN 'Root'
        WHEN t1.id NOT IN (SELECT DISTINCT p_id FROM tree WHERE p_id IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END AS Type
FROM tree t1
ORDER BY t1.id;
