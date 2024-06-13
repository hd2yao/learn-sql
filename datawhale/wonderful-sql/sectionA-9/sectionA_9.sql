select
    Request_at as day,
    round(sum(IF(Status = 'completed', 0, 1)) / count(1), 2) as 'Cancellation Rate'
from trips t
left join users uc on t.Client_Id = uc.Users_Id
left join users ud on t.Driver_Id = ud.Users_Id
where uc.Banned = 'no' and ud.Banned = 'no'
  and t.Request_at between '2013-10-01' and '2013-10--3'
group by Request_at;