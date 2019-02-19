FROM golang

ADD . /go/src/github.com/google/web-api-gateway

RUN go get github.com/google/web-api-gateway/server
RUN go install github.com/google/web-api-gateway/server
RUN go install github.com/google/web-api-gateway/setuptool
RUN go install github.com/google/web-api-gateway/connectiontest

ENTRYPOINT ["/go/bin/server"]

EXPOSE 443
