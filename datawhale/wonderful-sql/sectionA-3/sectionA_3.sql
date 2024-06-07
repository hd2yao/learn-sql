select
    *,
    rank() over (order by score_avg desc) rank1,
    dense_rank() over (order by score_avg desc) rank2,
    row_number() over (order by score_avg desc) rank3
from score;