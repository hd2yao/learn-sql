-- a
select count(a.date)
from anchor_sales a
    left join (select date, sum(sales) * 0.9 as sales
               from anchor_sales
               group by date) as t
        on a.date = t.date
where a.sales >= t.sales;

-- b
select count(distinct anchor_name)
from anchor_sales a
    left join (select date, sum(sales) * 0.9 as sales
               from anchor_sales
               group by date) as t
        on a.date = t.date
where a.sales >= t.sales;




