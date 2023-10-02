# blocks until kafka is reachable

kafka-topics --bootstrap-server localhost:9092 --list

echo -e 'Creating kafka topics'
kafka-topics --bootstrap-server localhost:9092 --create --if-not-exists --topic stockPrices --replication-factor 1 --partitions 1
kafka-topics --bootstrap-server localhost:9092 --create --if-not-exists --topic redditComments --replication-factor 1 --partitions 1
kafka-topics --bootstrap-server localhost:9092 --create --if-not-exists --topic redditSubmissions --replication-factor 1 --partitions 1

echo -e 'Successfully created the following topics:'
kafka-topics --bootstrap-server localhost:9092 --list
