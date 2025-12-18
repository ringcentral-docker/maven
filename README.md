# Maven Docker Images

Multi-platform Maven Docker images based on RingCentral JDK.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Maven | JDK | Docker Hub | GitHub Package |
|------|-------|-----|------------|----------------|
| maven-jdk8 | 3.8.8 | 8 | `ringcentral/maven:3.8.8-jdk8u472-noble` | `ghcr.io/ringcentral-docker/maven:3.8.8-jdk8u472-noble` |
| maven-jdk11 | 3.9.12 | 11 | `ringcentral/maven:3.9.12-jdk11.0.29-noble` | `ghcr.io/ringcentral-docker/maven:3.9.12-jdk11.0.29-noble` |
| maven-jdk17 | 3.9.12 | 17 | `ringcentral/maven:3.9.12-jdk17.0.17-noble` | `ghcr.io/ringcentral-docker/maven:3.9.12-jdk17.0.17-noble` |
| maven-jdk21 | 3.9.12 | 21 | `ringcentral/maven:3.9.12-jdk21.0.9-noble` | `ghcr.io/ringcentral-docker/maven:3.9.12-jdk21.0.9-noble` |
| maven-jdk25 | 3.9.12 | 25 | `ringcentral/maven:3.9.12-jdk25.0.1-noble` | `ghcr.io/ringcentral-docker/maven:3.9.12-jdk25.0.1-noble` |

## Usage

```bash
docker pull ringcentral/maven:3.9.12-jdk21
docker run -it ringcentral/maven:3.9.12-jdk21 mvn -version
```

## Build Locally

```bash
docker build \
  --build-arg JDK_TAG=21.0.9-noble \
  --build-arg MAVEN_VERSION=3.9.12 \
  -t my-maven:3.9.12-jdk21 .
```

## License

MIT License
