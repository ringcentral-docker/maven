
# Maven

## Build Status

Maven 3 base on Oracle JDK 8

![Build Maven base on JDK 8](https://github.com/ringcentral-docker/maven/workflows/Build%20Maven%20base%20on%20JDK%208/badge.svg)

Maven 3 base on AdoptOpenJDK 11

![Build Maven base on JDK 11](https://github.com/ringcentral-docker/maven/workflows/Build%20Maven%20base%20on%20JDK%2011/badge.svg)

## Image description

* Base on the latest version of ringCentral/jdk Docker Image : [link](https://hub.docker.com/r/ringcentral/jdk/)

base on Oracle JDK 8
```bash
docker pull ringcentral/maven:3.6.3-jdk8u202
```

```bash
Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
Maven home: /usr/share/maven
Java version: 1.8.0_202, vendor: Oracle Corporation, runtime: /opt/java/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "5.3.0-1031-azure", arch: "amd64", family: "unix"
```

base on AdoptOpenJDK 11
```bash
docker pull ringcentral/maven:3.6.3-jdk11.0.7
```

```bash
Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
Maven home: /usr/share/maven
Java version: 11.0.7, vendor: AdoptOpenJDK, runtime: /opt/java
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "5.3.0-1031-azure", arch: "amd64", family: "unix"
```
## Get the Image

```bash
docker pull ringcentral/maven:latest
```

for more detail information please refer this url:

<https://github.com/ringcentral-docker/maven>

<https://hub.docker.com/r/ringcentral/maven>
