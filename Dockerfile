FROM golang:1.20

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN go build -tags vtable -o /usr/src/app/postlite
RUN chmod +x /usr/src/app/postlite

CMD ["/usr/src/app/postlite", "-data-dir", "/data"]
