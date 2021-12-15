FROM opensearchproject/logstash-oss-with-opensearch-output-plugin:7.13.4
RUN bin/logstash-plugin install logstash-filter-json
RUN bin/logstash-plugin install logstash-input-s3-sns-sqs