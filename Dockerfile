FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/chenweivip/zebra
COPY .. $GOPATH/src/github.com/chenweivip/zebra
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./zebra"]