# Stage 1: Build Angular codebase (optimized)

FROM node:alpine AS build

# Set the working directory
WORKDIR /app

# Copy the source code to app
COPY . /app

# Install dependencies efficiently with multi-stage build
RUN npm ci                 # Use npm ci for deterministic builds (avoids downloading unnecessary packages)
RUN npm install -g @angular/cli

# Build the application
RUN ng build --configuration=production

# Stage 2: Serve app with nginx server

FROM nginx:alpine

# Copy the build output to nginx document root
COPY --from=build /app/dist/payoneer/browser /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Optimized CMD for nginx
CMD ["nginx", "-g", "daemon off;"]
