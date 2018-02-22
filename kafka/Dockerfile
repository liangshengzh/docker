FROM java:openjdk-8-jre

MAINTAINER "liangsheng zhong"
RUN wget http://mirrors.shu.edu.cn/apache/kafka/1.0.0/kafka_2.11-1.0.0.tgz
RUN tar -xzf kafka_2.11-1.0.0.tgz
COPY  kafka-start.sh /bin/
COPY server.properties /kafka_2.11-1.0.0/config/server.properties
RUN chmod +x /bin/kafka-start.sh
RUN ls /bin/kafka-start.sh
CMD ["kafka-start.sh"]
