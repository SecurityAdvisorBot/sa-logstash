FROM docker.elastic.co/logstash/logstash:7.11.2
USER root
RUN yum update -y && yum install zip -y
RUN zip -q -d logstash-core/lib/jars/log4j-core-2.* org/apache/logging/log4j/core/lookup/JndiLookup.class
USER logstash
RUN bin/logstash-plugin install logstash-filter-json
RUN bin/logstash-plugin install logstash-input-s3-sns-sqs
