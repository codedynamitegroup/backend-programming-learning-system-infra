#local-confluent-kafka-cp-zookeeper-headless
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-request-to-core-service --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-response-from-core-service --delete --if-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-request-to-core-service --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-response-from-core-service --create --partitions 3 --replication-factor 3 --if-not-exists