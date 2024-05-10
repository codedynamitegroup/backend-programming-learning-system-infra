#gke-confluent-kafka-cp-zookeeper-headless
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --list

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-request-to-core-service --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-response-from-core-service --delete --if-exists
      
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response --delete --if-exists
      
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-user-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-user-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic user-response --delete --if-exists
      
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-organization-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-organization-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-response --delete --if-exists
      
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-response --delete --if-exists

# Create topics
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-request-to-core-service --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-response-from-core-service --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-user-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-user-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic user-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-organization-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-organization-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --list