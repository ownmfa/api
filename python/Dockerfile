# Use Debian to avoid long compile times
FROM python:3-slim

RUN apt update && apt upgrade -y
RUN apt install -y --no-install-recommends git make
RUN pip list --outdated --format freeze|cut -d = -f 1|xargs -n 1 -r pip \
install -U
RUN git clone --depth=1 https://github.com/googleapis/googleapis.git \
/tmp/googleapis
RUN git clone --depth=1 https://github.com/grpc-ecosystem/grpc-gateway.git \
/tmp/grpc-gateway
RUN git clone --depth=1 https://github.com/envoyproxy/protoc-gen-validate.git \
/tmp/pgv

WORKDIR /api
