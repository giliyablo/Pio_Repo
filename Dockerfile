# Stage 1: Compile and Build angular codebase

# Use official node image as the base image
FROM node:latest as build

# Set the working directory
WORKDIR /app

# Add the source code to app
COPY . /app

# Install all the dependencies
RUN npm install -g @angular/cli
RUN npm install

# Generate the build of the application
RUN ng build

# Expose port 4200
EXPOSE 4200

# Running command: 
CMD ["ng", ""]
