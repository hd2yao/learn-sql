-- 方法一：直接判断
SELECT
    CASE
        WHEN MOD(id, 2) = 1 AND id < (SELECT MAX(id) FROM seat) THEN id + 1
        WHEN MOD(id, 2) = 0 THEN id - 1
        ELSE id
     END AS id,
    student
FROM seat
ORDER BY id;

-- 方法二：使用 left join
select
    case
        when s1.id % 2 = 1 and s2.id is not null then s2.id
        when s1.id % 2 = 0 then s1.id - 1
        else s1.id
    end as id,
    s1.student
from seat s1
left join seat s2 on s1.id % 2 = 1 and s1.id + 1 = s2.id
order by id;

-- 方法二（调整 left join 连结条件）
select
    case
        when s2.id is null then s1.id
        else s2.id
    end as id,
    s1.student
from seat s1
         left join seat s2 on (s1.id % 2 =1 and s1.id + 1 = s2.id) or (s1.id % 2 = 0 and s1.id - 1 = s2.id)
order by id;