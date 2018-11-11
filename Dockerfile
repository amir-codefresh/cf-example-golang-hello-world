FROM golang:1.7-alpine

RUN apk update && apk add curl git
RUN mkdir -p /go/src/github.com/prest/prest
COPY  ./ /go/src/github.com/prest/prest
WORKDIR /go/src/github.com/prest/prest
RUN go get -u github.com/kardianos/govendor
RUN govendor sync
RUN go get
RUN go install
CMD ["prest"]
