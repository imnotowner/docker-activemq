FROM java:oracle-java8
MAINTAINER bn0ir <gblacknoir@gmail.com>

RUN cd /opt && curl http://apache-mirror.rbc.ru/pub/apache/activemq/5.11.1/apache-activemq-5.11.1-bin.tar.gz | tar -xz && mv apache-activemq-5.11.1 activemq

WORKDIR /data/broker

ADD ./run_mq.sh /opt/activemq/run_mq.sh

CMD ["/opt/activemq/run_mq.sh"]
