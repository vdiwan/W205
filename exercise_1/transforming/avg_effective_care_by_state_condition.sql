te table avg_effective_care_by_state_condition as
select 
State,
Condition,
Measure_Name,
avg(
case when score = 'Low (0 - 19,999 patients annually)' then 1
     when score = 'High (40,000 - 59,999 patients annually)' then 2
     when score = 'Very High (60,000+ patients annually)' then 3 
     else Score
end) as Score
from effective_care
group by State, Condition, Measure_Name
;

