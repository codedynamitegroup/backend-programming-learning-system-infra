#local-confluent-kafka-cp-zookeeper-headless
kafka-topics --bootstrap-server kafka-broker-1:9092 --topic code-question-create-request-to-core-service --delete --if-exists
kafka-topics --bootstrap-server kafka-broker-1:9092 --topic code-question-create-response-from-core-service --delete --if-exists

kafka-topics --bootstrap-server kafka-broker-1:9092 --create --if-not-exists --topic code-question-create-request-to-core-service --replication-factor 3 --partitions 3
kafka-topics --bootstrap-server kafka-broker-1:9092 --create --if-not-exists --topic code-question-create-response-from-core-service --replication-factor 3 --partitions 3
