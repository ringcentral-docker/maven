FROM ringcentral/jdk:11.0.15-alpine3.16.0
LABEL maintainer="john.lin@ringcentral.com"

ENV MAVEN_VERSION=3.6.3 \
    MAVEN_HOME=/usr/share/maven \
    MAVEN_CONFIG="$USER_HOME_DIR/.m2" \
    MAVEN_BASE_URL=https://downloads.apache.org/maven/maven-3
#==============
# Install and Setting Maven
#==============
RUN apk update \
    && apk add --no-cache --virtual=build-dependencies wget \
    && cd /tmp \
    && mkdir -p /usr/share/maven \
    && wget "${MAVEN_BASE_URL}/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz" 2>/dev/null \
    && tar -xzf "apache-maven-${MAVEN_VERSION}-bin.tar.gz" -C /usr/share/maven --strip-components=1 \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
    && apk del build-dependencies \
    && rm -rf /tmp/*

COPY settings.xml /usr/share/maven/conf/settings.xml

#==============
# Show version
#==============
RUN mvn -version
