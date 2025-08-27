FROM ubuntu:latest
RUN apt-get update && apt-get -y install gcc libc-dev
COPY . /work/app
WORKDIR /work/app
RUN gcc -o app app.cpp -lrt
ENTRYPOINT ["./app"]
