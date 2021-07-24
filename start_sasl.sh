export KAFKA_OPTS=-Djava.security.auth.login.config=/Users/yongquanlim/Dev/kafka_2.13-2.8.0/config/kafka_server_jaas.conf

./bin/kafka-server-start.sh ./config/server.properties
