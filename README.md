# Flipkartclone_maven

A Java web application (Maven, WAR packaging) deployed on Apache Tomcat, containerized with Docker and built/deployed via a Jenkins CI/CD pipeline.

## Tech Stack

- **Java / JSP** — application layer (`src/main/webapp`)
- **Maven** — build tool, packages the app as a `.war`
- **Apache Tomcat 9 (JDK 17)** — servlet container / runtime
- **Docker** — multi-stage build for a lightweight runtime image
- **Jenkins** — CI/CD pipeline (build image, run container)

## Project Structure

```
Flipkartclone_maven/
├── Dockerfile               # Multi-stage build: Maven build -> Tomcat runtime
├── pom.xml                  # Maven project descriptor
├── Jenkinsfile               # CI/CD pipeline (build & run Docker container)
├── azure-pipelines.yml       # K8s Deployment/Service manifest (optional/alt deploy path)
└── src/main/webapp/
    ├── index.jsp
    └── WEB-INF/web.xml
```

## Prerequisites

- JDK 17
- Maven 3.8+
- Docker
- (Optional) Jenkins with the Docker Pipeline plugin, and Docker installed on the agent

## Build Locally with Maven

```bash
mvn clean package
```

This produces `target/mavenproject01.war`.

## Run Locally with Docker

Build the image:

```bash
docker build -t flipkartclone-maven .
```

Run the container:

```bash
docker run -d --name flipkartclone-app -p 8081:8080 flipkartclone-maven
```

The app will be available at:

```
http://localhost:8081/
```

Stop and remove the container:

```bash
docker stop flipkartclone-app && docker rm flipkartclone-app
```

## How the Docker Build Works

The `Dockerfile` uses a two-stage build:

1. **Build stage** — `maven:3.8.5-openjdk-17-slim` compiles and packages the app into a WAR file.
2. **Runtime stage** — `tomcat:9.0-jdk17` copies the WAR in as `ROOT.war`, so the app is served from the root context path. The container exposes port `8080`.

## CI/CD with Jenkins

The included `Jenkinsfile` defines a pipeline that:

1. Checks out this repository
2. Builds the Docker image (Maven build happens inside the image build)
3. Optionally pushes the image to Docker Hub (disabled by default)
4. Stops/removes any previously running container with the same name
5. Runs a new container from the freshly built image
6. Verifies the app responds on the mapped port

### Setup

1. Create a new **Pipeline** job in Jenkins pointing at this repo, or use "Pipeline script from SCM" with the `Jenkinsfile` in the repo root.
2. Ensure the Jenkins agent has Docker installed and the Jenkins user has permission to run Docker commands.
3. (Optional) Add Docker Hub credentials in Jenkins (**Manage Jenkins → Credentials**) with the ID referenced in the `Jenkinsfile` (`dockerhub-creds`) if you want to enable image pushes.
4. Run the pipeline. By default the app will be reachable at `http://<jenkins-host>:8081/`.

### Configurable Pipeline Variables

| Variable | Default | Description |
|---|---|---|
| `IMAGE_NAME` | `flipkartclone-maven` | Docker image name |
| `CONTAINER_NAME` | `flipkartclone-app` | Name of the running container |
| `HOST_PORT` | `8081` | Host port mapped to the container |
| `CONTAINER_PORT` | `8080` | Port exposed by the container (Tomcat) |
| `PUSH_TO_REGISTRY` | *(unset)* | Set to `true` to enable the Docker Hub push stage |
| `DOCKERHUB_REPO` | `yourdockerhubuser/flipkartclone-maven` | Target repo for pushed images |
| `DOCKERHUB_CREDS` | `dockerhub-creds` | Jenkins credentials ID for Docker Hub |

## Kubernetes (Optional)

`azure-pipelines.yml` includes a sample Kubernetes `Deployment` and `Service` for running the container image in a cluster with a `LoadBalancer` service on port `8080`, if you'd rather deploy to Kubernetes instead of running a standalone container.

## License

No license specified.
