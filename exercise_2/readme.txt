Exercise 2 Instructions

1. Connect to the EC2 instance and mount the external hard drive using this command:
mount -t ext4 /dev/xvdf /data

2. Start the postgres database engine by typing this command:
/data/start_postgres.sh

3. Switch to w205 user (optional step):
su - w205

4. Navigate to the directory home/w205/W205/exercise_2/extweetwordcount/
This directory has the twitter application files.

5. Run the application using the command below. This will run the Stream Parse topology end to end. It pulls Tweets, parses, and word counts them, looking at the count bolt for changes and updates Postgres:
sparse run

6. Navigate to the exercise_2 folder which is one level above the current folder.

7.  In this step, we execute simple scripts that query the database, and return specific results as
follows:

a. python finalresults.py
When passed a single word as an argument, finalresults.py returns the total number of word occurrences in the
stream.

b. python histogram.py k1 k2
The script gets two integers k1,k2 and returns all the words with a total number of occurrences greater than or
equal to k1, and less than or equal to k2.



