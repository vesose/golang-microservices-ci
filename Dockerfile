FROM golang:alpine
RUN \
  apk add --no-cache make git gcc g++ protobuf && \
  export GO111MODULE=on && \
  go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
  go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest && \
  go get github.com/go-redis/redis/v8 && \
  go get github.com/nats-io/nats.go/@latest && \
  go get github.com/nats-io/nats-server/v2 && \
  mkdir /.cache && chmod -R 777 /.cache $GOPATH