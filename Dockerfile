FROM alpine:latest

RUN apk add --no-cache tinyproxy

# Copy custom config
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 443

CMD ["tinyproxy", "-d"]
