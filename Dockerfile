FROM opensearchproject/logstash-oss-with-opensearch-output-plugin:7.16.2
RUN bin/logstash-plugin install --preserve logstash-filter-json
RUN bin/logstash-plugin install --preserve logstash-input-s3-sns-sqs
RUN bin/ruby -S gem install redis
