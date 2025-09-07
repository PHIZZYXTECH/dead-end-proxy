# Start from a lightweight base
FROM alpine:latest

# Install tinyproxy
RUN apk add --no-cache tinyproxy

# Copy in your config
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

# Expose HTTPS port (443) for WhatsApp
EXPOSE 443

# Run tinyproxy in debug mode so logs go to Render
CMD ["/usr/bin/tinyproxy", "-d", "-c", "/etc/tinyproxy/tinyproxy.conf"]
