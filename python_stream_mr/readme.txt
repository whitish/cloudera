Run:

hadoop jar /usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming*.jar -input shakespeare -output mypythonoutput7 -file MyMapper.py -mapper MyMapper.py -file MyReducer.py -reducer MyReducer.py 
