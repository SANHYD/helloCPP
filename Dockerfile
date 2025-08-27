FROM ubuntu:latest
RUN apt-get update && apt-get -y install gcc libc-dev
COPY . /work/app1
WORKDIR /work/app1
RUN gcc -o app1 app1.cpp -lrt
ENTRYPOINT ["./app1"]
