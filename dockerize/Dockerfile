FROM tinygo/tinygo:0.25.0 AS builder
WORKDIR /home
COPY go.mod .
COPY hello.go .

RUN go mod tidy && \
    tinygo build -o hello.wasm -scheduler=none -target wasi ./hello.go

FROM k33g/capsule-launcher:0.3.2
#WORKDIR /root/
COPY --from=builder /home .
EXPOSE 8080
CMD ["/capsule", "-wasm=./hello.wasm", "-mode=http", "-httpPort=8080"]

