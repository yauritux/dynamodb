FROM lwieske/java-8 

MAINTAINER Yauri Attamimi <yauri.attamimi@bhinneka.com>

RUN mkdir /var/dynamodb_wd

RUN mkdir /usr/local/dynamodb

EXPOSE 8000

ADD dynamodb /usr/local/dynamodb

WORKDIR /usr/local/dynamodb

ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar", "-dbPath", "/var/dynamodb_local"]

CMD ["-port", "8000"]

VOLUME ["/var/dynamodb_local", "/var/dynamodb_wd"]
