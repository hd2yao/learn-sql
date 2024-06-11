select
    name
from employee2
where id =
      (select
           e.id
       from employee2 e1
                left join employee2 e on e1.managerid = e.id
       group by e.id
       having count(1) >= 5);

select name
from employee2
where id =
      (select
          distinct managerid
       from employee2
       where managerid is not null
       group by managerid
       having count(1) >= 5);