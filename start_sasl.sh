my_kafka_dir="/Users/yongquanlim/Dev/kafka_2.13-2.8.0"

export KAFKA_OPTS=-Djava.security.auth.login.config=$my_kafka_dir/config/kafka_server_jaas.conf

sed -i .bak "s|\${KAFKA_DIR}|$my_kafka_dir|g" config/server.properties
sed -i .bak "s|\${KAFKA_DIR}|$my_kafka_dir|g" config/ssl-consumer.properties
sed -i .bak "s|\${KAFKA_DIR}|$my_kafka_dir|g" config/ssl-producer.properties
sed -i .bak "s|\${KAFKA_DIR}|$my_kafka_dir|g" config/ssl-user-config.properties

echo "Starting Kafka at directory: "$my_kafka_dir

./bin/kafka-server-start.sh ./config/server.properties
