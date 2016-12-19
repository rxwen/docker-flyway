FROM anapsix/alpine-java
MAINTAINER Raymond Wen

ENV VERSION 4.0.3
RUN apk update && apk add ca-certificates openssl wget curl && update-ca-certificates
RUN curl https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/${VERSION}/flyway-commandline-${VERSION}.tar.gz | tar xv
ENV PATH=${PATH}:/flyway-${VERSION}

CMD ["flyway", "--help"]
