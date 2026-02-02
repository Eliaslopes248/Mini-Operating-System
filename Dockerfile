FROM alpine:latest
# CHANGE CWD
WORKDIR /app
# COPY PROJECT
COPY . .
# UPDATE PACKAGE INDEX
RUN apk update
# RUNS CONTAINER TERMINAL (pair with -it)
CMD ["/bin/sh"]