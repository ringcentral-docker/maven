FROM ghcr.io/ringcentral-docker/jdk/jdk:8u432-noble
LABEL maintainer="john.lin@ringcentral.com"

ENV MAVEN_VERSION=3.8.8 \
    MAVEN_HOME=/usr/share/maven \
    MAVEN_CONFIG="$USER_HOME_DIR/.m2" \
    MAVEN_BASE_URL=https://downloads.apache.org/maven/maven-3
#==============
# Install and Setting Maven
#==============
RUN apt-get update \
    && apt-get install -y --no-install-recommends wget \
    && cd /tmp \
    && mkdir -p /usr/share/maven \
    && wget "${MAVEN_BASE_URL}/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz" 2>/dev/null \
    && tar -xzf "apache-maven-${MAVEN_VERSION}-bin.tar.gz" -C /usr/share/maven --strip-components=1 \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
    && apt-get purge -y --auto-remove wget \
    && rm -rf /var/lib/apt/lists/* /tmp/*

COPY conf/settings.xml /usr/share/maven/conf/settings.xml

#==============
# Show version
#==============
RUN mvn -version
