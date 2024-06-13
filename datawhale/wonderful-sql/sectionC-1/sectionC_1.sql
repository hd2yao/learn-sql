select
    cdate as '比赛日期',
    sum(if(result = '胜', 1, 0)) as '胜',
    sum(if(result = '负', 1, 0)) as '负'
from row_col
group by cdate;