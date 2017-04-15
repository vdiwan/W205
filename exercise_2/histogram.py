#histogram.py
import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

if len(sys.argv) != 3:
    print "Error! Too many or too few arguments!"
    exit(1)

conn = psycopg2.connect(database ="tcount", user ="postgres", password ="pass", host = "localhost", port ="5432")
cur = conn.cursor()


if len(sys.argv) == 3:
    lowerlimit = sys.argv[1]
    upperlimit = sys.argv[2]

    cur.execute("SELECT word, count from tweetwordcount WHERE count between %s and %s order by 1", (lowerlimit,upperlimit,))
    records = cur.fetchall()

    if len(records) == 0:
        print "Sorry, no word found with counts within the given limits!"
        exit(1)

    for rec in records:
        print  rec[0], ":", rec[1]

    conn.close()
    exit(1) 


