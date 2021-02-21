FROM golang:1.15.7

RUN apt-get update && apt-get install -y wget
RUN go get github.com/go-chi/chi

EXPOSE 3000

ADD ./backend /go/src/github.com/upinetree/project-b/backend

WORKDIR /go/src/github.com/upinetree/project-b/backend

CMD ["go", "run", "./main.go"]
