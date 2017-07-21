FROM golang:1.8
USER 10001
WORKDIR /go/src/app
COPY . ./
RUN go install
RUN ldd /go/bin/app | grep -q "not a dynamic executable"
