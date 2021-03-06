#!/bin/bash

#save my current directory
MY_DIR=$(pwd)

#creating staging directories
mkdir ~/sataging
mkdir ~/staging/exercise_1

#change to staging directory
cd ~/staging/exercise_1

# get file from data.medicare.gov
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/6c902f45-e28b-42f5-9f96-ae9d1e583472?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
#wget "$MY_URL" -O medicare_data.zip

#unzip the medicare data
#unzip medicare_data.zip


#create hdfs directory
hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -mkdir /user/w205/hospital_compare/measures
hdfs dfs -mkdir /user/w205/hospital_compare/survey_responses


##FILE 1 - hospitals.csv
#remove first line of file and rename
OLD_FILE="Hospital General Information.csv"
NEW_FILE="hospitals.csv"
tail -n+2 "$OLD_FILE" >"$NEW_FILE"
#Copy files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare/hospitals


##FILE 2 - hospitals.csv
#remove first line of filne and rename
OLD_FILE="Timely and Effective Care - Hospital.csv"
NEW_FILE="effective_care.csv"
tail -n+2 "$OLD_FILE" >"$NEW_FILE"
#Copy files to hdfs
hdfs dfs -put "$NEW_FILE" /user/w205/hospital_compare/effective_care


##File 3 - readmission.csv
#remove first line of filne and rename
OLD_FILE="Readmissions and Deaths - Hospital.csv"
NEW_FILE="readmissions.csv"
tail -n+2 "$OLD_FILE" >"$NEW_FILE"
#Copy files to hdfs
hdfs dfs -put "$NEW_FILE" /user/w205/hospital_compare/readmissions

##FILE 4 - measures.csv
#remove first line of filne and rename
OLD_FILE="Measure Dates.csv"
NEW_FILE="measures.csv"
tail -n+2 "$OLD_FILE" >"$NEW_FILE"
#Copy files to hdfs
hdfs dfs -put "$NEW_FILE" /user/w205/hospital_compare/measures

##FILE 5 - survey_responses.csv
#remove first line of filne and rename
OLD_FILE="hvbp_hcahps_11_10_2016.csv"
NEW_FILE="survey_responses.csv"
tail -n+2 "$OLD_FILE" >"$NEW_FILE"
#Copy files to hdfs
hdfs dfs -put "$NEW_FILE" /user/w205/hospital_compare/survey_responses

#change directory back to the original
cd $MY_CWD

#clean exit
exit

