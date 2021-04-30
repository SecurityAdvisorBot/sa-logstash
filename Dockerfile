FROM docker.elastic.co/logstash/logstash:7.11.2

RUN bin/logstash-plugin install logstash-filter-json
RUN bin/logstash-plugin install logstash-input-s3-sns-sqs