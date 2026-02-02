# !/bin/bash

# FUNCTION TO CREATE CONTAINER
run_docker_container () {
    # IF BUILDS DIR DOESNT EXIST CREATE ONE
    if [ ! -d "./builds" ]; then
        echo "[WARNING] Missing Build Directory"
        echo "[PROC] Creates /builds ..."
        mkdir builds
    fi
    # BUILD DOCKER IMAGE FROM Dockerfile
    docker build -t my-operating-system .
    # RUN DOCKER CONTAINER ON THE FLY
    docker run --rm -it -v builds:/app/builds my-operating-system
}

run_docker_container



