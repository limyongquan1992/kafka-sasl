export KAFKA_OPTS=-Djava.security.auth.login.config=$(pwd)/config/kafka_server_jaas.conf

echo "KAFKA_OPTS: "$KAFKA_OPTS

./bin/kafka-server-start.sh ./config/server.properties
