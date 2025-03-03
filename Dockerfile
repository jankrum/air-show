FROM golang:1.22-alpine

WORKDIR /app

COPY ./go-endpoint/go.* ./

RUN go mod download

COPY ./go-endpoint .

RUN go build -o main main.go

CMD ["./main"]