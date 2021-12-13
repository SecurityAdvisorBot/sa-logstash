FROM docker.elastic.co/logstash/logstash:7.16.1

RUN bin/logstash-plugin install logstash-filter-json
RUN bin/logstash-plugin install logstash-input-s3-sns-sqs
