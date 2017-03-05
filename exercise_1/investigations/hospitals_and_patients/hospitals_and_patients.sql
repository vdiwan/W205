elect Provider_Number,
Hospital_Name,
City,
State,
HCAHPS_Base_Score,
HCAHPS_Consistency_Score,
(HCAHPS_Base_Score + HCAHPS_Consistency_Score) as  HCAHPS_Total_Score
from Survey_Responses
order by HCAHPS_Total_Score desc
limit 10;

