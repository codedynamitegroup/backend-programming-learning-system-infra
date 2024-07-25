#gke-confluent-kafka-cp-zookeeper-headless
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --list

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-request-to-core-service --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-response-from-core-service --delete --if-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-submission-update-request-to-core-service --delete --if-exists
      
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-request-code-assessment --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response-code-assessment --delete --if-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-request-to-core-service --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-request-to-course-service --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-request-to-code-assessment-service --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-service-user-request-to-auth-service --delete --if-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic any-services-user-response-to-auth-service --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-response-to-course-service --delete --if-exists
      
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-organization-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-organization-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-response --delete --if-exists
      
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-request --delete --if-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-response --delete --if-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-submission-sender-request --delete --if-exists

# Create topics
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-request-to-core-service --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-question-update-response-from-core-service --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-submission-update-request-to-core-service --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-request --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-request-code-assessment --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-question-response-code-assessment --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-request-to-core-service --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-request-to-course-service --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-request-to-code-assessment-service --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-service-user-request-to-auth-service --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic any-services-user-response-to-auth-service --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic auth-service-user-response-to-course-service --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic core-organization-request --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic course-organization-request --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic organization-response --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-request --create --partitions 2 --replication-factor 2 --if-not-exists
kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic calendar-event-update-response --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --topic code-submission-sender-request --create --partitions 2 --replication-factor 2 --if-not-exists

kafka-topics --zookeeper gke-confluent-kafka-cp-zookeeper-headless:2181 --list