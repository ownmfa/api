# OwnMFA API

This repository contains the API
[Protobuf](https://developers.google.com/protocol-buffers/) and
[gRPC](https://grpc.io/) definitions for the
[OwnMFA](https://www.ownmfa.com/) Hermes platform. API design is based
on the Google [API Design Guide](https://cloud.google.com/apis/design).

## Getting Started

### Go

Documentation: https://pkg.go.dev/github.com/ownmfa/api/go

```
go get -u github.com/ownmfa/api/go
```

### Python

Documentation: https://pypi.org/project/ownmfa-api/

```
pip install ownmfa-api
```

## Building

These instructions require
[Docker](https://docs.docker.com/get-started/overview/) and
[Docker Compose](https://docs.docker.com/compose/) to be installed.

```
make
```