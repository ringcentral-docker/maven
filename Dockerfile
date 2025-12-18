# Parameterized Maven Dockerfile
#
# Build example:
#   docker build --build-arg JDK_TAG=21.0.9-noble --build-arg MAVEN_VERSION=3.9.12 .

ARG JDK_TAG=21.0.9-noble

FROM ghcr.io/ringcentral-docker/jdk:${JDK_TAG}

LABEL maintainer="john.lin@ringcentral.com"

ARG MAVEN_VERSION=3.9.12

ENV MAVEN_VERSION=${MAVEN_VERSION} \
    MAVEN_HOME=/usr/share/maven \
    MAVEN_CONFIG="$USER_HOME_DIR/.m2" \
    MAVEN_BASE_URL=https://downloads.apache.org/maven/maven-3

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget \
    && mkdir -p /usr/share/maven \
    && wget -q "${MAVEN_BASE_URL}/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz" -O /tmp/maven.tar.gz \
    && tar -xzf /tmp/maven.tar.gz -C /usr/share/maven --strip-components=1 \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
    && apt-get purge -y --auto-remove wget \
    && rm -rf /var/lib/apt/lists/* /tmp/*

COPY conf/settings.xml /usr/share/maven/conf/settings.xml

CMD ["mvn"]

RUN mvn -version
