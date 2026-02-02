# !/bin/bash

# FUNCTION TO CREATE CONTAINER
run_docker_container () {
    # BUILD DOCKER IMAGE FROM Dockerfile
    docker build -t my-operating-system .
    # RUN DOCKER CONTAINER ON THE FLY
    docker run --rm -it -v builds:/app/builds my-operating-system
}

run_docker_container



