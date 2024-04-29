#local-confluent-kafka-cp-zookeeper-headless
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --list

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-request-to-core-service --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-response-from-core-service --delete --if-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-create-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-update-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-delete-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response --delete --if-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-create-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-create-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-response --delete --if-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-create-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-create-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-response --delete --if-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-create-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-update-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-delete-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-create-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-update-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-delete-response --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-response --delete --if-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-request --delete --if-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-response --delete --if-exists

# Create topics
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-request-to-core-service --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-create-response-from-core-service --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-create-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-update-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-delete-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-create-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-create-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-create-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-update-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-delete-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic user-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-create-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-update-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-delete-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-create-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-update-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-delete-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-response --create --partitions 3 --replication-factor 3 --if-not-exists

kafka-topics --zookeeper local-confluent-kafka-cp-zookeeper-headless:2181 --list