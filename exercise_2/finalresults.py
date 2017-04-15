#finalresults.py
import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

if len(sys.argv) > 2:
    print "Error! Too many arguments!"
    exit(1)

conn = psycopg2.connect(database ="tcount", user ="postgres", password ="pass", host = "localhost", port ="5432")
cur = conn.cursor()
    
    
if len(sys.argv) == 2:
    word = sys.argv[1].lower()
    
    cur.execute("SELECT word, count from tweetwordcount WHERE lower(word)=%s", (word,))
    records = cur.fetchall()
    
    if len(records) == 0:
	print "Sorry, the word  was not found in the tweet stream!"
 	exit(1)

    for rec in records:
        print "Total number of occurances of '", rec[0], "' are :", rec[1]
        
    conn.close()
    exit(1)


if len(sys.argv) == 1:
      
    cur.execute("SELECT lower(word) as word, count from tweetwordcount order by 1")
    records = cur.fetchall()
    for rec in records:
        print rec[0], ":", rec[1]
    conn.close()
    exit(1)


