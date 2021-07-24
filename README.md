# kafka-sasl

# start zookeeper
./bin/zookeeper-server-start.sh ./config/zookeeper.properties

# start kafka server with sasl
./start_sasl.sh

# test produce on demo-topic
./bin/kafka-console-producer.sh --broker-list localhost:9094 --topic demo-topic --producer.config config/ssl-producer.properties

# test consume on demo-topic
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9094 --topic demo-topic --from-beginning --consumer.config config/ssl-consumer.properties

# Note
client credentials:\
cacert: config/truststore/ca-key\
truststore.jks: config/truststore/kafka.truststore.jks

# More info
https://medium.com/egen/securing-kafka-cluster-using-sasl-acl-and-ssl-dec15b439f9d
