FROM golang:1.22.4-alpine AS builder

WORKDIR /build

COPY . .

RUN go build -o proxy .

FROM alpine:3.19 AS hoster

COPY --from=builder /build/.env ./.env
COPY --from=builder /build/proxy ./proxy

ENTRYPOINT [ "./proxy" ]