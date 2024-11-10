# Use the official Apache HTTP server base image
FROM httpd:latest

# Set the maintainer label
LABEL maintainer="Vindhyag2002@gmail.com"

# Copy custom index.html to the default location served by Apache
COPY ./index.html /usr/local/apache2/htdocs/

# Expose port 8080 to be accessed from outside the container
EXPOSE 8080

# Run Apache in the foreground (daemonized is turned off)
CMD ["httpd-foreground"]
