
# Project Name

## Overview
Briefly describe what your project does, the technologies it uses, and its purpose. You can expand this section based on the specifics of your project.

## Prerequisites
Before running the project, ensure you have the following installed:

- **Docker Desktop**: Download and install from [Docker's official website](https://www.docker.com/products/docker-desktop).

## Getting Started
Follow these steps to set up and run the project.

### 1. Clone the Repository
```bash
git https://github.com/P72024/P7Project
cd P7Project
```

### 2. Start the Application
Ensure Docker Desktop is running, then execute the following command:

```bash
docker compose up
```

This command will build the Docker images (if not already built) and start the containers as defined in your `docker-compose.yml` file.

### 3. Access the Application
After the containers are up and running, you can access the application through your browser at:

```
http://localhost:8010/
```
or:
```
http://127.0.0.1:8010/
```

## Troubleshoot Docker
When Docker is running, use 
```
docker exec -it <container ID>  /bin/sh
```
You can find Container ID in Docker Desktop.
From here you can use commands such as:
```
ls <path>
```
or: 
```
cat <path>
```


## Additional Commands

- **Stop the containers**:

  ```bash
  docker compose down
  ```
- **Delete images**:

  ```bash
  docker image rm p7project-client
  docker image rm p7project-backend
  ```


- **View logs for a specific service**:

  ```bash
  docker compose logs <service-name>
  ```

## Troubleshooting
If you encounter any issues, ensure Docker Desktop is running and that no conflicting services are using the required ports. Check the logs for more detailed error messages:

```bash
docker compose logs
```


