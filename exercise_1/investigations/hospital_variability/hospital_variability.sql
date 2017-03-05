elect 
State,
avg(Hospital_overall_rating) as avg_Hos_OR,
max(Hospital_overall_rating) as max_Hos_OR,
min(Hospital_overall_rating) as min_Hos_OR,
stddev(Hospital_overall_rating) as Variability_OR
from hospitals
where Hospital_overall_rating != 'Not Available'
group by State
order by stddev(Hospital_overall_rating) desc
limit 10;
