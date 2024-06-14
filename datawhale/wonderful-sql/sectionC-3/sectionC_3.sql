-- 1.计算2021年每个月，每个用户连续登录的最多天数
select
    uid, count(*)
from
    (
        select
            t1.uid,
            date_sub(imp_date, interval row_day day ) as flag
        from
            (
                select *,
                       row_number() over (partition by uid order by imp_date) row_day
                from t_act_records
                order by uid
             ) t1
    ) t2
group by uid,flag;

-- 2.计算2021年每个月，连续2天都有登录的用户名单
select
    uid
from
    (
        select
            t1.uid,
            date_sub(imp_date, interval row_day day ) as flag
        from
            (
                select *,
                       row_number() over (partition by uid order by imp_date) row_day
                from t_act_records
                order by uid
            ) t1
    ) t2
group by uid,flag
having count(flag) >= 2