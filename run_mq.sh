#!/bin/bash

cd /opt/activemq

java -Xms256M -Xmx256M \
	-Djava.util.logging.config.file=logging.properties \
	-Dcom.sun.management.jmxremote \
	-Dactivemq.classpath=/data/broker \
	-Dactivemq.home=/opt/activemq \
	-Dactivemq.base=/opt/activemq \
	-Dactivemq.conf=/data/broker \
	-Dactivemq.data=/data/broker \
	-jar /opt/activemq/bin/activemq.jar \
	start

