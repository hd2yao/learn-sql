select
    d.name,
    r.name,
    r.salary
from
    (select *,
            rank() over (partition by departmentid order by salary desc) rank_no
     from employee) as r
        left join department d on r.departmentid = d.id
where r.rank_no <= 3;