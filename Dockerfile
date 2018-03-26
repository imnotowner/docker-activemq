FROM java:8
MAINTAINER bn0ir <gblacknoir@gmail.com>

RUN cd /opt \
    && wget http://apache-mirror.rbc.ru/pub/apache/activemq/5.15.3/apache-activemq-5.15.3-bin.tar.gz \
    && echo "b57be617eef979212a3da2762dc8c3a63d62fcd2 apache-activemq-5.15.3-bin.tar.gz" | sha1sum -c - \
    && tar -xzf apache-activemq-5.15.3-bin.tar.gz \
    && mv apache-activemq-5.15.3 activemq \
    && rm apache-activemq-5.15.3-bin.tar.gz

WORKDIR /data/broker

ADD ./run_mq.sh /opt/activemq/run_mq.sh

CMD ["/opt/activemq/run_mq.sh"]
