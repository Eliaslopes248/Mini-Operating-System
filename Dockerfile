FROM ubuntu:latest
# CHANGE CWD
WORKDIR /app
# COPY PROJECT
COPY . .
# UPDATE PACKAGE INDEX
RUN apt update
# DOWNLOAD gcc
RUN apt-get install -y build-essential
# RUNS CONTAINER TERMINAL (pair with -it)
CMD ["/bin/sh"]