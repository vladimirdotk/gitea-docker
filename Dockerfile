FROM golang:1.12-stretch
RUN go get -d -u code.gitea.io/gitea
WORKDIR /go/src/code.gitea.io/gitea
RUN cd /go/src/code.gitea.io/gitea
RUN git checkout v1.9.0
RUN TAGS="bindata" make generate build