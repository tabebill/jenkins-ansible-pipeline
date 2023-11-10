# Use the official Alpine image as the base image
FROM alpine:latest

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the current directory to /app in the container
COPY . .

# Install Node.js and npm (included in the Node.js package)
# add a '--no-cache' flag after 'apk' command if you don't want docker
# to use its cache but rather try reinstalling nodejs and npm everytime
RUN apk add nodejs npm

# Install http-server globally using npm
RUN npm install -g http-server

# Expose port 8080 for the application
EXPOSE 8080

# Command to run when the container starts
CMD ["http-server", "-p", "8080"]
