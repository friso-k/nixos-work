# Use the official Caddy v2 image
FROM caddy:2

# Copy the static file into the Caddy file server directory
COPY get.sh /usr/share/caddy/index.html

# Expose port 80
EXPOSE 80

