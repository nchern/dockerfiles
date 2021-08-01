FROM alpine:latest

RUN apk update && apk add \
    ca-certificates \
    openssl         \
    isync 

WorkDir /root

# exposes 2 commands:
# mbsync-get-cert <host> > <host>.pem
# mbsync <name>
