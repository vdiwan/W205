create table hospital_quality_ranking as
select
hospital_name,
compared_to_national,
count(compared_to_national) as log_count
from readmissions
where compared_to_national like ’Better%’
group by hospital_name, compared_to_national
order by log_count DESC;

create table hospital_quality_readmissions as
select
hospital_name,
cast(hospital_overall_rating as decimal(1,0)) rating
from hospitals
order by rating DESC;

create table hospital_variability as
select
step1.hospital_name,
(step2.rating) + (step1.log_count) as agg_score,
(step2.rating/10) + (step1.log_count/16) as weighted_avg_score
from q1_step1 step1 join q1_step2 step2 ON (step1.hospital_name = step2.hospital_name)
order by weighted_avg_score DESC
limit 10;

