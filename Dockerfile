FROM java:8
MAINTAINER bn0ir <gblacknoir@gmail.com>

RUN cd /opt \
    && wget http://apache-mirror.rbc.ru/pub/apache/activemq/5.13.4/apache-activemq-5.13.4-bin.tar.gz \
    && echo "4529623280cd90c163d7d59dcf25b2f7bf1ea48f apache-activemq-5.13.4-bin.tar.gz" | sha1sum -c - \
    && tar -xzf apache-activemq-5.13.4-bin.tar.gz \
    && mv apache-activemq-5.13.4 activemq \
    && rm apache-activemq-5.13.4-bin.tar.gz

WORKDIR /data/broker

ADD ./run_mq.sh /opt/activemq/run_mq.sh

CMD ["/opt/activemq/run_mq.sh"]
