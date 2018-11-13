FROM golang:1.10.2-alpine

ENV GOPATH /go
ENV PATH $PATH:/go/bin

RUN apk add --no-cache git bash && \
    go get -u github.com/golang/dep/cmd/dep && \
    go get -u github.com/golang/lint/golint

COPY . /go/src
WORKDIR /go/src/app

RUN dep ensure

CMD CGO_ENABLED=0 GOOS=linux go build -v -a -installsuffix cgo -o ./main ./main.go
