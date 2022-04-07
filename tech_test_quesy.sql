# Queries
select 
date(t.open_time) as dt_report,
t.login_hash,
t.server_hash,
t.symbol,
sum(t.volume) over(partition by t.login_hash,
t.server_hash,
t.symbol order by date(t.open_time) between current_date and current_date-7 ) sum_volume_prev_7d,
sum(t.volume) over(partition by t.login_hash,
t.server_hash,
t.symbol order by date(t.open_time) desc)sum_volume_prev_all,
dense_rank() over (partition by t.login_hash,
t.symbol order by date(t.open_time) between current_date and current_date-7) rank_volume_symbol_prev_7d,
dense_rank() over (partition by t.login_hash order by date(t.open_time) between current_date and current_date-7,volume desc) rank_count_prev_7d

from trades t;

select sum(t.volume) as sum_volume_2020_08
from trades t
 group by t.login_hash,
t.server_hash,
t.symbol
WHERE  
date_part('year', t.open_time)=2020 and date_part('month', t.open_time)=8;


select date(t.open_time) as dt_report, t.*
,row_number() over(partition by  date(t.open_time),
 t.login_hash,
t.server_hash,
t.symbol order by desc ) rn
from users t
WHERE  
date_part('year', t.open_time)=2020 and date_part('month', t.open_time) in (6,7,8,9)
and t.enabled=1 order by rn desc;


