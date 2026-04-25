# Maven Docker Images

Multi-platform Maven Docker images based on RingCentral JDK.

## Supported Platforms

- linux/amd64
- linux/arm64

## Available Images

| Name | Maven | JDK | Docker Hub | GitHub Package |
|------|-------|-----|------------|----------------|
| maven-jdk8 | 3.8.9 | 8 | `ringcentral/maven:3.8.9-jdk8u482-noble` | `ghcr.io/ringcentral-docker/maven:3.8.9-jdk8u482-noble` |
| maven-jdk11 | 3.9.15 | 11 | `ringcentral/maven:3.9.15-jdk11.0.30-noble` | `ghcr.io/ringcentral-docker/maven:3.9.15-jdk11.0.30-noble` |
| maven-jdk17 | 3.9.15 | 17 | `ringcentral/maven:3.9.15-jdk17.0.18-noble` | `ghcr.io/ringcentral-docker/maven:3.9.15-jdk17.0.18-noble` |
| maven-jdk21 | 3.9.15 | 21 | `ringcentral/maven:3.9.15-jdk21.0.10-noble` | `ghcr.io/ringcentral-docker/maven:3.9.15-jdk21.0.10-noble` |
| maven-jdk25 | 3.9.15 | 25 | `ringcentral/maven:3.9.15-jdk25.0.2-noble` | `ghcr.io/ringcentral-docker/maven:3.9.15-jdk25.0.2-noble` |

## Usage

```bash
docker pull ringcentral/maven:3.9.15-jdk21
docker run -it ringcentral/maven:3.9.15-jdk21 mvn -version
```

## Build Locally

```bash
docker build \
  --build-arg JDK_TAG=21.0.10-noble \
  --build-arg MAVEN_VERSION=3.9.15 \
  -t my-maven:3.9.15-jdk21 .
```

## License

MIT License
