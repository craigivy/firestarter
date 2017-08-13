FROM golang

# install
COPY ./ /go/src/github.com/craigivy/firestarter
WORKDIR /go/src/github.com/craigivy/firestarter
RUN go get -v 
RUN go install

# remove source
WORKDIR /go/src
RUN rm -rf *
WORKDIR /go/bin

# Run the command by default when the container starts.
ENTRYPOINT /go/bin/firestarter
