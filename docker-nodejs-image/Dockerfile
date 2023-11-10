# Use an official lightweight Node.js image as the base image
FROM node:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the current directory to /app in the container
COPY . /app

# Install http-server using npm
RUN npm install -g http-server

# Expose port 8080 for the application
EXPOSE 8080

# Command to run when the container starts
CMD ["http-server", "-p", "8080"]


# Move this Dockerfile to the home directory and delete the current to use the 
# official nodejs lightweight docker image. It is faster to build locally but will take
# more space than building an alpine image and installing node, which is what 
# is currently being used in the home directory.