select
    name,
    max(case when subject = 'chinese' then score end) as chinese,
    min(case when subject = 'math' then score end) as math,
    sum(case when subject = 'english' then score end) as english
from score2
group by name;