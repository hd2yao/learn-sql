-- 方法一：特殊解法（连续三次）
-- lag()、lead()
SELECT DISTINCT Num AS ConsecutiveNums
FROM (SELECT
             Num,
             LAG(Num, 1) OVER (ORDER BY Id) AS PrevNum,
             LEAD(Num, 1) OVER (ORDER BY Id) AS NextNum
      FROM Logs) as ConsecutiveNumsCTE
WHERE Num = PrevNum AND Num = NextNum;

-- join
SELECT
    DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1
         JOIN Logs l2 ON l1.Id = l2.Id - 1
         JOIN Logs l3 ON l2.Id = l3.Id - 1
WHERE
    l1.Num = l2.Num AND l2.Num = l3.Num;

-- 方法二：通用方法
select
    distinct num as ConsecutiveNums
from
    (
        select
           num,
           row_number() over(order by id) -
           ROW_NUMBER() over(partition by Num order by Id) as SerialNumberSubGroup
        from logs
    ) as Sub
group by
    num,
    SerialNumberSubGroup
having count( 1 ) >= 3;