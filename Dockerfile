FROM ubuntu:latest
RUN apt-get update && apt-get -y install gcc libc-dev
COPY . /work/app1
WORKDIR /work/app1
copy app.cpp app1.c
RUN gcc -o app1 app1.c -lrt
ENTRYPOINT ["./app1"]
