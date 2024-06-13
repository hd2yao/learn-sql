select
    name,
    'chinese' as subject,
    chinese as score
from score22
union all
select
    name,
    'math' as subject,
    math as score
from score22
union all
select
    name,
    'english' as subject,
    english as score
from score22
order by name;
