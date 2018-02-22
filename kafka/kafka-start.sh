#!/bin/bash
export KAFKA_HOME="/kafka_2.11-1.0.0/"
exec $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties --override broker.id=$KAFKA_BROKER_ID  
