te table avg_survey_responses_by_state as
select 
state,
avg(Communication_with_Nurses_Performance_Rate) as Communication_with_Nurses_Performance_Rate,
avg(Communication_with_Doctors_Performance_Rate) as Communication_with_Doctors_Performance_Rate,
avg(Responsiveness_of_Hospital_Staff_Performance_Rate) as Responsiveness_of_Hospital_Staff_Performance_Rate,
avg(Pain_Management_Performance_Rate) as Pain_Management_Performance_Rate,
avg(Communication_about_Medicines_Performance_Rate) as Communication_about_Medicines_Performance_Rate,
avg(Cleanliness_and_Quietness_of_Hospital_Environment_Performance_Rate) as Cleanliness_and_Quietness_of_Hospital_Environment_Performance_Rate,
avg(Overall_Rating_of_Hospital_Baseline_Rate) as Overall_Rating_of_Hospital_Baseline_Rate,
avg(Overall_Rating_of_Hospital_Performance_Rate) as Overall_Rating_of_Hospital_Performance_Rate,
avg(HCAHPS_Base_Score) as HCAHPS_Base_Score,
avg(HCAHPS_Consistency_Score) as HCAHPS_Consistency_Score 
from survey_responses
group by state;
